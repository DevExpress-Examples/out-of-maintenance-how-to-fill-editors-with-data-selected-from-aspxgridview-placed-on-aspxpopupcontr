<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function btSelect_Click(s, e) {
            pcSelection.Show();
        }

        function gvProducts_RowDblClick(s, e) {
            s.GetRowValues(e.visibleIndex, "ProductName;CategoryID;UnitPrice", RecieveGridValues);
            pcSelection.Hide();
        }

        function RecieveGridValues(values) {
            txProductName.SetValue(values[0]);
            cbCategory.SetValue(values[1]);
            txPrice.SetValue(values[2]);                       
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2">
                    <h3>
                        Product</h3>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <dx:ASPxButton ID="btSelect" runat="server" Text="Select from DB" AutoPostBack="False">
                        <ClientSideEvents Click="btSelect_Click" />
                    </dx:ASPxButton>
                </td>
            </tr>
            <tr>
                <td>
                    Product Name:
                </td>
                <td width="200px">
                    <dx:ASPxTextBox ID="txProductName" runat="server" ClientInstanceName="txProductName"
                        Width="100%">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Category:
                </td>
                <td>
                    <dx:ASPxComboBox ID="cbCategory" runat="server" ClientInstanceName="cbCategory" Width="100%"
                        DataSourceID="dsCategories" TextField="CategoryName" ValueField="CategoryID"
                        ValueType="System.Int32">
                    </dx:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td>
                    Price:
                </td>
                <td>
                    <dx:ASPxTextBox ID="txPrice" runat="server" ClientInstanceName="txPrice" Width="100%">
                    </dx:ASPxTextBox>
                </td>
            </tr>
        </table>
        <dx:ASPxPopupControl ID="pcSelection" runat="server" ClientInstanceName="pcSelection"
            HeaderText="Select Product">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                    (Select by row double click)
                    <dx:ASPxGridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
                        KeyFieldName="ProductID">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" ShowInCustomizationForm="True"
                                VisibleIndex="0">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ProductName" ShowInCustomizationForm="True"
                                VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataComboBoxColumn Caption="Category" FieldName="CategoryID" ShowInCustomizationForm="True"
                                VisibleIndex="2">
                                <PropertiesComboBox  DataSourceID="dsCategories" TextField="CategoryName" ValueField="CategoryID"
                        ValueType="System.Int32">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataTextColumn FieldName="UnitPrice" ShowInCustomizationForm="True" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <ClientSideEvents RowDblClick="gvProducts_RowDblClick" />
                    </dx:ASPxGridView>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <asp:AccessDataSource ID="dsCategories" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:AccessDataSource>
        <asp:AccessDataSource ID="dsProducts" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Products]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
