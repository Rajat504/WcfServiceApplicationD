<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="WcfClientApplicationD.Pagination.DeleteEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Employee</title>
    <style>
        body {
            width: 100%;
            background-color: darkorange;
        }

        page-wrapper {
            width: 100%;
            background-color: lightseagreen;
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

        menu {
            height: 50px;
            width: 99%;
            padding: 5%;
            color: White;
            font-family: Segoe UI;
            font-size: 20px;
            clear: both;
            float: left;
            text-align: left;
        }

        .button {
            background-color: green;
        }

        .refer {
            background-color: none;
        }

        .auto-style2 {
            width: 99px;
        }

        .auto-style3 {
            height: 640px;
        }
    </style>
</head>
<body>

    <header>
        <span>Curd Operation Using Wcf
        </span>
    </header>
    <form id="form1" runat="server" class="auto-style3">

        <div>

            <table>
                <tr>
                    <td>
                        <asp:Label CssClass="button" ID="Label1" runat="server" Text="AddEmployee"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label CssClass="button" ID="Label2" runat="server" Text="UPDATEEMPLOYEE"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label CssClass="button" ID="Label3" runat="server" Text="DELETEEMPLOYEE"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label CssClass="button" ID="Label4" runat="server" Text="DISPLAYEMPLOYEE"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                </tr>
            </table>
        </div>


        <table>
            <tr>

                <td class="auto-style2">
                    <asp:Label CssClass="refer" ID="EmployeeIdLabel" runat="server" Text="EmployeeID"></asp:Label>
                </td>

                <td>
                    <asp:TextBox CssClass="refer" ID="EmployeeID" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSave" runat="server" Text="DELETE" CssClass="button" OnClick="btnSave_Click" Width="145px" />

                </td>
            </tr>
        </table>

    </form>
</body>
</html>
