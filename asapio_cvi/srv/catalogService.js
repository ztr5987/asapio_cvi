const cds = require('@sap/cds');

module.exports = cds.service.impl(async function (srv) {

  const { Catalogs, UserSuppliers, Uploads } = cds.entities('cvi') //cds.entities;

  // srv.on('READ', 'Catalogs', async (req) => {

    // const email = req.user.email;
    // console.error('User email:', email);
    // if (!email) return req.reject(401, 'User email missing');

    // // Get all suppliers linked to the user
    // const userSuppliers = await SELECT.from(UserSuppliers).columns('supplierId').where({ userEmail: email });

    // if (!userSuppliers.length) return [];

    // // Extract supplier IDs
    // const supplierIDs = userSuppliers.map(s => s.supplierId);

    // // Filter catalogs for all these supplier IDs
    // return SELECT.from(Catalogs).where({ supplierId: { in: supplierIDs } });
  // });

  // READ handler
  // srv.on('READ', Uploads, async (req) => {
  //   try {
  //     const result = await SELECT.from(Uploads);
  //     return result;
  //   } catch (err) {
  //     console.error('Error reading Uploads:', err);
  //     req.reject(500, 'Failed to read Uploads');
  //   }
  // });

  srv.on('uploadCatalog', async (req) => {
    // const data = {
    //   timestamp: new Date().toISOString(),
    //   articleNumber: 123456,
    //   downloadCompleted: false,
    //   catalog_ID: '2'
    // };

    // await INSERT.into(Uploads).entries(data);
    console.log("✅ uploadCatalog handler loaded");
    req.notify(`uploadCatalog action triggered! Item uploaded!`);
  });

  srv.on('validateCatalog', async (req) => {
    console.log("✅ validateCatalog handler loaded");
    req.notify(`Validate Catalog action triggered!`);
  });


});