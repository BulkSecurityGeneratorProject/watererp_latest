'use strict';

angular.module('watererpApp')
    .controller('CustomerNameChangeListController', function ($scope, $state, Customer, ParseLinks) {

        $scope.customers = [];
        $scope.predicate = 'id';
        $scope.reverse = true;
        $scope.page = 0;
        $scope.customer = {};
        $scope.customer.changeType="CHANGENAME";
        $scope.loadAll = function() {
            Customer.query({page: $scope.page, size: 20, changeType:$scope.customer.changeType, sort: [$scope.predicate + ',' + ($scope.reverse ? 'asc' : 'desc'), 'id']}, function(result, headers) {
                $scope.links = ParseLinks.parse(headers('link'));
                for (var i = 0; i < result.length; i++) {
                    $scope.customers.push(result[i]);
                }
            });
        };
        $scope.reset = function() {
            $scope.page = 0;
            $scope.customers = [];
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
            $scope.customer = {
                meterReading: null,
                presentReading: null,
                organization: null,
                organizationName: null,
                designation: null,
                deedDoc: null,
                agreementDoc: null,
                remarks: null,
                requestedDate: null,
                can: null,
                firstName: null,
                middleName: null,
                lastName: null,
                mobileNo: null,
                email: null,
                idNumber: null,
                photo: null,
                status: null,
                approvedDate: null,
                changeType: null,
                id: null
            };
        };
    });
