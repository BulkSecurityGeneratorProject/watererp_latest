  
   'use strict';
    angular.module('watererpApp')
        .controller('NewWaterConnectionReportController', function ($scope, $window, $state, $filter,  $http, 
        		     
        		TariffCategoryMaster, DivisionMaster) {

            $scope.predicate = 'id';
            $scope.reverse = true;
            $scope.page = 0;
            $scope.custDetails = {};
            $scope.custDetails.betweenDates = false;
            $scope.message = null;
            $scope.custDetails.betweenDetailedDates=false;
            $scope.getDivisionMasters = function() {
            	$scope.divisionmasters = [];
    			return $http.get('/api/divisionMasters/getAll').then(function(response) {
    						$scope.divisionmasters = response.data;
    					});
    		}
            $scope.getDivisionMasters();
            
            $scope.getTariffCategoryMasters = function() {
            	$scope.tariffcategorymasters = [];
    			return $http.get('/api/tariffCategoryMasters/getAll').then(function(response) {
    						$scope.tariffcategorymasters = response.data;
    					});
    		}
            $scope.getTariffCategoryMasters();
            
            $scope.datePickerForfromdate = {};

    		$scope.datePickerForfromdate.status = {
    			opened : false
    		};

    		$scope.datePickerForfromdateOpen = function($event) {
    			$scope.datePickerForfromdate.status.opened = true;
    		};

            $scope.getReport = function () {
            	if($scope.custDetails.divisionMaster != null &&  $scope.custDetails.tariffCategoryMaster != null && $scope.custDetails.fromdate != null && $scope.custDetails.todate != null ){
            	var divisionId = $scope.custDetails.divisionMaster.id;
            	var tariffCategoryId = $scope.custDetails.tariffCategoryMaster.id;        	
                var dateFormat = 'yyyy-MM-dd';
                var fromDate = $filter('date')($scope.custDetails.fromdate, dateFormat);
                var toDate = $filter('date')($scope.custDetails.todate, dateFormat);

                var formatDate =  function (dateToFormat) {
                    if (dateToFormat !== undefined && !angular.isString(dateToFormat)) {
                        return dateToFormat.getYear() + '-' + dateToFormat.getMonth() + '-' + dateToFormat.getDay();
                    }
                    return dateToFormat;
                };

                $scope.collDetails = {};
                
                	$window.open('/api/newWaterConnection/report/' + divisionId + '/' + tariffCategoryId + '/' + formatDate(fromDate) + '/' + formatDate(toDate), "_blank")
                    location.reload();
                }
                
            };
      
               $scope.getReportDetails = function () {
            	if($scope.custDetails.divisionMaster != null &&  $scope.custDetails.tariffCategoryMaster != null && $scope.custDetails.fromdate != null && $scope.custDetails.todate != null ){
            	var divisionId = $scope.custDetails.divisionMaster.id;
            	var tariffCategoryId = $scope.custDetails.tariffCategoryMaster.id;        	
                var dateFormat = 'yyyy-MM-dd';
                var fromDate = $filter('date')($scope.custDetails.fromdate, dateFormat);
                var toDate = $filter('date')($scope.custDetails.todate, dateFormat);

                var formatDate =  function (dateToFormat) {
                    if (dateToFormat !== undefined && !angular.isString(dateToFormat)) {
                        return dateToFormat.getYear() + '-' + dateToFormat.getMonth() + '-' + dateToFormat.getDay();
                    }
                    return dateToFormat;
                };

                $scope.collDetails = {};
                
                	$window.open('/api/custDetailss/report/detailByCan/' + divisionId + '/' + tariffCategoryId + '/' + formatDate(fromDate) + '/' + formatDate(toDate), "_blank")
                    location.reload();
                }
              
                
                
            };
            
       

    		
    		 $scope.datePickerFortodate = {};

    			$scope.datePickerFortodate.status = {
    				opened : false
    			};

    			$scope.datePickerFortodateOpen = function($event) {
    				$scope.datePickerFortodate.status.opened = true;
    			};
        });



