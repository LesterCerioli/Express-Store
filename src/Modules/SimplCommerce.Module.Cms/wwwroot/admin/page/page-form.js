﻿/*global angular, jQuery*/
(function ($) {
    angular
        .module('simplAdmin.cms')
        .controller('PageFormCtrl', ['$state', '$stateParams', 'summerNoteService', 'pageService', 'translateService', PageFormCtrl]);

    function PageFormCtrl($state, $stateParams, summerNoteService, pageService, translateService) {
        var vm = this;
        vm.translate = translateService;
        vm.page = {};
        vm.pageId = $stateParams.id;
        vm.isEditMode = vm.pageId > 0;

        vm.imageUpload = function (files) {
            summerNoteService.upload(files[0])
                .then(function (response) {
                    $(vm.body).summernote('insertImage', response.data);
                });
        };

        vm.updateSlug = function () {
            vm.page.slug = slugify(vm.page.name);
        };

        vm.save = function save() {
            var promise;
            if (vm.isEditMode) {
                promise = pageService.editPage(vm.page);
            } else {
                promise = pageService.createPage(vm.page);
            }

            promise
                .then(function (result) {
                    $state.go('page');
                })
                .catch(function (response) {
                    var error = response.data;
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not add or update page.');
                    }
                });
        };

        function init() {
            if (vm.isEditMode) {
                pageService.getPage(vm.pageId).then(function (result) {
                    vm.page = result.data;
                });
            }
        }

        init();
    }
})(jQuery);
