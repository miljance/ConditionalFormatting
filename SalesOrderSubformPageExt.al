pageextension 50100 SalesOrderSubform extends "Sales Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field("Line Format Style"; Rec."Line Format Style")
            {
                ApplicationArea = All;
            }
        }
    }
}