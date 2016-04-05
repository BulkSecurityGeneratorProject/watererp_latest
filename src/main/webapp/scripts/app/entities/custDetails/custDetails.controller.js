'use strict';

angular.module('watererpApp')
    .controller('CustDetailsController', function ($scope, $state, CustDetails, ParseLinks) {

        $scope.custDetailss = [];
        $scope.predicate = 'id';
        $scope.reverse = true;
        $scope.page = 0;
        $scope.loadAll = function() {
            CustDetails.query({page: $scope.page, size: 20, sort: [$scope.predicate + ',' + ($scope.reverse ? 'asc' : 'desc'), 'id']}, function(result, headers) {
                $scope.links = ParseLinks.parse(headers('link'));
                for (var i = 0; i < result.length; i++) {
                    $scope.custDetailss.push(result[i]);
                }
            });
        };
        $scope.reset = function() {
            $scope.page = 0;
            $scope.custDetailss = [];
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
            $scope.custDetails = {
                can: null,
                divCode: null,
                secCode: null,
                secName: null,
                metReaderCode: null,
                connDate: null,
                consName: null,
                houseNo: null,
                address: null,
                city: null,
                pinCode: null,
                category: null,
                pipeSize: null,
                boardMeter: null,
                sewerage: null,
                meterNo: null,
                prevBillType: null,
                prevBillMonth: null,
                prevAvgKl: null,
                metReadingDt: null,
                prevReading: null,
                metReadingMo: null,
                metAvgKl: null,
                arrears: null,
                reversalAmt: null,
                installment: null,
                otherCharges: null,
                surcharge: null,
                hrsSurcharge: null,
                resUnits: null,
                metCostInstallment: null,
                intOnArrears: null,
                lastPymtDt: null,
                lastPymtAmt: null,
                mobileNo: null,
                ccFlag: null,
                cpFlag: null,
                noticeFlag: null,
                drFlag: null,
                lat: null,
                longi: null,
                meterFixDate: null,
                id: null
            };
        };
    });
