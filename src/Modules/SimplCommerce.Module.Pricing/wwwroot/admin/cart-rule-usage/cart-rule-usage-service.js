﻿/*global angular*/
(function () {
    angular
        .module('simplAdmin.pricing')
        .factory('cartRuleUsageService', ['$http', cartRuleUsageService]);

    function cartRuleUsageService($http) {
        var service = {
            getCartRuleUsages: getCartRuleUsages
        };
        return service;

        function getCartRuleUsages(params) {
            return $http.post('api/cart-rule-usages/grid', params);
        }
    }
})();
