﻿/*global angular*/
(function () {
    'use strict';

    angular
        .module('simplAdmin.paymentCoD', [])
        .config(['$stateProvider',
            function ($stateProvider) {
                $stateProvider
                    .state('payments-cod-config', {
                        url: '/payments/cod/config',
                        templateUrl: '_content/SimplCommerce.Module.PaymentCoD/admin/config/config-form.html',
                        controller: 'CoDConfigFormCtrl as vm'
                    })
                    ;
            }
        ]);
})();
