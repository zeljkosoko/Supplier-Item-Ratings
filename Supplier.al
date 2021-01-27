table 50101 Supplier
{
    Caption = 'Supplier';
    DataClassification = ToBeClassified;
    LookupPageId = SupplierList;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(4; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Internal,External;
            OptionCaption = ' ,Internal,External';
        }
        field(5; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
        key(Name; Name)
        {
            Enabled = true;
        }
    }
}