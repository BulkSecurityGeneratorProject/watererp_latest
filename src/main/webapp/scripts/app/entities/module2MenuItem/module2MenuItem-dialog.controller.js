'use strict';

angular.module('watererpApp').controller('Module2MenuItemDialogController',
    ['$scope', '$stateParams', '$uibModalInstance', 'entity', 'Module2MenuItem', 'Module', 'MenuItem', '$http',
        function($scope, $stateParams, $uibModalInstance, entity, Module2MenuItem, Module, MenuItem, $http) {

        $scope.module2MenuItem = entity;
        $scope.modules = Module.query();
        //$scope.menuitems = MenuItem.query();
        
        $scope.getMenuItems = function() {
        	$scope.menuitems = [];
			return $http.get('/api/menuItems/getAll'
					).then(
					function(response) {
						$scope.menuitems = response.data;
					});
		}
        $scope.getMenuItems();
        
        
        $scope.load = function(id) {
            Module2MenuItem.get({id : id}, function(result) {
                $scope.module2MenuItem = result;
            });
        };

        var onSaveSuccess = function (result) {
            $scope.$emit('watererpApp:module2MenuItemUpdate', result);
            $uibModalInstance.close(result);
            $scope.isSaving = false;
        };

        var onSaveError = function (result) {
            $scope.isSaving = false;
        };

        $scope.save = function () {
            $scope.isSaving = true;
            if ($scope.module2MenuItem.id != null) {
                Module2MenuItem.update($scope.module2MenuItem, onSaveSuccess, onSaveError);
            } else {
                Module2MenuItem.save($scope.module2MenuItem, onSaveSuccess, onSaveError);
            }
        };

        $scope.clear = function() {
            $uibModalInstance.dismiss('cancel');
        };
}]);
