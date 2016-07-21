'use strict';

angular.module('watererpApp').controller(
		'CollDetailsCancelDialogController',
		function($scope, $state, CollDetails, ParseLinks, $stateParams, $http) {

			$scope.isValidCust = false;
			$scope.instrEnabled = false;
			$scope.collDetails = {};

			var onSaveSuccess = function(result) {
				$scope.$emit('watererpApp:collDetailsUpdate', result);
				$scope.isSaving = false;
				$state.go('collDetails');
			};

			var onSaveError = function(result) {
				$scope.isSaving = false;
			};

			$scope.getCustomer = function(val) {
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

			$scope.refresh = function() {
				$scope.reset();
				$scope.clear();
			};
		

			
			$scope.getCollDetails = function(can) {
				$scope.isValidCust = false;
				return $http.get(
						'api/collDetailss/forCancel/' + can)
						.then(function(response) {
							$scope.collDetailss = [];
							for (var i = 0; i < response.data.length; i++) {
								$scope.collDetailss.push(response.data[i]);
							}
						});
			}
			
			

			$scope.onSelect = function($item, $model, $label) {
				var arr = $item.split("-");
				$scope.collDetails = {};
				$scope.collDetails.can = arr[0].trim();
				$scope.collDetails.consName = arr[1];
				$scope.collDetails.address = arr[2];
				$scope.custInfo = "";
				$scope.isValidCust = true;
				$scope.rc.editForm.attempted=false;
				$scope.editForm.$setPristine();
				$scope.getCollDetails($scope.collDetails.can);
			};

			
			
			
			$scope.clear=function(){};
			
			$scope.datePickerForReceiptDt = {};

			$scope.datePickerForReceiptDt.status = {
				opened : false
			};

			$scope.datePickerForReceiptDtOpen = function($event) {
				$scope.datePickerForReceiptDt.status.opened = true;
			};

			
			/*$scope.cancelCollection = function(collDetails, id){
				collDetails.id = id;
				console.log(collDetails);
			}*/
			
			
			$scope.cancelCollection = function(){
				console.log($scope.collDetails);
				$scope.isSaving = true;
	        	return $http.post('/api/collDetailss/collDetailsCancel',
	        			$scope.collDetails).then(
						function(response) {
							console.log("collDetails cancelled: "+response.data);
							$scope.collDetails = response.data;
							$('#saveSuccessfullyModal').modal('show');
						});
	        }
			
			
			$scope.assignCollDetailsId = function(id){
				//alert(id);
				$scope.collDetails.id = id;
			}
		});
