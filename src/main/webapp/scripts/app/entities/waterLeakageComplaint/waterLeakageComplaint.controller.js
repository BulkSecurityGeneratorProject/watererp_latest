'use strict';

angular.module('watererpApp')
    .controller('WaterLeakageComplaintController', function ($scope, $state, WaterLeakageComplaint, ParseLinks) {

        $scope.waterLeakageComplaints = [];
        $scope.predicate = 'id';
        $scope.reverse = true;
        $scope.page = 0;
        $scope.loadAll = function() {
            WaterLeakageComplaint.query({page: $scope.page, size: 20, sort: [$scope.predicate + ',' + ($scope.reverse ? 'asc' : 'desc'), 'id']}, function(result, headers) {
                $scope.links = ParseLinks.parse(headers('link'));
                for (var i = 0; i < result.length; i++) {
                    $scope.waterLeakageComplaints.push(result[i]);
                }
            });
        };
        $scope.reset = function() {
            $scope.page = 0;
            $scope.waterLeakageComplaints = [];
            $scope.loadAll();
        };
        $scope.loadPage = function(page) {
            $scope.page = page;
            $scope.loadAll();
        };
        $scope.loadAll();


        $scope.refresh = function () {
            $scope.reset();
            $scope.clear();
        };

        $scope.clear = function () {
            $scope.waterLeakageComplaint = {
                leakageType: null,
                coordinateX: null,
                coordinateY: null,
                leakMagnitude: null,
                complaintDateTime: null,
                daysRequired: null,
                staffRequired: null,
                complaintBy: null,
                status: null,
                id: null
            };
        };
    });
