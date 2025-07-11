const cds = require('@sap/cds');

module.exports = cds.service.impl(async function (srv) {

    const { UserSuppliers } = cds.entities('cvi') //cds.entities;

    srv.on('maintainUser', async (req) => {

        req.notify(`Maintain User action triggered!`);


    });

});