using { sap.cap.proyecto1 as my } from '../db/schema';

service proyect1
{
    @odata.draft.enabled
    entity Product as
        projection on my.Product
        actions
        {
            action orderProduct
            (
                //@title : 'Product Name'
                //name : String,
                @title : 'Stock'
                stock : Integer
            );

            action createPO
            (
                name : String
            );

            action fingerprint
            (
                username : String
            );
        };

    entity Supplier as
        projection on my.Supplier;
}


//annotate proyect1 with @(requires: 'productmanager');