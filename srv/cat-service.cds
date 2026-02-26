using my.po_schema as my from '../db/schema';

@path: '/PoSrv'
service PoService {
    entity PO_Headers as
        projection on my.PurchaseOrders {
            *,
            items
        };

    entity PO_Items   as projection on my.PurchaseOrderItems;
}
