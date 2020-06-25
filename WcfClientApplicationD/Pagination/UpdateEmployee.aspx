<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="WcfClientApplicationD.Pagination.UpdateEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Employee</title>
    <style>
          body{
            width:100%;
            background-color:orange;
        }
        pagewrapper{
            width:100%;
            background-color:darkseagreen;
            overflow:hidden;
        }
        header{
            height:70px;
            padding:3%;
            background-color:darkgreen;
            color:whitesmoke;
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            font-size:30px;
        }
        menu{
             height: 100px;
            width: 100%;
            padding: 2%;
            color: White;
            font-family: Segoe UI;
            font-size: 50px;
            clear: both;
            float: left;
            text-align: left;
        }
        .button {
            background-color: darkgreen;
            
        }

        .refer {
            background-color: none;
        }

        .auto-style1 {
            width: 748px;
        }

        </style>
</head>
<body style="height: 765px">
    <header>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           CURD OPERATION USING WCF
    </header>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                    <td class="auto-style1">
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
                        <asp:Button ID="btnSave" runat="server" Text="UPDATE" CssClass="button" OnClick="btnSave_Click" Width="107px" />
                        <asp:Button ID="bntReset" runat="server" Text="CANCEL" CssClass="button"
                            OnClick="bntReset_Click" Width="134px" />
                    </td>
                </tr>
                  
                 </table>
        </div>
    </form>
</body>
</html>
