@protocol:'rest'
service product{
    function printhelloworld (input:String)
    returns String;

    function addition(num1: Integer, num2: Integer)
    returns Integer;

    type object{};
    function MyFunction(category: Integer)
    returns object;
}