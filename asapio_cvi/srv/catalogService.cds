using cvi as my from '../db/schema';

service CatalogService {

    //    @restrict: [{
    //        to   : 'READ',
    //        where: 'supplierId in (SELECT supplierId FROM my.UserSuppliers WHERE userEmail = $user)'
    //    }]
    //    @odata.draft.enabled
    entity Catalogs    as
        projection on my.Catalogs {
            ID,
            name,
            catalogName,
            supplierId,
            supplierName,
            ImportLocked,
            fileFormats.code  as fileFormats_code,
            fileFormats.label as fileFormats_label,
            Uploads,
        }
        actions {
            action validateCatalog() returns Boolean;
        };

    entity FileFormats as projection on my.FileFormats;
    entity Uploads     as projection on my.Uploads;
    entity Errors      as projection on my.Errors;
    action uploadCatalog() returns String;
    action downloadTemplate() returns String;
};

