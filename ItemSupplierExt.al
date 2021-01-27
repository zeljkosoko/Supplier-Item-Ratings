tableextension 50103 ItemSupplierExt extends Item
{
    fields
    {
        field(50100; "Supplier Code"; Code[20])
        {
            Caption = 'Supplier Code';
            DataClassification = ToBeClassified;
            TableRelation = Supplier.Code;
        }
        field(50101; "Item Rate"; Integer)
        {
            Caption = 'Item Rate';
            DataClassification = ToBeClassified;
        }
    }
}
