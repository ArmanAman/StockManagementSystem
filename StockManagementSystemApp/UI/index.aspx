<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StockManagementSystemApp.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Stock Management</title>


</head>
<body>
<form id="form1" runat="server">


    <div >
        <div>
            <a href="index.aspx">Stock Management</a>
        </div>
        <div>
            <ul>
                <li>
                    <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Logout" OnClick="LogoutClick"/>
                </li>
            </ul>
        </div>
    </div>


    <div>
        <div>
            <h1>Stock Management System</h1>
        </div>

        <div>


            <%-- Category Setup --%>
            <div>
                <div>
                    &nbsp;
                    <div class="card-body text-center custompadding">
                        <h4 class="card-title">Category Setup</h4>
                        <asp:Button ID="ButtonCategory" class="btn btn-primary" runat="server" Text="Setup Category" OnClick="CategoryButtonClick"/>
                    </div>
                </div>
            </div>


            <%-- Company Setup --%>
            <div>
                <div>
                    &nbsp;
                    <div class="card-body text-center custompadding">
                        <h4 class="card-title">Company Setup</h4>
                        <asp:Button ID="ButtonCompany" class="btn btn-primary" runat="server" Text="Setup Company" OnClick="ButtonCompany_Click"/>
                    </div>
                </div>
            </div>

            <%-- Item Setup --%>
            <div>
                <div>
                    &nbsp;
                    <div>
                        <h4>Item Setup</h4>
                        <asp:Button ID="ButtonItem" class="btn btn-primary" runat="server" Text="Setup Item" OnClick="ButtonItem_Click"/>
                    </div>
                </div>

            </div>

            <%-- Stock IN --%>
            <div>
                <div>
                    &nbsp;
                    <div>
                        <h4>Stock IN</h4>
                        <asp:Button ID="ButtonStockIn" class="btn btn-primary" runat="server" Text="Stock In" OnClick="ButtonStockIn_Click"/>
                    </div>
                </div>
            </div>

            <%-- Stock Out --%>
            <div>
                <div>

                    &nbsp;
                    <div>
                        <h4>Stock Out</h4>
                        <asp:Button ID="ButtonstockOutQuantity" class="btn btn-primary" runat="server" Text="Stock Out" OnClick="ButtonstockOutQuantity_Click"/>
                    </div>
                </div>
            </div>

            <%-- Search & View Items Summary --%>
            <div>
                <div>
                    &nbsp;
                    <div class="card-body text-center custompadding">
                        <h4 class="card-title">Search & View Items Summary</h4>
                        <asp:Button ID="ButtonSearchview" class="btn btn-primary" runat="server" Text="Search View" OnClick="ButtonSearchview_Click"/>
                    </div>
                </div>
            </div>

            <%-- View Sales Between Two Dates --%>

            <div>
                <div>
                    &nbsp;
                    <div class="card-body text-center custompadding">
                        <h4 class="card-title">View Sales Between Two Dates</h4>
                        <asp:Button ID="viewSellsButton" class="btn btn-primary" runat="server" Text="View Sell" OnClick="viewSellsButton_Click"/>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>
</body>
</html>