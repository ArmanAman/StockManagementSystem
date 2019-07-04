<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="StockManagementSystemApp.UI.StockOutUI" EnableEventValidation="false" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Category</title>

</head>

<body id="page-top">
<form id="stockOutFrom" runat="server">
<a href="index.aspx">Stock Management</a>
<ul>
    <li>
        <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Logout" OnClick="LogoutClick"/>
    </li>
</ul>
<div>

    <ul>
        <li>
            <a href="CategoryUI.aspx">
                <span>Category</span>
            </a>
        </li>
        <li>
            <a href="CompanyUI.aspx">

                <span>Company</span>
            </a>
        </li>
        <li>
            <a href="ItemUI.aspx">
                <span>Item</span>
            </a>
        </li>

        <li>
            <a href="StockInUI.aspx">
                <span>Stock In</span>
            </a>
        </li>
        <li>
            <a href="StockOutUI.aspx">
                <span>Stock Out</span>
            </a>
        </li>

        <li>
            <a href="SearchViewUI.aspx">
                <span>Search and View</span>
            </a>
        </li>
        <li>
            <a href="ViewSalesDateUI.aspx">
                <span>View Sales</span>
            </a>
        </li>
    </ul>

    <div>

        <div>


            <div>

                <div>

                    <div>

                        <div>
                            <asp:Label ID="Label1" class="col-sm-3 col-form-label" runat="server" Text="Company"></asp:Label>


                            <div>
                                <asp:DropDownList ID="DropDownCompanyList" CssClass="form-control" runat="server" OnSelectedIndexChanged="DropdownCompanySelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                <asp:Label ID="LabelCompanyMessageError" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div>

                            <asp:Label ID="Label6" class="col-sm-3 col-form-label" runat="server" Text="Item"></asp:Label>
                            <div>

                                <asp:DropDownList ID="DropDownItemList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDwonItemSelectedIndexChanged"></asp:DropDownList>
                                <asp:Label ID="LabelItemMessageError" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div>
                            <asp:Label ID="Label3" class="col-sm-3 col-form-label" runat="server" Text="ReorderLevel"></asp:Label>
                            <div>

                                <asp:TextBox ID="TextBoxReorderLevel" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div>

                        <div>

                            <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="AvailableQuantity"></asp:Label>
                            <div class="col-sm-9 custompadding">
                                <asp:TextBox ID="TextBoxAvailableQuantity" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>


                            </div>
                        </div>
                        <div>
                            <asp:Label ID="Label4" class="col-sm-3 col-form-label" runat="server" Text="Stock Out Quantity"></asp:Label>

                            <div>
                                <asp:TextBox ID="TextBoxStockOut" class="form-control" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
                                <asp:Label ID="LabelStockInMessageError" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

                <div>

                    <div>
                        <asp:Button ID="ButtonSave" runat="server" Text="Add" class="btn btn-primary" Width="332px" OnClick="SaveButtonStockOut"/>
                    </div>

                </div>

                <div>
                    <div>
                        <asp:Label ID="Label5" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                    </div>
                </div>

                <div>
                    <div>
                        <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                    </div>
                </div>

                <asp:GridView ID="GridViewStockOutList" runat="server" CssClass="table table-hover table-striped" ShowFooter="True" AutoGenerateColumns="False" Height="150px">
                    <Columns>

                        <asp:TemplateField>
                            <HeaderTemplate>Serial No.</HeaderTemplate>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Item">
                            <ItemTemplate>
                                <asp:Label ID="ItemName" runat="server" Text='<%# Eval("Item") %>'></asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField Visible="false" ItemStyle-CssClass="hideGridColumn" HeaderStyle-CssClass="hideGridColumn">
                            <ItemTemplate>
                                <asp:Label ID="idItemHiddenField" runat="server" Text='<%#Eval("Itemid") %>'></asp:Label>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Company">
                            <ItemTemplate>

                                <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("Company") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField Visible="false" ItemStyle-CssClass="hideGridColumn" HeaderStyle-CssClass="hideGridColumn">
                            <ItemTemplate>
                                <asp:Label ID="idCompanyHiddenField" runat="server" Text='<%#Eval("Companyid") %>'></asp:Label>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField Visible="false" ItemStyle-CssClass="hideGridColumn" HeaderStyle-CssClass="hideGridColumn">
                            <ItemTemplate>
                                <asp:Label ID="idHiddenAvailquantity" runat="server" Text='<%#Eval("Availablequantity") %>'></asp:Label>

                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="quantityName" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>

                            </ItemTemplate>


                        </asp:TemplateField>


                    </Columns>
                </asp:GridView>
                <div>
                    <asp:Button ID="ButtonSellId" class="btn btn-success " runat="server" Text="Sell" Visible="False" OnClick="sellButtonClick" width="140px"/>&nbsp;
                    <asp:Button ID="DamageButton" class="btn btn-warning " runat="server" OnClick="DamageButtonClick" Text="Damage" Visible="False" width="140px"/>&nbsp;

                    <asp:Button ID="LostButton" class="btn btn-danger" runat="server" OnClick="LostButtonClick" Text="Lost" Visible="False" width="140px"/>
                </div>
                <a class="btn btn-primary" href="login.html">Logout</a>

            </div>

        </div>
    </div>
</div>
</form>
<script>
    $(document).ready(function() {
        $("#ButtonSave").on("click",
            function() {
                //custom validation rule for Dropdown List  
                $.validator.addMethod("CheckDownCompanyList",
                    function(value, element, param) {
                        if (value == '0')
                            return false;
                        else
                            return true;
                    },
                    "Please select a Company.");

                $.validator.addMethod("CheckDropDownItemList",
                    function(value, element, param) {
                        if (value == '0')
                            return false;
                        else
                            return true;
                    },
                    "Please select a Item");


                $("#stockOutFrom").validate({
                    rules: {
                        "<%= DropDownCompanyList.UniqueID %>": {
                            CheckDownCompanyList: true
                        },

                        "<%= DropDownItemList.UniqueID %>": {
                            CheckDropDownItemList: true
                        },
                        "<%= TextBoxStockOut.UniqueID %>": {
                            required: true
                        },


                    },
                    messages: {
                        "<%= TextBoxStockOut.UniqueID %>": {
                            required: "Please enter Stock Out Quantity"

                        },
                    },
                });

            });
    });
</script>
</body>

</html>