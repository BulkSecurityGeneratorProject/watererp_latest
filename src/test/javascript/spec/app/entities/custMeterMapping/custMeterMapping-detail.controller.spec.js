'use strict';

describe('Controller Tests', function() {

    describe('CustMeterMapping Detail Controller', function() {
        var $scope, $rootScope;
        var MockEntity, MockCustMeterMapping, MockCustDetails, MockMeterDetails, MockUser;
        var createController;

        beforeEach(inject(function($injector) {
            $rootScope = $injector.get('$rootScope');
            $scope = $rootScope.$new();
            MockEntity = jasmine.createSpy('MockEntity');
            MockCustMeterMapping = jasmine.createSpy('MockCustMeterMapping');
            MockCustDetails = jasmine.createSpy('MockCustDetails');
            MockMeterDetails = jasmine.createSpy('MockMeterDetails');
            MockUser = jasmine.createSpy('MockUser');
            

            var locals = {
                '$scope': $scope,
                '$rootScope': $rootScope,
                'entity': MockEntity ,
                'CustMeterMapping': MockCustMeterMapping,
                'CustDetails': MockCustDetails,
                'MeterDetails': MockMeterDetails,
                'User': MockUser
            };
            createController = function() {
                $injector.get('$controller')("CustMeterMappingDetailController", locals);
            };
        }));


        describe('Root Scope Listening', function() {
            it('Unregisters root scope listener upon scope destruction', function() {
                var eventType = 'watererpApp:custMeterMappingUpdate';

                createController();
                expect($rootScope.$$listenerCount[eventType]).toEqual(1);

                $scope.$destroy();
                expect($rootScope.$$listenerCount[eventType]).toBeUndefined();
            });
        });
    });

});
