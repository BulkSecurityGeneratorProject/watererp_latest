'use strict';

angular.module('watererpApp')
    .controller('ApplicationTxnDialogController', function ($scope, $state, $stateParams ,ApplicationTxn, ParseLinks, TariffCategoryMaster, 
    		UploadUtil, DateUtils, User) {

    	$scope.applicationTxn = {};
    	$scope.tariffcategorymasters = TariffCategoryMaster.query();
    	$scope.users = User.query();
    	
    	if($stateParams.id != null){
                ApplicationTxn.get({id : $stateParams.id}, function(result) {
                    $scope.applicationTxn = result;
                });
         }
    	
    	$scope.applicationTxn.requestedDate = new Date();
    	$scope.dtmax = new Date();
    	//$scope.applicationTxn.requestedDate = DateUtils.convertDateTimeFromServer(new Date());
    	/*$scope.applicationTxn.requestedDate = DateService.getServerDate();
    	console.log($scope.applicationTxn.requestedDate);*/
        
    	
    	/*$scope.load = function(id) {
            ApplicationTxn.get({id : id}, function(result) {
                $scope.applicationTxn = result;
            });
        };*/

        var onSaveSuccess = function (result) {
        	$scope.clear();
            $scope.$emit('watererpApp:applicationTxnUpdate', result);
            $scope.isSaving = false;
            $scope.applicationTxn.fileNumber = result.fileNumber;
            $scope.applicationTxn.id = result.id;
            $('#saveSuccessfullyModal').modal('show');
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.applicationTxn.id != null) {
                ApplicationTxn.update($scope.applicationTxn, onSaveSuccess, onSaveError);
            } else {
                ApplicationTxn.save($scope.applicationTxn, onSaveSuccess, onSaveError);
            }
        };

        /*$scope.clear = function() {
            $uibModalInstance.dismiss('cancel');
        };*/
        $scope.datePickerForRequestedDate = {};

        $scope.datePickerForRequestedDate.status = {
            opened: false
        };

        $scope.datePickerForRequestedDateOpen = function($event) {
            $scope.datePickerForRequestedDate.status.opened = true;
        };
        $scope.datePickerForCreatedDate = {};

        $scope.datePickerForCreatedDate.status = {
            opened: false
        };

        $scope.datePickerForCreatedDateOpen = function($event) {
            $scope.datePickerForCreatedDate.status.opened = true;
        };
        $scope.datePickerForUpdatedDate = {};

        $scope.datePickerForUpdatedDate.status = {
            opened: false
        };

        $scope.datePickerForUpdatedDateOpen = function($event) {
            $scope.datePickerForUpdatedDate.status.opened = true;
        };
        
        
        $scope.datePickerForApprovedDate = {};

        $scope.datePickerForApprovedDate.status = {
            opened: false
        };

        $scope.datePickerForApprovedDateOpen = function($event) {
            $scope.datePickerForApprovedDate.status.opened = true;
        };
        
        $scope.clear = function(){
        	$scope.applicationTxn = {firstName: null, middleName: null, lastName: null, organization: null, organizationName: null,
        			designation: null, mobileNo: null,  officeNo: null,  email: null, street: null,
        			plotNo: null, blockNo: null, tanescoMeter: null, waterConnectionUse: null, categoryMaster: null, bStreet: null, ward: null,
        			dma: null, bPlotNo: null, regiterMobile: null, attachedDocType: null, idNumber : null, propertyDoc: null, can : null,
        			photo : null, status: null, meterReading : null, connectionDate : null, remarks : null, meterNo: null, approvedDate : null,
        			meterDetails : null, user : null, requestAt : null
            };
        }
        
        
        $scope.$watch('applicationTxn.photo1', function (files) {
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
		
		$scope.getDocType = function(docType){
			if(docType === 1){
				$scope.applicationTxn.attachedDocType = "Driving License";
			}
			if(docType === 2){
				$scope.applicationTxn.attachedDocType = "Voter's Id";
			}
			if(docType === 3){
				$scope.applicationTxn.attachedDocType = "Passport";
			}
			if(docType === 4){
				$scope.applicationTxn.attachedDocType = "Other Id";
			}
		}
		
		$scope.disableOrg = function(categoryId){
			$scope.applicationTxn.organization = false;
			$scope.applicationTxn.organizationName = "";
			$scope.applicationTxn.designation = "";
		}
		
		$scope.getPropertyVal = function(val1, val2){
			$scope.applicationTxn.propertyDoc ="";
			if (val1 == null){
				$scope.applicationTxn.propertyDoc = val2;
			}
			if (val2 == null){
				$scope.applicationTxn.propertyDoc = val1;
			}
			else
			{
				$scope.applicationTxn.propertyDoc = val1 +" & " + val2;
			}
			console.log($scope.applicationTxn.propertyDoc);
		}
		
    });