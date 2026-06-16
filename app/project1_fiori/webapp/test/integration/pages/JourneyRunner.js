sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ns/project1fiori/test/integration/pages/ProductList",
	"ns/project1fiori/test/integration/pages/ProductObjectPage"
], function (JourneyRunner, ProductList, ProductObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ns/project1fiori') + '/test/flp.html#app-preview',
        pages: {
			onTheProductList: ProductList,
			onTheProductObjectPage: ProductObjectPage
        },
        async: true
    });

    return runner;
});

