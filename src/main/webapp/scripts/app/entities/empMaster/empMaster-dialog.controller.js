'use strict';

angular.module('watererpApp').controller('EmpMasterDialogController',
    ['$scope', '$stateParams', '$uibModalInstance', 'entity', 'EmpMaster', 'User', 'OrgRoleInstance', 'StatusMaster',
        function($scope, $stateParams, $uibModalInstance, entity, EmpMaster, User, OrgRoleInstance, StatusMaster) {

        $scope.empMaster = entity;
        $scope.users = User.query();
        $scope.orgroleinstances = OrgRoleInstance.query();
        //$scope.designationmasters = DesignationMaster.query();
        $scope.statusmasters = StatusMaster.query();
        $scope.load = function(id) {
            EmpMaster.get({id : id}, function(result) {
                $scope.empMaster = result;
            });
        };

        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:empMasterUpdate', result);
            $uibModalInstance.close(result);
            $scope.isSaving = false;
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.empMaster.id != null) {
                EmpMaster.update($scope.empMaster, onSaveSuccess, onSaveError);
            } else {
                EmpMaster.save($scope.empMaster, onSaveSuccess, onSaveError);
            }
        };

        $scope.clear = function() {
            $uibModalInstance.dismiss('cancel');
        };
}]);
