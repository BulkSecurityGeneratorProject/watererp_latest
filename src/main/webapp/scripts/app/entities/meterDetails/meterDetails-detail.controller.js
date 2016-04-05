'use strict';

angular.module('waterERPApp')
    .controller('MeterDetailsDetailController', function ($scope, $rootScope, $stateParams, entity, MeterDetails) {
        $scope.meterDetails = entity;
        $scope.load = function (id) {
            MeterDetails.get({id: id}, function(result) {
                $scope.meterDetails = result;
            });
        };
        var unsubscribe = $rootScope.$on('waterERPApp:meterDetailsUpdate', function(event, result) {
            $scope.meterDetails = result;
        });
        $scope.$on('$destroy', unsubscribe);

    });
