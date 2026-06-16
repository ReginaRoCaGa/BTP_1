using {sap.cap.proyecto1 as my} from '../db/schema';

service proyect1{
    entity Product as projection on my.Product;
    entity Supplier as projection on my.Supplier;
  
}