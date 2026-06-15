const cds = require('@sap/cds');
const { $lsp } = require('@sap/cds/lib/compile/cdsc');

module.exports = cds.service.impl(async function(srv){
    srv.on('printhelloworld', req => {
        console.log(req.data)
        return `${req.data.input} World`
    })
} )

