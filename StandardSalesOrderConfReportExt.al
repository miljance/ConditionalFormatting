reportextension 50100 StandardSalesOrderConf extends "Standard Sales - Order Conf."
{
    dataset
    {
        add(Line)
        {
            column(LineFormatStyle; Format("Line Format Style", 0, 2))
            {
            }
        }
        addbefore(AssemblyLine)
        {
            dataitem(LineNormal; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));
                column(DescriptionNormal; Line.Description) { }
                column(QuantityNormal; FormattedQuantity) { }
                column(UnitOfMeasureNormal; Line."Unit of Measure") { }
                column(UnitPriceNormal; FormattedUnitPrice) { }
                column(LineDiscountPercentTextNormal; LineDiscountPctText) { }
                column(LineAmountNormal; FormattedLineAmount) { }
                column(NoNormal; Line."No.") { }
                column(VATPctNormal; FormattedVATPct) { }
                trigger OnPreDataItem()
                begin
                    if Line."Line Format Style" <> Line."Line Format Style"::Normal then
                        CurrReport.Break();
                end;
            }
            dataitem(LineItalic; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));
                column(DescriptionItalic; Line.Description) { }
                column(QuantityItalic; FormattedQuantity) { }
                column(UnitOfMeasureItalic; Line."Unit of Measure") { }
                column(UnitPriceItalic; FormattedUnitPrice) { }
                column(LineDiscountPercentTextItalic; LineDiscountPctText) { }
                column(LineAmountItalic; FormattedLineAmount) { }
                column(NoItalic; Line."No.") { }
                column(VATPctItalic; FormattedVATPct) { }
                trigger OnPreDataItem()
                begin
                    if Line."Line Format Style" <> Line."Line Format Style"::Italic then
                        CurrReport.Break();
                end;
            }
            dataitem(LineBold; "Integer")
            {
                DataItemTableView = sorting(Number) where(Number = const(1));
                column(DescriptionBold; Line.Description) { }
                column(QuantityBold; FormattedQuantity) { }
                column(UnitOfMeasureBold; Line."Unit of Measure") { }
                column(UnitPriceBold; FormattedUnitPrice) { }
                column(LineDiscountPercentTextBold; LineDiscountPctText) { }
                column(LineAmountBold; FormattedLineAmount) { }
                column(NoBold; Line."No.") { }
                column(VATPctBold; FormattedVATPct) { }
                trigger OnPreDataItem()
                begin
                    if Line."Line Format Style" <> Line."Line Format Style"::Bold then
                        CurrReport.Break();
                end;
            }
        }
    }
    rendering
    {
        layout("StandardSalesOrderConf.rdlc")
        {
            Type = RDLC;
            LayoutFile = './StandardSalesOrderConf.rdl';
            Caption = 'Conditional Formatting (RDLC)';
            Summary = 'Conditional Formatting (RDLC)';
        }
        layout("StandardSalesOrderConf.docx")
        {
            Type = Word;
            LayoutFile = './StandardSalesOrderConf.docx';
            Caption = 'Conditional Formatting (Word)';
            Summary = 'Conditional Formatting (Word)';
        }

    }
}
