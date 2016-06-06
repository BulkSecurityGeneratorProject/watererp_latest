'use strict';

describe('Controller Tests', function() {

    describe('CustDetails Detail Controller', function() {
        var $scope, $rootScope;
        var MockEntity, MockCustDetails, MockTariffCategoryMaster, MockPipeSizeMaster, MockDivisionMaster, MockStreetMaster;
        var createController;

        beforeEach(inject(function($injector) {
            $rootScope = $injector.get('$rootScope');
            $scope = $rootScope.$new();
            MockEntity = jasmine.createSpy('MockEntity');
            MockCustDetails = jasmine.createSpy('MockCustDetails');
            MockTariffCategoryMaster = jasmine.createSpy('MockTariffCategoryMaster');
            MockPipeSizeMaster = jasmine.createSpy('MockPipeSizeMaster');
            MockDivisionMaster = jasmine.createSpy('MockDivisionMaster');
            MockStreetMaster = jasmine.createSpy('MockStreetMaster');
            

            var locals = {
                '$scope': $scope,
                '$rootScope': $rootScope,
                'entity': MockEntity ,
                'CustDetails': MockCustDetails,
                'TariffCategoryMaster': MockTariffCategoryMaster,
                'PipeSizeMaster': MockPipeSizeMaster,
                'DivisionMaster': MockDivisionMaster,
                'StreetMaster': MockStreetMaster
            };
            createController = function() {
                $injector.get('$controller')("CustDetailsDetailController", locals);
            };
        }));


        describe('Root Scope Listening', function() {
            it('Unregisters root scope listener upon scope destruction', function() {
                var eventType = 'watererpApp:custDetailsUpdate';

                createController();
                expect($rootScope.$$listenerCount[eventType]).toEqual(1);

                $scope.$destroy();
                expect($rootScope.$$listenerCount[eventType]).toBeUndefined();
            });
        });
    });

});
