<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchViewUI.aspx.cs" Inherits="StockManagementSystemApp.UI.SearchViewUI" EnableEventValidation="false" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Setup Category</title>


</head>

<body id="page-top">
<form id="form1" runat="server">
    <a href="index.aspx">Stock Management</a>
    <ul>
        <li>
            <asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="Logout" OnClick="LogoutClick"/>
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
                                <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="Company"></asp:Label>

                                <div>

                                    <asp:DropDownList ID="DropDownCompanyList" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownCompanySelectedIndexChange" AutoPostBack="True"></asp:DropDownList>

                                </div>
                            </div>

                            <div>
                                <asp:Label ID="Label1" class="col-sm-3 col-form-label" runat="server" Text="Category"></asp:Label>

                                <div>
                                    <asp:DropDownList ID="DropDownCategoryList" CssClass="form-control" runat="server"></asp:DropDownList>

                                </div>
                            </div>


                        </div>


                    </div>

                    <div>

                        <div>
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Search" Width="129px" OnClick="searchButtonClick"/>

                        </div>

                    </div>
                    <div>
                        <div>
                            <asp:Label ID="LabelMessage" Visible="false" CssClass="alert alert-success" runat="server"></asp:Label>
                        </div>
                    </div>

                </div>


                <div>
                    <asp:Label ID="LabelOutput" runat="server"></asp:Label>
                    <asp:GridView ID="SearchViewGridViewList" runat="server" CssClass="table table-hover table-striped" ShowFooter="True" AutoGenerateColumns="False" Height="150px">
                        <Columns>

                            <asp:TemplateField>
                                <HeaderTemplate>Serial No.</HeaderTemplate>
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Item">
                                <ItemTemplate>
                                    <asp:Label ID="ItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Company">
                                <ItemTemplate>

                                    <asp:Label ID="CompanyName" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Available Quantity">
                                <ItemTemplate>
                                    <asp:Label ID="idAvailableQuantity" runat="server" Text='<%# Eval("AvailableQuantity") %>'></asp:Label>

                                </ItemTemplate>


                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Reorder Level">
                                <ItemTemplate>
                                    <asp:Label ID="idreorderLevele" runat="server" Text='<%# Eval("ReorderLevel") %>'></asp:Label>

                                </ItemTemplate>


                            </asp:TemplateField>


                        </Columns>
                    </asp:GridView>
                    <div>

                        <asp:Button ID="pdfbuttonid" class="btn btn-warning buttonmargin" runat="server" Text="Export to pdf" Visible="False" width="120px" Height="35px" OnClick="ButtonPdfClick"/>
                    </div>
                    <a class="btn btn-primary" href="login.html">Logout</a>

                </div>


            </div>

        </div>


    </div>
</form>


</body>

</html>