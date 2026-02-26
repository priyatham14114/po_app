sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/app/poapplication/test/integration/pages/PO_HeadersList",
	"com/app/poapplication/test/integration/pages/PO_HeadersObjectPage",
	"com/app/poapplication/test/integration/pages/PO_ItemsObjectPage"
], function (JourneyRunner, PO_HeadersList, PO_HeadersObjectPage, PO_ItemsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/app/poapplication') + '/test/flpSandbox.html#comapppoapplication-tile',
        pages: {
			onThePO_HeadersList: PO_HeadersList,
			onThePO_HeadersObjectPage: PO_HeadersObjectPage,
			onThePO_ItemsObjectPage: PO_ItemsObjectPage
        },
        async: true
    });

    return runner;
});

