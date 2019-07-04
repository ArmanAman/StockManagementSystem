<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemUI.aspx.cs" Inherits="StockManagementSystemApp.UI.ItemUI" EnableEventValidation="false" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Item</title>

</head>

<body id="page-top">
<form id="Categoryform" runat="server">
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
                                <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
                                <div>
                                    <asp:DropDownList ID="DropDownCategoryList" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:Label ID="LabelCategpryMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>

                            <div>
                                <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="Company"></asp:Label>
                                <div>
                                    <asp:DropDownList ID="DropDownCompanyList" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:Label ID="LabelCompanyMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>

                            <div>

                                <asp:Label ID="Label5" class="col-sm-3 col-form-label" runat="server" Text="Item Name"></asp:Label>
                                <div>
                                    <asp:TextBox ID="TextBoxItemName" class="form-control " runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelItemMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>

                            <div>

                                <asp:Label ID="Label6" class="col-sm-3 col-form-label" runat="server" Text="Reorder"></asp:Label>
                                <div>
                                    <asp:TextBox ID="TextBoxReorder" class="form-control" runat="server" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" Text="0"></asp:TextBox>

                                </div>
                            </div>


                        </div>


                    </div>

                    <div>

                        <div>

                            <asp:Button ID="ButtonSave" runat="server" Text="Save" class="btn btn-primary" Width="128px" OnClick="SaveButtonClick"/>


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
</form>
<script>
    $(document).ready(function() {

        $("#ButtonSave").on("click",
            function() {

                $.validator.addMethod("CheckDropDownCategoryList",
                    function(value, element, param) {
                        if (value == '0')
                            return false;
                        else
                            return true;
                    },
                    "Please select a Category.");

                $.validator.addMethod("CheckDropDownCompanyList",
                    function(value, element, param) {
                        if (value == '0')
                            return false;
                        else
                            return true;
                    },
                    "Please select a Company");


                $("#Itemform").validate({
                    rules: {
                        "<%= DropDownCategoryList.UniqueID %>": {
                            CheckDropDownCategoryList: true
                        },

                        "<%= DropDownCompanyList.UniqueID %>": {
                            CheckDropDownCompanyList: true
                        },

                        "<%= TextBoxItemName.UniqueID %>": {
                            required: true
                        },
                    },
                    messages: {
                        //This section we need to place our custom validation message for each control.  
                        "<%= TextBoxItemName.UniqueID %>": {
                            required: "Please enter a Item"

                        },
                    },
                });
            });

    });
</script>
</body>

</html>