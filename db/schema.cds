namespace sap.cap.proyecto1;

//PARA HEREDAR
aspect carbonemission {
    emission : Integer;
    rating : Integer;
}

type pricecost{
    price : Integer;
    stock : Integer;

}
entity Product : carbonemission
{
    key ID : Integer;
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
