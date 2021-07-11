﻿/*global angular*/
(function () {
    angular
        .module('simplAdmin.core')
        .controller('ThemeListCtrl', ['themeService', 'translateService', ThemeListCtrl]);

    function ThemeListCtrl(themeService, translateService) {
        var vm = this;
        vm.themes = [];
        vm.translate = translateService;

        vm.getThemes = function getThemes() {
            themeService.getThemes().then(function (result) {
                vm.themes = result.data;
            });
        };

        vm.useTheme = function useTheme(theme) {
            themeService.useTheme(theme)
                .then(function (result) {
                    vm.getThemes();
                    window.document.cookie = "theme=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
                    vm.previewingTheme = null;
                    toastr.success('The ' + theme.displayName + ' has been applied');
                })
                .catch(function (response) {
                    toastr.error(response.data.error);
                });
        };

        vm.previewTheme = function previewTheme(theme) {
            window.document.cookie = "theme=" + theme.name + ";";
            vm.previewingTheme = theme.name;
            toastr.success('The ' + theme.displayName + ' has been set in preview mode');
        };

        vm.cancelPreviewTheme = function cancelPreviewTheme(theme) {
            window.document.cookie = "theme=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
            vm.previewingTheme = null;
            toastr.success('The previewing of ' + theme.displayName + ' has been cancelled.');
        };

        vm.downloadTheme = function downloadTheme(theme) {
            window.open('api/themes/' + theme.name + '/download', '_blank', '');
        };

        vm.deleteTheme = function deleteTheme(theme) {
            bootbox.confirm('Are you sure you want to delete this ' + simplUtil.escapeHtml(theme.name), function (result) {
                if (result) {
                    themeService.deleteTheme(theme.name)
                        .then(function (result) {
                            vm.getThemes();
                            toastr.success(theme.name + ' has been deleted');
                        })
                        .catch(function (response) {
                            toastr.error(response.data.error);
                        });
                }
            });
        };

        function getCookie(name) {
            var value = "; " + document.cookie;
            var parts = value.split("; " + name + "=");
            if (parts.length === 2) return parts.pop().split(";").shift();
        }

        vm.previewingTheme = getCookie('theme');

        vm.getThemes();
    }
})();
