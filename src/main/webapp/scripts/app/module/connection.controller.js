'use strict';

angular.module('watererpApp').controller(
		'ConnectionController',
		function($scope, $state, $rootScope, Account, User,
				ApplicationTxnService, Principal) {
			$scope.pendingRequests = [];
			$scope.approvedRequests = [];
			$scope.myRequests = [];

			Principal.hasAuthority("ROLE_CUSTOMER").then(function(result) {
				console.log("This is hte result:" + JSON.stringify(result));
				if (result) {
					$state.go('applicationTxn.new');
				}
			});

			$scope.loadAll = function() {

				ApplicationTxnService.getPendingRequests().then(function(data) {
					$scope.pendingRequests = data;
				});

				ApplicationTxnService.getApprovedRequests().then(
						function(data) {
							$scope.approvedRequests = data;
						});

				/*ApplicationTxnService.getMyRequests().then(function(data) {
					$scope.myRequests = data;
				});*/
			}

			Principal.identity().then(function(account) {
				$scope.account = account;
				$scope.isAuthenticated = Principal.isAuthenticated;

				if (!$scope.isAuthenticated())
					$state.go('login');

				else {
					User.get({
						login : $scope.account.login
					}, function(result) {
						$scope.user = result;

					});
					$scope.loadAll();

				}

			});

			$scope.getDetails = function(type) {
				if (type === 'REQUISITION' || type === 'WITHOUTMETER') {
					$state.go('applicationTxn');
				} else if (type === 'INCORRECT BILL') {
					$state.go('customerComplaints');
				}

			}

		});
