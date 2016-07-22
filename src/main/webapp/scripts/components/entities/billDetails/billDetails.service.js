'use strict';

angular
		.module('watererpApp')
		.factory(
				'BillDetails',
				function($resource, DateUtils) {
					return $resource(
							'api/billDetailss/:id',
							{},
							{
								'query' : {
									method : 'GET',
									isArray : true
								},
								'get' : {
									method : 'GET',
									transformResponse : function(data) {
										data = angular.fromJson(data);
										data.billDate = DateUtils
												.convertLocaleDateFromServer(data.billDate);
										data.meterFixDate = DateUtils
												.convertLocaleDateFromServer(data.meterFixDate);
										data.metReadingDt = DateUtils
												.convertLocaleDateFromServer(data.metReadingDt);
										return data;
									}
								},
								'update' : {
									method : 'PUT',
									transformRequest : function(data) {
										data.billDate = DateUtils
												.convertLocaleDateToServer(data.billDate);
										data.meterFixDate = DateUtils
												.convertLocaleDateToServer(data.meterFixDate);
										data.metReadingDt = DateUtils
												.convertLocaleDateToServer(data.metReadingDt);
										return angular.toJson(data);
									}
								},
								'save' : {
									method : 'POST',
									transformRequest : function(data) {
										data.billDate = DateUtils
												.convertLocaleDateToServer(data.billDate);
										data.meterFixDate = DateUtils
												.convertLocaleDateToServer(data.meterFixDate);
										data.metReadingDt = DateUtils
												.convertLocaleDateToServer(data.metReadingDt);
										return angular.toJson(data);
									}
								}
							});
				}).factory('BillDetailsSvc', function($http) {
			return {
				findByCan : function(can) {
					return $http.get('api/billDetailss/findByCan/' + can.can).then(function successCallback(response) {
						return response.data;
					}, function errorCallback(response) {
							return "error";
					});
				},
				cancelBillForCan : function(can) {
					return $http.put('api/billDetailss/cancelBillForCan/' + can.can).then(function successCallback(response) {
						return response.data;
					}, function errorCallback(response) {
							return "error";
					});
				}

			};
		});