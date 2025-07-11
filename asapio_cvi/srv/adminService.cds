using cvi as my from '../db/schema';

service AdminService {
    @odata.draft.enabled
    entity UserSuppliers as projection on my.UserSuppliers;
}
