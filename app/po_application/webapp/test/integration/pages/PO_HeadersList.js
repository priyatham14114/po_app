sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.app.poapplication',
            componentId: 'PO_HeadersList',
            contextPath: '/PO_Headers'
        },
        CustomPageDefinitions
    );
});