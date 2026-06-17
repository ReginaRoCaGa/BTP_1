sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ns/product/test/integration/pages/ProductList",
	"ns/product/test/integration/pages/ProductObjectPage"
], function (JourneyRunner, ProductList, ProductObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ns/product') + '/test/flp.html#app-preview',
        pages: {
			onTheProductList: ProductList,
			onTheProductObjectPage: ProductObjectPage
        },
        async: true
    });

    return runner;
});

