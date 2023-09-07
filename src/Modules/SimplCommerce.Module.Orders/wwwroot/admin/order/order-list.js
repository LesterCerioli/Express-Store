﻿/*global angular*/
(function () {
    angular
        .module('simplAdmin.orders')
        .controller('OrderListCtrl', ['orderService', 'translateService', OrderListCtrl]);

    function OrderListCtrl(orderService, translateService) {
        var vm = this;
        vm.translate = translateService;
        vm.tableStateRef = {};
        vm.orders = [];

        orderService.getOrderStatus().then(function (result) {
            vm.orderStatus = result.data;
        });

        vm.getOrders = function getOrders(tableState) {
            vm.isLoading = true;
            vm.tableStateRef = tableState;
            orderService.getOrdersForGrid(tableState).then(function (result) {
                vm.orders = result.data.items;
                tableState.pagination.numberOfPages = result.data.numberOfPages;
                tableState.pagination.totalItemCount = result.data.totalRecord;
                vm.isLoading = false;
            });
        };

        vm.getOrdersExport = function getOrdersExport() {
            orderService.getOrdersExport(vm.tableStateRef);
        };

        vm.getOrderLinesExport = function getOrderLinesExport() {
            orderService.getOrderLinesExport(vm.tableStateRef);
        };
    }
})();
