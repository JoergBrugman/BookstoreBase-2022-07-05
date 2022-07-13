pageextension 50101 "BSB Customer List" extends "Customer List"
{
    trigger OnOpenPage();
    var
        now: DotNet guADateTime;
    begin
        now := now.UtcNow();
        Message('Hello, world! DotNet-Test!!! It is (UTC): %1 ', now.ToString());
    end;
}