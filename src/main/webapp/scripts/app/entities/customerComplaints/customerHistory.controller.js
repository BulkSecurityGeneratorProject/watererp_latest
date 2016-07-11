'use strict';

angular.module('watererpApp')
    .controller('CustomerHistoryController', function ($scope, $state, CustomerComplaints, ParseLinks, $http) {

        $scope.customerComplaintss = [];
        $scope.predicate = 'id';
        $scope.reverse = true;
        $scope.txnList = [];
        $scope.page = 0;
        
        $scope.getLocation = function(val) {
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
        
        $scope.findBillDetails = function(can) {
			$scope.isValidCust = false;
			return $http.get(
					'api/billFullDetailss/getWaterBillDetails/' + can)
					.then(function(response) {
						$scope.txnList = [];
						for (var i = 0; i < response.data.length; i++) {
							$scope.txnList.push(response.data[i]);
						}
						console.log($scope.txnList.length);
					});
		}
        
        $scope.loadAll = function(can) {
            CustomerComplaints.query({page: $scope.page, size: 20, can : can, sort: [$scope.predicate + ',' + ($scope.reverse ? 'asc' : 'desc'), 'id']}, function(result, headers) {
                $scope.links = ParseLinks.parse(headers('link'));
                for (var i = 0; i < result.length; i++) {
                    $scope.customerComplaintss.push(result[i]);
                }
            });
        };
        
        $scope.getRequestTypeId = function(domainId,requestType) {
     		if(requestType == 1){//INCORRECT BILL
     			$state.go("customerComplaints.detail",{id:domainId, requestTypeId:3});
     		}
     		if(requestType == 2){//WATER LEAKAGE
     			$state.go("customerComplaints.detail",{id:domainId, requestTypeId:4});
     		}
	        }
        
        $scope.getCustomerDetails = function(can) {
        	var val = can;
			$http.get('api/custDetailss/search/' + val, {
				params : {
					address : val,
					sensor : false
				}
			}).then(function(response) {				
				$state.go("customerInfo.detail",{id:response.data.id});
			});
	        }
        
        $scope.onSelect = function($item, $model, $label) {
			console.log($item);
			var arr = $item.split("-");
			$scope.custDetails = {};
			$scope.custDetails.can = arr[0].trim();
			$scope.custDetails.name = arr[1];
			$scope.custDetails.address = arr[2];
			$scope.findBillDetails($scope.custDetails.can);
			$scope.loadAll($scope.custDetails.can);
		};
        
        
        $scope.reset = function() {
            $scope.page = 0;
            $scope.customerComplaintss = [];
            $scope.loadAll();
        };
        /*$scope.loadPage = function(page) {
            $scope.page = page;
            $scope.loadAll();
        };
        $scope.loadAll();
        */


        $scope.refresh = function () {
            $scope.reset();
            $scope.clear();
        };
        
        $scope.getCustomerComplaint = function(val){
        	return $http.get('api/customerComplaintss/searchCustomerComplaint/' + val, {
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
        $scope.load = function(id) {
        	$scope.customerComplaintss=[];
			CustomerComplaints.get({
				id : id
			}, function(result) {
				$scope.customerComplaintss.push(result);
			});
		};
		
        $scope.clear = function () {
            $scope.customerComplaints = {
                remarks: null,
                relevantDoc: null,
                complaintBy: null,
                complaintDate: null,
                can: null,
                id: null
            };
        };
    });
