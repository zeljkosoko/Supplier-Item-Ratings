page 50104 "Item Ratings Factbox"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Item;

    layout
    {
        area(Content)
        {
            usercontrol(Ratings; "Item Ratings")
            {
                ApplicationArea = All;

                trigger ControlReady();
                begin
                    SendRating();
                end;

                trigger SaveRatings(Tag: Text; Rating: Integer);
                begin
                    Rec."Item Rate" := Rating;
                    Rec.Modify(false);
                end;
            }
        }
    }

    trigger OnAfterGetRecord();
    begin
        SendRating();
    end;

    local procedure SendRating();
    var
        Json: JsonObject;
    begin
        Json.Add('starsnumber', Rec."Item Rate");
        CurrPage.Ratings.ShowRatings(Json);
    end;
}