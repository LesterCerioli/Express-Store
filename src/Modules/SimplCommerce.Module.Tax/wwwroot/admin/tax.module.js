﻿/*global angular*/
(function () {
    'use strict';

    angular.module('simplAdmin.tax', [])
        .config(['$stateProvider', function ($stateProvider) {
            $stateProvider
                .state('tax-classes', {
                    url: '/tax-classes',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-class/tax-class-list.html',
                    controller: 'TaxClassListCtrl as vm'
                })
                .state('tax-classes-create', {
                    url: '/tax-classes/create',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-class/tax-class-form.html',
                    controller: 'TaxClassFormCtrl as vm'
                })
                .state('tax-classes-edit', {
                    url: '/tax-classes/edit/:id',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-class/tax-class-form.html',
                    controller: 'TaxClassFormCtrl as vm'
                })
                .state('tax-rates', {
                    url: '/tax-rates',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-rate/tax-rate-list.html',
                    controller: 'TaxRateListCtrl as vm'
                })
                .state('tax-rates-create', {
                    url: '/tax-rates/create',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-rate/tax-rate-form.html',
                    controller: 'TaxRateFormCtrl as vm'
                })
                .state('tax-rates-import', {
                    url: '/tax-rates/import',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-rate/tax-rate-import.html',
                    controller: 'TaxRateImportFormCtrl as vm'
                })
                .state('tax-rates-edit', {
                    url: '/tax-rates/edit/:id',
                    templateUrl: '_content/SimplCommerce.Module.Tax/admin/tax-rate/tax-rate-form.html',
                    controller: 'TaxRateFormCtrl as vm'
                });
        }]);
})();
