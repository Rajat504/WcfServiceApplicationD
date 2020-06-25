<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="WcfClientApplicationD.Pagination.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD Employee</title>
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
        .auto-style1 {
            height: 647px;
        }
    </style>
</head>
<body>
    <header>
        <span>Curd Operation Using Wcf
        </span>
    </header>
    <form id="form1" runat="server" class="auto-style1">
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
                         <asp:Label CssClass="button" ID="Label4" runat="server" Text="SEARCHEMPLOYEE"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:Label CssClass="refer" ID="EmployeeIdLabel" runat="server" Text="Employee Id"></asp:Label>
                    </td>
                     <td>
                        <asp:TextBox CssClass="refer" ID="EmployeeID" runat="server"></asp:TextBox>
                         
                    </td>
                    
                   
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label  CssClass="refer"  ID="EmployeeNameLabel" runat="server" Text="EmployeeName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="refer" ID="EmployeeName" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="EmployeeEmailLabel" runat="server" Text="Employee Email"></asp:Label>
                    </td>
                    
                    <td>
                        <asp:TextBox CssClass="refer" ID="EmployeeEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PhoneNumber" runat="server" Text="Employee Number"></asp:Label>
                    </td>
                    
                    <td>
                        <asp:TextBox CssClass="refer" ID="Phone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>

                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
                    </td>
                    
                    <td>
                        <asp:TextBox CssClass="refer" ID="Gender" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                     

                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    </td>
                         
                    
                    <td>
                        <asp:TextBox CssClass="refer" ID="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button" OnClick="btnSave_Click" Width="81px" />
                        <asp:Button ID="bntReset" runat="server" Text="Reset" CssClass="button"
                            OnClick="bntReset_Click" Width="88px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
