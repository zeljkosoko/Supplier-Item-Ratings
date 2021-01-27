pageextension 50103 "Item Supplier Card Ext." extends "Item Card"
{
    layout
    {
        addfirst(FactBoxes)
        {
            part(Ratings; "Item Ratings Factbox")
            {
                //SubPageLink je kao FK sa "No" poljem koje referencira na polje "No" sa ItemCard
                SubPageLink = "No." = field("No.");
                Caption = 'Item Rate';
                ApplicationArea = All;
            }
        }

        addafter("Base Unit of Measure")
        {
            field("Supplier Code"; "Supplier Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Common Item No.")
        {
            field("Item Rate"; "Item Rate")
            {
                ApplicationArea = All;
            }
        }
    }
}
