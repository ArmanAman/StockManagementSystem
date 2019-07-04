<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="StockManagementSystemApp.UI.StockInUI" EnableEventValidation="false" %>



<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock In</title>


</head>

<body id="page-top">
<form id="StockinForm" runat="server">

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
                                    <asp:DropDownList ID="DropDownCompanyList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownCompanyList_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:Label ID="LabelCompanyMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>

                            <div>
                                <asp:Label ID="Label3" class="col-sm-3 col-form-label" runat="server" Text="Item"></asp:Label>

                                <div>

                                    <asp:DropDownList ID="DropDownItemList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropdownItemSelectedIndexChange"></asp:DropDownList>
                                    <asp:Label ID="LabelItemMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>

                            <div>
                                <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="ReorderLevel"></asp:Label>

                                <div>

                                    <asp:TextBox ID="TextBoxReorderLevel" class="form-control " runat="server" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div>
                                <asp:Label ID="Label4" class="col-sm-3 col-form-label" runat="server" Text="AvailableQuantity"></asp:Label>

                                <div>
                                    <asp:TextBox ID="TextBoxAvailableQuantity" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>


                                </div>
                            </div>
                            <div>
                                <asp:Label ID="Label5" class="col-sm-3 col-form-label" runat="server" Text="Stock In Quantity"></asp:Label>
                                <div class="col-sm-9 custompadding">
                                    <asp:TextBox ID="TextBoxStockIn" class="form-control" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelStockInMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>

                        <div>
                            <asp:Button ID="ButtonSave" class="btn btn-primary" Width="335px" runat="server" Text="Save" OnClick="SaveButtonStockIn"/>
                        </div>
                    </div>
                    <div>
                        <div>
                            <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>

    <div>
        <div>
            <div>
                <div>
                    <a href="login.html">Logout</a>
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


                $("#StockinForm").validate({
                    rules: {
                        "<%= DropDownCompanyList.UniqueID %>": {
                            CheckDownCompanyList: true
                        },

                        "<%= DropDownItemList.UniqueID %>": {
                            CheckDropDownItemList: true
                        },

                        "<%= TextBoxStockIn.UniqueID %>": {
                            required: true
                        },
                    },
                    messages: {
                        "<%= TextBoxStockIn.UniqueID %>": {
                            required: "Please Fill Stock in Quantity"

                        },
                    },
                });

            });
    });
</script>
</body>

</html>