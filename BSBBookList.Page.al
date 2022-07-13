page 50101 "BSB Book List"
{
    Caption = 'Books';
    PageType = List;
    Editable = false;
    SourceTable = "BSB Book";
    CardPageId = "BSB Book Card";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Books)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
                field(ISBN; Rec.ISBN)
                {
                    ToolTip = 'Specifies the value of the ISBN field.';
                    ApplicationArea = All;
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author field.';
                }
                field("No. of Pages"; Rec."No. of Pages")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the No. of Pages field.';
                }
            }
        }
        area(factboxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CreateBooks)
            {
                Caption = 'Create Books';
                Image = CreateDocuments;
                ApplicationArea = All;
                ToolTip = 'Executes the Create Books action.';
                RunObject = codeunit "BSB Create Books";
            }

            action(BookSalesProcess)
            {
                Caption = 'Book Sales Process';
                Image = Process;
                ApplicationArea = All;
                ToolTip = 'Executes the Book Sales Process action.';

                trigger OnAction()
                var
                    BSBBookTypeProcessMgmt: Codeunit "BSB Book Type Process Mgmt.";
                    BSBBookTypeProcess: Interface "BSB Book Type Process";
                begin
                    BSBBookTypeProcess := BSBBookTypeProcessMgmt.GetHandler(Rec);
                    BSBBookTypeProcess.StartDeployBook();
                    BSBBookTypeProcess.StartDeliverBook();
                end;
            }
        }
    }
}