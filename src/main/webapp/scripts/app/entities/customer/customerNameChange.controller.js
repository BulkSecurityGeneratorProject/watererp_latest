'use strict';

angular.module('watererpApp').controller('CustomerNameChangeController',
   /* ['$scope', '$stateParams', '$uibModalInstance', 'entity', 'CustDetails', 'TariffCategoryMaster',*/
        function($scope, $stateParams, /*$uibModalInstance, entity,*/ CustDetails, TariffCategoryMaster, $state, $http, CustDetailsSearchCAN,
        		PipeSizeMaster, IdProofMaster, Customer, UploadUtil) {

        //$scope.custDetails = entity;
		$scope.custDetails = {};
		$scope.customer = {};
        $scope.idproofmasters = IdProofMaster.query();
        $scope.customer.changeType = "CHANGENAME";
        $scope.customer.can = "";
        
        
        $scope.dtmax = new Date();
        $scope.load = function(id) {
            Customer.get({id : id}, function(result) {
                $scope.custDetails = result;
            });
        };
        
        if($stateParams.id != null){
        	$scope.load($stateParams.id);
        }

        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:customerUpdate', result);
            //$uibModalInstance.close(result);
            $scope.isSaving = false;
            $scope.customer.id = result.id;
           $("#saveSuccessfullyModal").modal("show");
            //$state.go('customer.nameChangeList');
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
        	$scope.customer.changeType = "CHANGENAME";
            $scope.isSaving = true;
            if ($scope.customer.id != null) {
                Customer.update($scope.customer, onSaveSuccess, onSaveError);
            } else {
            	Customer.save($scope.customer, onSaveSuccess, onSaveError);
            }
        };

        $scope.clear = function() {
            $scope.customer={firstName:null, middleName:null, lastName:null, mobileNo:null, email:null, photo:null, idNumber:null, requestedDate:null, idProof:null
            		};
        };
        
        $scope.confirm=function()
        {
        	
        	 $("#saveSuccessfullyModal").modal("hide");
             $state.go('customer.nameChangeList');
        }
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
                $scope.customer.previousName = $scope.custDetails.consName;
                $scope.customer.previousMobile = $scope.custDetails.mobileNo;
                $scope.customer.previousEmail = $scope.custDetails.email;
            });
        };
        
        
      //to get active can
		$scope.getActiveCAN = function(can) {
			$scope.customer.can = can;
			$scope.customer.changeType = "CHANGENAME";
			return $http.post('/api/customers/getActiveCan',
					$scope.customer).then(
					function(response) {
						$scope.custDetails = response.data.custDetails;
						$scope.message = null;
						$scope.customer.previousName = $scope.custDetails.consName;
						$scope.customer.previousMobile = $scope.custDetails.mobileNo;
						$scope.customer.previousEmail = $scope.custDetails.email;
						if(response.data.customer != null){
								$scope.isSaving = true;
								$scope.message = "Name change request already submitted for the the CAN: "+can;
						}
						else{
							$scope.isSaving = false;
						}
					});
		}
        
        //when selected searched CAN in DropDown
        $scope.onSelect = function($item, $model, $label) {
        	$scope.clear();
			//console.log($item);
			var arr = $item.split("-");
			$scope.custDetails = {};
			$scope.custDetails.can = arr[0].trim();
			$scope.custDetails.name = arr[1];
			$scope.custDetails.address = arr[2];
			//$scope.getCustDetails($scope.custDetails.can);
			$scope.getActiveCAN($scope.custDetails.can);
			$scope.customer.can = $scope.custDetails.can;
			$scope.custInfo = ""; 
			$scope.isValidCust = true;
			$scope.rc.editForm.attempted=false;
			$scope.editForm.$setPristine();
			
		};
		
		 $scope.$watch('customer.photo1', function (files) {
	            $scope.formUpload = false;
	            if (files != null) {
	                for (var i = 0; i < files.length; i++) {
	                    $scope.errorMsg = null;
	                    (function (file) {
	                    	UploadUtil.uploadUsingUpload(file, $scope, 'waterErp');
	                    })(files[i]);
	                }
	            }
	        });
	        
	        $scope.getReqParams = function() {
				return $scope.generateErrorOnServer ? '?errorCode='
						+ $scope.serverErrorCode + '&errorMessage='
						+ $scope.serverErrorMsg : '';
			};
		
			
			
		
		/*$scope.saveChanges = function(){
			console.log("This is the data being posted to server:" + JSON.stringify($scope.workflowTxnDetails));
			
			//$scope.workflowTxnDetails[3].previousValue = $scope.workflowTxnDetails[3].previousValue.id;
			
			return $http.post('/api/workflowTxnDetailsArr',$scope.workflowTxnDetails).then(function(response) {
				console.log("Server response:" + JSON.stringify(response));
			});
		}*/
		
}/*]*/);
