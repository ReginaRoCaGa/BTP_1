namespace sap.cap.proyecto1;
using{cuid, managed} from '@sap/cds/common';

//PARA HEREDAR
aspect carbonemission {
    emission : Integer;
    rating : Integer;
}

type pricecost{
    price : Integer;
    stock : Integer;

}
entity Product : cuid, carbonemission, managed
{
    name : String;
   cost : pricecost;
    category : Integer;
}

entity Supplier
{
    key ID : UUID;
    name : String(100);
    city : String(100);
    phone : String(100);
}
