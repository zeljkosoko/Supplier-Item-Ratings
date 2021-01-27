page 50101 SupplierCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Supplier;
    Caption = 'Supplier Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}