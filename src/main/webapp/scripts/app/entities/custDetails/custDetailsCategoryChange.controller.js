'use strict';

angular.module('watererpApp').controller('CustDetailsCategoryChangeController',
   /* ['$scope', '$stateParams', '$uibModalInstance', 'entity', 'CustDetails', 'TariffCategoryMaster',*/
        function($scope, $stateParams, /*$uibModalInstance, entity,*/ CustDetails, TariffCategoryMaster, $state, $http, CustDetailsSearchCAN,
        		WorkflowTxnDetails, PipeSizeMaster) {

        //$scope.custDetails = entity;
		$scope.custDetails = {};
        $scope.tariffcategorymasters = TariffCategoryMaster.query();
        $scope.pipeSizeMasters = PipeSizeMaster.query();
        $scope.requestMasters = [ {
			id : "8",
			requestType : "CONNECTION CATEGORY"
		}, {
			id : "9",
			requestType : "PIPE SIZE"
		}, {
			id : "10",
			requestType : "CHANGE NAME"
		}, {
			id : "11",
			requestType : "CONNECTION TERMINATION"
		} ];
        
        $scope.workflowTxnDetails = [];
        $scope.workflowTxnDetails[0] = {};
        $scope.workflowTxnDetails[1] = {};
        
        
        $scope.workflowTxnDetails[0].columnName="prevReading";
	    $scope.workflowTxnDetails[0].requestMaster = {};
	    $scope.workflowTxnDetails[0].requestMaster.id = 8;
	       
	    $scope.workflowTxnDetails[1].columnName="TarrifCategoryMaster";
	    $scope.workflowTxnDetails[1].requestMaster = {};
	    $scope.workflowTxnDetails[1].requestMaster.id = 8; 
                        
        
        
        console.log($scope.changeCases);
        $scope.dtmax = new Date();
        $scope.load = function(id) {
            CustDetails.get({id : id}, function(result) {
                $scope.custDetails = result;
            });
        };
        
        if($stateParams.id != null){
        	$scope.load($stateParams.id);
        }

        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:custDetailsUpdate', result);
            //$uibModalInstance.close(result);
            $scope.isSaving = false;
            $state.go('custDetails');
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.custDetails.id != null) {
                CustDetails.update($scope.custDetails, onSaveSuccess, onSaveError);
            } else {
                CustDetails.save($scope.custDetails, onSaveSuccess, onSaveError);
            }
        };

        $scope.clear = function() {
            $uibModalInstance.dismiss('cancel');
        };
        
        $scope.datePickerForRequestedDate = {};

        $scope.datePickerForRequestedDate.status = {
            opened: false
        };

        $scope.datePickerForRequestedDateOpen = function($event) {
            $scope.datePickerForRequestedDate.status.opened = true;
        };
        
        
        
        //to search CAN
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
        
        $scope.getCustDetails = function(can) {
			CustDetailsSearchCAN.get({can : can}, function(result) {
                $scope.custDetails = result;
                $scope.workflowTxnDetails[0].previousValue = $scope.custDetails.prevReading;
                $scope.workflowTxnDetails[1].previousValue = $scope.custDetails.tariffCategoryMaster;
            });
        };
        
        //when selected searched CAN in DropDown
        $scope.onSelect = function($item, $model, $label) {
			console.log($item);
			var arr = $item.split("-");
			$scope.custDetails = {};
			$scope.custDetails.can = arr[0].trim();
			$scope.custDetails.name = arr[1];
			$scope.custDetails.address = arr[2];
			$scope.getCustDetails($scope.custDetails.can);
			$scope.custInfo = ""; 
			$scope.isValidCust = true;
		};
		
		
		$scope.saveChanges = function(){
			console.log("This is the data being posted to server:" + JSON.stringify($scope.workflowTxnDetails));
			
			$scope.workflowTxnDetails[1].previousValue = $scope.workflowTxnDetails[1].previousValue.id;
			
			return $http.post('/api/workflowTxnDetailsArr',$scope.workflowTxnDetails).then(function(response) {
				console.log("Server response:" + JSON.stringify(response));
//				var res = response.data.map(function(item) {
//					return item;
//				});
//				return res;
			});
//			  WorkflowTxnDetails.save($scope.workflowTxnDetailsArr, onSaveSuccess, onSaveError);
		}
		
}/*]*/);
