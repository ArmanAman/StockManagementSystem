<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoginUI.aspx.cs" Inherits="StockManagementSystemApp.UI.UserLoginUI" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>


</head>

<body>
<form id="loginForm" runat="server">
    <div>
        <div >
            <div>Login</div>
            <div>

                <div>
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                        <asp:TextBox ID="TextBoxUserName" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div>
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="TextBoxPassword" placeholder="Password" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Label ID="loginMessage" runat="server" Text=""></asp:Label>
                </div>
                <asp:Button class="btn btn-primary btn-block" ID="buttonLogin" runat="server" Text="Login" OnClick="ButtonLogin"/>


            </div>
        </div>
    </div>
</form>
</body>
</html>