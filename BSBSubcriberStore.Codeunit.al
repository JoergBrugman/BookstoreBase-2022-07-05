codeunit 50100 "BSB Subcriber Store"
{
    var
        FavoriteBookHintMsg: Label 'Do not forget to enter %1 in %2';

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    procedure FavoriteBookHintCustOnAfterInsert(var Rec: Record Customer)
    begin
        if Rec."BSB Favorite Book No." = '' then
            Message(FavoriteBookHintMsg,
                Rec.FieldCaption("BSB Favorite Book No."),
                Rec.TableCaption);
    end;

}

