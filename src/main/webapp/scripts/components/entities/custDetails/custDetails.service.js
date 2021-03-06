'use strict';

angular.module('watererpApp')
    .factory('CustDetails', function ($resource, DateUtils) {
        return $resource('api/custDetailss/:id', {}, {
            'query': { method: 'GET', isArray: true},
            'getByCan': { method: 'GET', params: {can: "can" }, url:'/api/custDetailss/getBalanceByCAN', isArray: false},
            'getCustDetailsByCan': { method: 'GET', params: {can: "can" }, url:'/api/custDetailss/getCustDetailsByCAN', isArray: false},
            'get': {
                method: 'GET',
                transformResponse: function (data) {
                    data = angular.fromJson(data);
                    data.connDate = DateUtils.convertLocaleDateFromServer(data.connDate);
                    data.prevBillMonth = DateUtils.convertLocaleDateFromServer(data.prevBillMonth);
                    data.metReadingDt = DateUtils.convertLocaleDateFromServer(data.metReadingDt);
                    data.metReadingMo = DateUtils.convertLocaleDateFromServer(data.metReadingMo);
                    data.lastPymtDt = DateUtils.convertLocaleDateFromServer(data.lastPymtDt);
                    data.meterFixDate = DateUtils.convertLocaleDateFromServer(data.meterFixDate);
                    return data;
                }
            },
            'update': {
                method: 'PUT',
                transformRequest: function (data) {
                    data.connDate = DateUtils.convertLocaleDateToServer(data.connDate);
                    data.prevBillMonth = DateUtils.convertLocaleDateToServer(data.prevBillMonth);
                    data.metReadingDt = DateUtils.convertLocaleDateToServer(data.metReadingDt);
                    data.metReadingMo = DateUtils.convertLocaleDateToServer(data.metReadingMo);
                    data.lastPymtDt = DateUtils.convertLocaleDateToServer(data.lastPymtDt);
                    data.meterFixDate = DateUtils.convertLocaleDateToServer(data.meterFixDate);
                    return angular.toJson(data);
                }
            },
            'save': {
                method: 'POST',
                transformRequest: function (data) {
                    data.connDate = DateUtils.convertLocaleDateToServer(data.connDate);
                    data.prevBillMonth = DateUtils.convertLocaleDateToServer(data.prevBillMonth);
                    data.metReadingDt = DateUtils.convertLocaleDateToServer(data.metReadingDt);
                    data.metReadingMo = DateUtils.convertLocaleDateToServer(data.metReadingMo);
                    data.lastPymtDt = DateUtils.convertLocaleDateToServer(data.lastPymtDt);
                    data.meterFixDate = DateUtils.convertLocaleDateToServer(data.meterFixDate);
                    return angular.toJson(data);
                }
            }
        })            
    }).factory('CustDetailsSearch', function ($resource) {
    	return $resource('api/custDetailss/searchCAN/:searchTerm', {}, {
    		'query': { method: 'GET', isArray: true}
        });
    })
    .factory('CustDetailsSearchCAN', function ($resource) {
    	return $resource('api/custDetailss/search/:can', {}, {
    		'query': { method: 'GET', isArray: true}
        });
    });
