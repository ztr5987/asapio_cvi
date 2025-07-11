namespace cvi;

using {managed} from '@sap/cds/common';

entity UserSuppliers : managed {
    key ID           : UUID;
        userEmail    : String;
        userFullName : String;
        supplierId   : String;
        supplierName : String;
}

entity Catalogs : managed {
    key ID           : Integer;
        name         : String;
        catalogName  : String;
        supplierId   : String;
        supplierName : String;
        fileFormats  : Association to FileFormats;
        Uploads      : Composition of many Uploads
                           on Uploads.catalog = $self;
        ImportLocked : Boolean;
}

entity FileFormats {
    key code  : String;
        label : String;
}

entity Uploads {
    key timestamp         : Timestamp;
        articleNumber     : Integer;
        downloadCompleted : Boolean;
        catalog           : Association to one Catalogs;
        errors            : Association to many Errors
                                on errors.Upload = $self;
}

entity Errors {
    key Upload : Association to one Uploads;
        id     : Integer;
        type   : String;
        text   : String;
}
