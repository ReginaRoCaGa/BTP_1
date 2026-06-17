using {sap.cap.proyecto1 as my} from '../db/schema';
//@protocol: 'rest'
service proyect1{
    entity Product as projection on my.Product{
        action orderProduct(name:String, stock:Integer);
        action createPO(name:String);

    };
    entity Supplier as projection on my.Supplier;
  
    //function MyFunction(name:String) returns String;
    //Action MyAction(name:String) returns String;
}