'use strict';

angular.module('watererpApp').controller(
		'BillDetailsDialogController', 
		function ($scope, $state, BillDetails, CustDetails, CustDetailsService, 
				 ParseLinks, $stateParams, $http, User) {

        $scope.billDetailss = [];
        $scope.predicate = 'id';
        $scope.billDetails = {};
        $scope.currentBillTypes = [{id: 'M', name: 'METERED'},{id: 'S', name: 'STUCK'},{id: 'L', name: 'LOCKED'},{id: 'B', name: 'BURNT'}];
        $scope.collDetails = {};
        var date  = new Date();
        $scope.billDetails.billDate = date;
        
        var currentTime = new Date();
    	var hours = currentTime.getHours();
    	var minutes = currentTime.getMinutes();
        var seconds = currentTime.getSeconds();
    	if (minutes < 10)
    	minutes = "0" + minutes;
        if (seconds < 10)
    	seconds = "0" + seconds;
        
        $scope.billDetails.billTime = hours + "" + minutes + "" + seconds;   
        $scope.billDetails.metReadingDt = date;
        $scope.billDetails.toMonth = new Date(date.getFullYear(), date.getMonth(), 1);
        $scope.users = User.query();
        $scope.reverse = true;
        $scope.page = 0;
        
        $scope.billDetailsId = $stateParams.id;
        if($stateParams.id != null){       	
        	 BillDetails.get({id : $scope.billDetailsId}, function(result) {
                 $scope.billDetails = result;
                 $scope.getCustDetails($scope.billDetails.can);
             });
    	}        
        
        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:billDetailsUpdate', result);
            $scope.isSaving = false;
            $scope.billDetails.id = result.id;
            $state.go('billDetails');
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };        

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.billDetails.id != null) {
                BillDetails.update($scope.billDetails, onSaveSuccess, onSaveError);
            } else {
                BillDetails.save($scope.billDetails, onSaveSuccess, onSaveError);
            }
        };

        $scope.refresh = function () {
            $scope.reset();
            $scope.clear();
        };
        
        $scope.getLocation = function(val) {
			$scope.isValidCust = false;
			
			return $http.get('api/custDetailss/searchCAN/' + val, {
				params : {
					address : val,
					sensor : false
				}
			}).then(function(response) {
				var res = response.data.map(function(item) {
					return item;
				});

				return res;
			});
		}
        
        $scope.onSelect = function($item, $model, $label) {
        	$scope.billDetails.metReadingDt = new Date();
			console.log($item);
			var arr = $item.split("-");
			$scope.billDetails.can = arr[0];
			$scope.billDetails.consName = arr[1];
			$scope.billDetails.address = arr[2];
			$scope.custInfo = "";
			$scope.getCustDetails($scope.billDetails.can);
			$scope.isValidCust = true;
		};
        
        $scope.toggleMeterReadingDate = function(cbtyp){
        	if(cbtyp==='M'){
        		$scope.billDetails.prevMetReadingDt1 = $scope.billDetails.metReadingDt;
        	}else{
        		$scope.billDetails.prevMetReadingDt1 = $scope.billDetails.prevMetReadingDt;
        	}
        }
        $scope.getCustDetails = function(can){
        	CustDetailsService.get({can : can}, function(result) {
                $scope.custDetails = result;
                $scope.billDetails.consName = $scope.custDetails.consName;
                $scope.billDetails.can = $scope.custDetails.can;
                $scope.billDetails.address = $scope.custDetails.address;
                $scope.billDetails.prevBillMonth = $scope.custDetails.prevBillMonth;
                if($scope.billDetails.prevBillMonth == null){
                $scope.billDetails.fromMonth=$scope.custDetails.meterFixDate;                
                $scope.billDetails.initialReading = $scope.custDetails.prevReading;
                $scope.billDetails.prevMetReadingDt = $scope.custDetails.meterFixDate;
                $scope.billDetails.prevMetReadingDt1 = $scope.custDetails.meterFixDate;            
                }else{
                var date2 = new Date($scope.billDetails.prevBillMonth);
                $scope.billDetails.fromMonth = new Date(date2.getFullYear(), date2.getMonth()+1, date2.getDate());
                $scope.billDetails.initialReading = $scope.custDetails.prevReading;
                $scope.billDetails.prevMetReadingDt = $scope.custDetails.metReadingDt;
                $scope.billDetails.prevMetReadingDt1 = $scope.custDetails.metReadingDt;
                }
                
            });
        }
        
        $scope.datePickerForToMonth = {};

        $scope.datePickerForToMonth.status = {
            opened: false
        };

        $scope.datePickerForToMonthOpen = function($event) {
            $scope.datePickerForToMonth.status.opened = true;
        }; 
        
        $scope.datePickerForFromMonth = {};

        $scope.datePickerForFromMonth.status = {
            opened: false
        };

        $scope.datePickerForFromMonthOpen = function($event) {
            $scope.datePickerForFromMonth.status.opened = true;
        };        
        
        $scope.datePickerForBillDate = {};

        $scope.datePickerForBillDate.status = {
            opened: false
        };

        $scope.datePickerForBillDateOpen = function($event) {
            $scope.datePickerForBillDate.status.opened = true;
        };
        $scope.datePickerForMeterFixDate = {};

        $scope.datePickerForMeterFixDate.status = {
            opened: false
        };

        $scope.datePickerForMeterFixDateOpen = function($event) {
            $scope.datePickerForMeterFixDate.status.opened = true;
        };
        $scope.datePickerForMetReadingDt = {};

        $scope.datePickerForMetReadingDt.status = {
            opened: false
        };

        $scope.datePickerForMetReadingDtOpen = function($event) {
            $scope.datePickerForMetReadingDt.status.opened = true;
        };
        
    });