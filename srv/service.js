const cds = require('@sap/cds');
const { $lsp } = require('@sap/cds/lib/compile/cdsc');

module.exports = cds.service.impl(async function(srv){
    srv.on('printhelloworld', req => {
        console.log(req.data)
        return `${req.data.input} World`
    })

    srv.on('addition', req => {
        console.log(req.data)
        let result = req.data.num1 + req.data.num2;
        return result;}
    )

    srv.on('MyFunction', req => {
       
        let result = {}

        if(req.data.category == 1){
            result.product = 'BMW',
            result.price = '100000',
            result.location = 'New York'
        }else{
            result.stock = 100,
            result.product = 'Audi',
            result,priceArray = [
                {
                "Price": 50000,
                "Discount": "10%"

                }
        ]
        }
       return result;})
} )


