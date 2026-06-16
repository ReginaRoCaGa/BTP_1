namespace sap.cap.proyecto1;

entity Product
{
    key ID : Integer;
    name : String;
    stock : Integer;
    price : Integer;
    category : Integer;
}

entity Supplier
{
    key ID : UUID;
    name : String(100);
    city : String(100);
    phone : String(100);
}
