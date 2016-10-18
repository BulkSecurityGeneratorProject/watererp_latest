'use strict';

describe('Controller Tests', function() {

    describe('SewerageChargeMaster Detail Controller', function() {
        var $scope, $rootScope;
        var MockEntity, MockSewerageChargeMaster, MockTariffCategoryMaster;
        var createController;

        beforeEach(inject(function($injector) {
            $rootScope = $injector.get('$rootScope');
            $scope = $rootScope.$new();
            MockEntity = jasmine.createSpy('MockEntity');
            MockSewerageChargeMaster = jasmine.createSpy('MockSewerageChargeMaster');
            MockTariffCategoryMaster = jasmine.createSpy('MockTariffCategoryMaster');
            

            var locals = {
                '$scope': $scope,
                '$rootScope': $rootScope,
                'entity': MockEntity ,
                'SewerageChargeMaster': MockSewerageChargeMaster,
                'TariffCategoryMaster': MockTariffCategoryMaster
            };
            createController = function() {
                $injector.get('$controller')("SewerageChargeMasterDetailController", locals);
            };
        }));


        describe('Root Scope Listening', function() {
            it('Unregisters root scope listener upon scope destruction', function() {
                var eventType = 'watererpApp:sewerageChargeMasterUpdate';

                createController();
                expect($rootScope.$$listenerCount[eventType]).toEqual(1);

                $scope.$destroy();
                expect($rootScope.$$listenerCount[eventType]).toBeUndefined();
            });
        });
    });

});
