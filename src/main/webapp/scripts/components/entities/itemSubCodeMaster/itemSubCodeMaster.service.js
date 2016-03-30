'use strict';

angular.module('watererpApp')
    .factory('ItemSubCodeMaster', function ($resource, DateUtils) {
        return $resource('api/itemSubCodeMasters/:id', {}, {
            'query': { method: 'GET', isArray: true},
            'get': {
                method: 'GET',
                transformResponse: function (data) {
                    data = angular.fromJson(data);
                    data.creationDate = DateUtils.convertDateTimeFromServer(data.creationDate);
                    data.lastModifiedDate = DateUtils.convertDateTimeFromServer(data.lastModifiedDate);
                    return data;
                }
            },
            'update': { method:'PUT' }
        });
    });
