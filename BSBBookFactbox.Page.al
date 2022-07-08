page 50102 "BSB Book Factbox"
{
    Caption = 'Book Details';
    PageType = CardPart;
    SourceTable = "BSB Book";
    Editable = false;

    layout
    {
        area(Content)
        {

            field("No."; Rec."No.")
            {
                Caption = 'Book No.';
                ToolTip = 'Specifies the value of the No. field.';
                ApplicationArea = All;

                //TODO Kartenaufruf fehlt noch
                trigger OnDrillDown()
                begin
                    ShowDetail();
                end;
            }
            field(Description; Rec.Description)
            {
                Caption = 'Book Description';
                ToolTip = 'Specifies the value of the Description field.';
                ApplicationArea = All;
            }
            field("Date of Publishing"; Rec."Date of Publishing")
            {
                ToolTip = 'Specifies the value of the Date of Publishing field.';
                ApplicationArea = All;
            }
            field("No. of Pages"; Rec."No. of Pages")
            {
                ToolTip = 'Specifies the value of the No. of Pages field.';
                ApplicationArea = All;
            }
            field(Author; Rec.Author)
            {
                ToolTip = 'Specifies the value of the Author field.';
                ApplicationArea = All;
            }
        }
    }

    local procedure ShowDetail()
    begin
        Rec.ShowCard();
    end;
}