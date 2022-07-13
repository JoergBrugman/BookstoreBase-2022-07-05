enum 50100 "BSB Book Type" implements "BSB Book Type Process"
{
    Extensible = true;
    // Wird verwendet, wenn ein Enum-Wert im Enum oder einer EnumExtension keine eingene Implemtierung setzt
    DefaultImplementation = "BSB Book Type Process" = "BSB Book Type Default Impl.";
    // Wird verwendet, wenn eine App mit einer EnumExtension wieder deinstalliert wurde
    UnknownValueImplementation = "BSB Book Type Process" = "BSB Book Type Default Impl.";
    value(0; " ") { Caption = 'None'; }
    value(1; Hardcover)
    {
        Caption = 'Hardcover';
        Implementation = "BSB Book Type Process" = "BSB Book Type Hardcover Impl.";
    }
    value(2; Paperback)
    {
        Caption = 'Paperback';
        Implementation = "BSB Book Type Process" = "BSB Book Type Paperback Impl.";

    }
}