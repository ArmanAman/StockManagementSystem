<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyUI.aspx.cs" Inherits="StockManagementSystemApp.UI.CompanyUI" EnableEventValidation="false" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Company</title>


</head>

<body id="page-top">
<form id="Companyform" runat="server">


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

                                <asp:Label ID="Label1" class="col-sm-3 col-form-label" runat="server" Text="CompanyName"></asp:Label>

                                <div>

                                    <asp:TextBox ID="TextBoxNameCompany" class="form-control" runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelMessageError" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>

                        <div>

                            <asp:Button ID="ButtonSave" runat="server" Text="Save" class="btn btn-primary" Width="128px" OnClick="saveButtonClick"/>
                        </div>
                    </div>
                    <div>
                        <div>
                            <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <div>
                    <asp:GridView ID="GridViewCompany" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Seriel No">
                                <ItemTemplate>
                                    <%#Eval("SerielNo") %>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <%#Eval("CompanyName") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div>
                <div>
                    <a href="login.html">Logout</a>
                </div>
            </div>

        </div>

    </div>
</form>
</body>

</html>