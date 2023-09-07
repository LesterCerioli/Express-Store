﻿/*global angular, jQuery*/
(function ($) {
    angular
        .module('simplAdmin.cms')
        .controller('MenuFormCtrl', ['$state', '$stateParams', 'menuService', 'translateService', MenuFormCtrl]);

    function MenuFormCtrl($state, $stateParams, menuService, translateService) {
        var vm = this;
        vm.translate = translateService;
        vm.menu = {};
        vm.menuId = $stateParams.id;
        vm.isEditMode = vm.menuId > 0;
        vm.entities = [];
        vm.entityTypes = [];
        vm.selectedEntities = [];
        vm.menuItemTree = [];
        vm.addingCustomLink = {};

        vm.toggleEntity = function toggleEntity(entity) {
            var entityIds = vm.selectedEntities.map(function (item) { return item.id; });
            var index = entityIds.indexOf(entity.id);
            if (index > -1) {
                vm.selectedEntities.splice(index, 1);
            } else {
                vm.selectedEntities.push(entity);
            }
            entity.isChecked = true;
        };

        vm.addMenuItems = function () {
            var menuItems = vm.selectedEntities.map(function (item) {
                return { entityId: item.id, name: item.name };
            });
            menuService.addMenuItem(vm.menuId, menuItems).then(function (result) {
                result.data.forEach(function (item) {
                    item.children = [];
                    vm.menuItemTree.push(item);
                });
                vm.selectedEntities = [];
                uncheckAllMenuItems();
            });
        };

        vm.addCustomLink = function () {
            var menuItems = [];
            menuItems.push(vm.addingCustomLink);
            menuService.addMenuItem(vm.menuId, menuItems).then(function (result) {
                result.data.forEach(function (item) {
                    item.children = [];
                    vm.menuItemTree.push(item);
                    vm.addingCustomLink = {};
                });
            });
        };

        vm.remove = function (scope) {
           scope.remove();
        };

        vm.toggle = function (scope) {
            scope.toggle();
        };

        vm.save = function save() {
            var promise;
            vm.menu.items = treeToArray(vm.menuItemTree);

            if (vm.isEditMode) {
                promise = menuService.editMenu(vm.menu);
            } else {
                promise = menuService.createMenu(vm.menu);
            }

            promise
                .then(function (result) {
                    $state.go('menus');
                })
                .catch(function (response) {
                    var error = response.data;
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not add menu.');
                    }
                });
        };

        function arrayToTree(arr) {
            var i, node,
                map = {}, roots = [];
            // use map to look-up the parents
            for (i = 0; i < arr.length; i += 1) {
                map[arr[i].id] = i;
            }

            for (i = 0; i < arr.length; i += 1) {
                node = arr[i];
                if (node.parentId) {
                    arr[map[node.parentId]].children.push(node);
                } else {
                    roots.push(node);
                }
            }

            return roots;
        }

        function treeToArray(tree) {
            var items = [];
            function readNodes(nodes, parentNode) {
                nodes.forEach(function (node, i) {
                    var parentId = (parentNode) ? parentNode.id : "";
                    var displayOrder = i;
                    var item = { id: node.id, name: node.name, entityId: node.entityId, customLink: node.customLink, parentId: parentId, displayOrder: displayOrder };
                    items.push(item);
                    if (node.children.length > 0) {
                        readNodes(node.children, node);
                    }
                });
            }
            readNodes(tree);
            return items;
        }

	function uncheckAllMenuItems() {
            vm.entities.forEach(function (entity) {
                entity.isChecked = false;
            });
        }
		
        function init() {
            menuService.getEntities().then(function (result) {
                vm.entities = result.data;
                uncheckAllMenuItems();
            });

            menuService.getEntityTypes().then(function (result) {
                vm.entityTypes = result.data;
            });

            if (vm.isEditMode) {
                menuService.getMenu(vm.menuId).then(function (result) {
                    vm.menu = result.data;
                    vm.menu.items.forEach(function (item) { item.children = []; });
                    vm.menuItemTree = arrayToTree(vm.menu.items);
                });
            }
        }

        init();
    }
})(jQuery);
