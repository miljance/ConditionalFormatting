tableextension 50100 SalesLine extends "Sales Line"
{
    fields
    {
        field(50100; "Line Format Style"; Enum LineFormatStyle)
        {
            Caption = 'Line Format Style';
            DataClassification = CustomerContent;
        }
    }
}
