pageextension 50100 "BSB Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group("BSB Bookstore")
            {
                Caption = 'Bookstore';

                field("BSB Favorite Book No."; Rec."BSB Favorite Book No.")
                {
                    ToolTip = 'Specifies the value of the Favorite Book No. field.';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("BSB Favorite Book Description"; Rec."BSB Favorite Book Description")
                {
                    ToolTip = 'Specifies the value of the Favorite Book Description field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}