namespace my.po_schema;

using {
  cuid,
  managed
} from '@sap/cds/common';

@odata.draft.enabled
entity PurchaseOrders : cuid, managed {

  // Business Fields
  poNumber        : String(20); @assert.unique
  companyCode     : String(4);
  purchasingOrg   : String(4);
  purchasingGroup : String(3);
  documentType    : String(4); 
  currency        : String(5);
  totalAmount     : Decimal(15, 2);
  documentDate    : Date;
  postingDate     : Date;
  deliveryDate    : Date;
  status          : String(20); 
  // Composition (Header -> Items)
  items           : Composition of many PurchaseOrderItems
                      on items.parent = $self;
}

entity PurchaseOrderItems : cuid, managed {

  parent          : Association to PurchaseOrders;

  itemNumber      : Integer;
  material        : String;

  description     : String(255);
  plant           : String(4);
  storageLocation : String(4);

  quantity        : Decimal(13, 3);
  unitOfMeasure   : String(3);

  netPrice        : Decimal(15, 2);
  priceUnit       : Integer default 1;

  itemAmount      : Decimal(15, 2);

  taxCode         : String(5);

  deliveryDate    : Date;

  itemStatus      : String(20); 
}
