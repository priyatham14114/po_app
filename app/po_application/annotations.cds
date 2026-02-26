using PoService as service from '../../srv/cat-service';

annotate service.PO_Headers with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'poNumber',
                Value: poNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'companyCode',
                Value: companyCode,
            },
            {
                $Type: 'UI.DataField',
                Label: 'purchasingOrg',
                Value: purchasingOrg,
            },
            {
                $Type: 'UI.DataField',
                Label: 'purchasingGroup',
                Value: purchasingGroup,
            },
            {
                $Type: 'UI.DataField',
                Label: 'documentType',
                Value: documentType,
            },
            {
                $Type: 'UI.DataField',
                Label: 'currency',
                Value: currency,
            },
            {
                $Type: 'UI.DataField',
                Label: 'totalAmount',
                Value: totalAmount,
            },
            {
                $Type: 'UI.DataField',
                Label: 'documentDate',
                Value: documentDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'postingDate',
                Value: postingDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'deliveryDate',
                Value: deliveryDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'status',
                Value: status,
            }
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'Purchase Order Header Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Purchase order items',
            ID    : 'Purchaseorderitems',
            Target: 'items/@UI.LineItem#Purchaseorderitems',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'poNumber',
            Value: poNumber,
        },
        {
            $Type: 'UI.DataField',
            Label: 'companyCode',
            Value: companyCode,
        },
        {
            $Type: 'UI.DataField',
            Label: 'purchasingOrg',
            Value: purchasingOrg,
        },
        {
            $Type: 'UI.DataField',
            Label: 'purchasingGroup',
            Value: purchasingGroup,
        },
        {
            $Type: 'UI.DataField',
            Label: 'documentType',
            Value: documentType,
        },
    ],
);

annotate service.PO_Items with @(
    UI.LineItem #Purchaseorderitems  : [
        {
            $Type: 'UI.DataField',
            Value: ID,
            Label: 'Item ID'
        },
        {
            $Type: 'UI.DataField',
            Value: itemNumber
        },
        {
            $Type: 'UI.DataField',
            Value: material
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: quantity,
            Label: 'Qty'
        },
        {
            $Type: 'UI.DataField',
            Value: netPrice,
            Label: 'Net Price'
        },
        {
            $Type: 'UI.DataField',
            Value: itemAmount,
            Label: 'Item Amount'
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Status',
            Value: itemStatus
        },
        {
            $Type: 'UI.DataField',
            Label: 'Delivery Date',
            Value: deliveryDate
        },
        {
            $Type: 'UI.DataField',
            Label: 'Tax Code',
            Value: taxCode
        },
    ],

    UI.FieldGroup #GeneratedItemGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Item Number',
                Value: itemNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Description',
                Value: description,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Item Amount',
                Value: itemAmount,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Item Status',
                Value: itemStatus,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Material',
                Value: material,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Net Price',
                Value: netPrice,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Plant',
                Value: plant,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Price Unit',
                Value: priceUnit,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Quantity',
                Value: quantity,
            },
            {
                $Type: 'UI.DataField',
                Label: 'StorageLocation',
                Value: storageLocation,
            },
            {
                $Type: 'UI.DataField',
                Label: 'unit of Measure',
                Value: unitOfMeasure,
            },
        ],
    },

        UI.FieldGroup #GeneratedItemGroup2: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Created At',
                Value: createdAt,
            },      
            {
                $Type: 'UI.DataField',
                Label: 'Created By',
                Value: createdBy,
            },      
            {
                $Type: 'UI.DataField',
                Label: 'Modifie dAt',
                Value: modifiedAt,
            },      
            {
                $Type: 'UI.DataField',
                Label: 'Modified By',
                Value: modifiedBy,
            }   
        ],
    },

    UI.Facets                        : [
        {
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet2',
        Label : 'Item Information',
        Target: '@UI.FieldGroup#GeneratedItemGroup',
    },
        {
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet3',
        Label : 'User info',
        Target: '@UI.FieldGroup#GeneratedItemGroup2',
    }
    ]

);
