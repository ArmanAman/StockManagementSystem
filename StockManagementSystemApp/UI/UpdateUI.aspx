<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateUI.aspx.cs" Inherits="StockManagementSystemApp.UI.UpdateUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">

    <div>

        <div>
            <div>
                <div>
                    <div>

                        <h4 class="modal-title">Update Category</h4>
                        <button class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div>

                        <div>
                            <label for="inputUserName">Category Name</label>
                            <asp:TextBox class="form-control" ID="TextBoxCategoryName" runat="server"></asp:TextBox>
                            <asp:Label ID="messagelevel" runat="server" Text=""></asp:Label>
                        </div>


                    </div>
                    <div>
                        <asp:Button ID="ButtonUpdate" class="btn btn-primary" runat="server" Text="Update" OnClick="ButtonUpdate_Click"/>
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


    </div>
</form>
</body>
</html>