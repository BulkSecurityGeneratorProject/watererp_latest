'use strict';

angular.module('watererpApp')
    .factory('Module2MenuItem', function ($resource, DateUtils) {
        return $resource('api/module2MenuItems/:id', {}, {
            'query': { method: 'GET', isArray: true},
            'getByModuleId': { method: 'GET', params: {moduleId: "moduleId" }, url:'/api/module2MenuItems/getByModuleId', isArray: true},
            'get': {
                method: 'GET',
                transformResponse: function (data) {
                    data = angular.fromJson(data);
                    return data;
                }
            },
            'update': { method:'PUT' }
        });
    });