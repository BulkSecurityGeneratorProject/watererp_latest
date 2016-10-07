'use strict';

angular.module('watererpApp')
    .factory('CollDetails', function ($resource, DateUtils) {
        return $resource('api/collDetailss/:id', {}, {
            'query': { method: 'GET', isArray: true},
            'getCollDetailsByCan': { method: 'GET', params: {can: "can" }, url:'/api/collDetailss/getCollDetailsByCAN', isArray: true},
            'get': {
                method: 'GET',
                transformResponse: function (data) {
                    data = angular.fromJson(data);
                    data.receiptDt = DateUtils.convertDateTimeFromServer(data.receiptDt);
                    data.instrDt = DateUtils.convertLocaleDateFromServer(data.instrDt);
                    data.collTime = DateUtils.convertDateTimeFromServer(data.collTime);
                    return data;
                }
            },
            'update': {
                method: 'PUT',
                transformRequest: function (data) {
                    data.instrDt = DateUtils.convertLocaleDateToServer(data.instrDt);
                    return angular.toJson(data);
                }
            },
            'save': {
                method: 'POST',
                transformRequest: function (data) {
                    data.instrDt = DateUtils.convertLocaleDateToServer(data.instrDt);
                    return angular.toJson(data);
                }
            }
        });
    })
    .factory('CollDetailsCANSearch', function ($resource) {
    	return $resource('api/collDetailss/forCancel/:can', {}, {
    		'query': { method: 'GET', isArray: true}
        });
    });
