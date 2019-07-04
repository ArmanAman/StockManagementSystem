<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesDateUI.aspx.cs" Inherits="StockManagementSystemApp.UI.ViewSalesDateUI" EnableEventValidation="false" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Sales Date</title>
</head>

<body id="page-top">
<form id="form1" runat="server">
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
                                <asp:Label ID="Label3" class="col-sm-3 col-form-label" runat="server" Text="From Date"></asp:Label>


                                <div>
                                    <asp:TextBox ID="FromDateTextboxId" class="form-control" runat="server"  Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>


                                </div>
                            </div>

                            <div>
                                <asp:Label ID="Label2" class="col-sm-3 col-form-label" runat="server" Text="To Date"></asp:Label>
                                <div>
                                    <asp:TextBox ID="ToDateTextboxId" CssClass="form-control" runat="server"  Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>


                                </div>
                            </div>
                        </div>


                    </div>

                    <div>

                        <div>

                            <asp:Button ID="Button2" runat="server" class="btn btn-primary" OnClick="SearchButtonClick" Width="129px" Text="Search"/>
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
                    <asp:GridView ID="SearchSellGridViewList" runat="server" CssClass="table table-hover table-striped" ShowFooter="True" AutoGenerateColumns="False" Height="150px">
                        <Columns>

                            <asp:TemplateField>
                                <HeaderTemplate>Serial No.</HeaderTemplate>
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Company Name">
                                <ItemTemplate>
                                    <asp:Label ID="CompanyNameID" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Item">
                                <ItemTemplate>
                                    <asp:Label ID="ItemName" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Sale Quantity">
                                <ItemTemplate>

                                    <asp:Label ID="salequantityid" runat="server" Text='<%# Eval("SaleQuantity") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <div>

                        <asp:Button ID="pdfbuttonid" class="btn btn-warning buttonmargin" runat="server" Text="Export to pdf" Visible="False" Width="120px" Height="35px" OnClick="ButtonPdfClick"/>
                    </div>
                    <a href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    $(document).ready(function() {
        $("#<%= FromDateTextboxId.ClientID %>").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });

        $("#<%= ToDateTextboxId.ClientID %>").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayHighlight: true
        });
    });

</script>

</body>

</html>