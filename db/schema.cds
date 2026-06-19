namespace sap.cap.proyecto1;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

aspect carbonemission
{
    emission : Integer;
    rating : Integer;
}

type pricecost
{
    price : Integer;
    stock : Integer;
}

entity Product : cuid, managed, carbonemission
{
    name : String;
    //cost : pricecost;
    category : String;
    price : Integer;
    stock : Integer;
    criticality : Integer;
    supplier : Association to one Supplier;
    conversation: Composition of many {
        key ID : UUID;
        timestamp : String;
        processor : String;
        message : String;
    }
}

entity Supplier
{
    key ID : UUID;
    name : String(100);
    city : String(100);
    phone : String(100);
    products : Association to many Product on products.supplier = $self;
}
