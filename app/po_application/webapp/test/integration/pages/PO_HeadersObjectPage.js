sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.app.poapplication',
            componentId: 'PO_HeadersObjectPage',
            contextPath: '/PO_Headers'
        },
        CustomPageDefinitions
    );
});