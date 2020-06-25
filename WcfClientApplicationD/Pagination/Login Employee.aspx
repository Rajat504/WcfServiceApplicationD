<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Employee.aspx.cs" Inherits="WcfClientApplicationD.Pagination.Login_Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Employee Details</title>
    <style>
        body {
            width: 100%;
            background-color: darkorange;
        }

        page-wrapper {
            width: 100%;
            background-color: green;
            overflow: hidden;
        }

        header {
            height: 60px;
            padding: 2%;
            background-color: green;
            color: White;
            font-family: Verdana;
            font-size: 30px;
            text-align: center;
        }

        button {
            background-color: green;
        }

        .auto-style1 {
            width: 143px;
        }

        .auto-style2 {
            width: 89px;
        }
    </style>
</head>
<body>
    <h1 style="color: #069">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WCF LOGIN EMPLOYEE DETAILS</h1>
    <form id="form2" runat="server">
        <table style="font-family: Arial">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="EmailLabel" runat="server" Text="EmailID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="refer" ID="Email" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="refer" ID="Password" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Button CssClass="button" ID="LoginButton" runat="server" Text="Login" OnClick="Login_Button_Click" Width="87px" />
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
