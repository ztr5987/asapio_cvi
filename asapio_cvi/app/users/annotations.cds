using AdminService as service from '../../srv/adminService';
annotate service.UserSuppliers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'userEmail',
                Value : userEmail,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userFullName',
                Value : userFullName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplierId',
                Value : supplierId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplierName',
                Value : supplierName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'userEmail',
            Value : userEmail,
        },
        {
            $Type : 'UI.DataField',
            Label : 'userFullName',
            Value : userFullName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'supplierId',
            Value : supplierId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'supplierName',
            Value : supplierName,
        },
    ],
);

