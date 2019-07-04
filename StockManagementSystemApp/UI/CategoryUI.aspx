<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryUI.aspx.cs" Inherits="StockManagementSystemApp.UI.CategoryUI" EnableEventValidation="false" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Category</title>


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

        <!---main content--->
        <div>

            <div>
                <div>
                    <div>
                        <div>
                            <div>
                                <asp:Label ID="Label2" class="col-sm-4 col-form-label" runat="server" Text="Category Name"></asp:Label>

                                <div>

                                    <asp:TextBox ID="TextBoxName" class="form-control" runat="server"></asp:TextBox>
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
                            <asp:Label ID="LabelMessage" Visible="false" runat="server"></asp:Label>
                        </div>
                    </div>

                    <asp:GridView ID="GridViewCategory" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>Serial No.</HeaderTemplate>
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <%#Eval("CategoryName") %>
                                    <asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("CategoryID") %>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" NavigateUrl="CategoryUI.aspx" OnClick="LinkButton1_Click">Update</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>