<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayEmployee.aspx.cs" Inherits="WcfClientApplicationD.Pagination.DisplayEmployee" %>

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

        .auto-style2 {
            height: 804px;
        }

        .auto-style3 {
            width: 222px;
        }

        .auto-style4 {
            width: 309px;
        }

        .auto-style5 {
            width: 288px;
        }

        .auto-style6 {
            width: 262px;
        }

        .auto-style7 {
            width: 317px;
        }

        .auto-style8 {
            height: 19px;
        }

        .auto-style9 {
            width: 288px;
            height: 217px;
        }

        .auto-style10 {
            width: 262px;
            height: 217px;
        }

        .auto-style11 {
            width: 317px;
            height: 217px;
        }

        .auto-style12 {
            height: 217px;
        }

        .auto-style13 {
            width: 288px;
            height: 128px;
        }

        .auto-style14 {
            width: 262px;
            height: 128px;
        }

        .auto-style15 {
            width: 317px;
            height: 128px;
        }

        .auto-style16 {
            height: 128px;
        }

        .auto-style25 {
            width: 288px;
            height: 164px;
        }

        .auto-style26 {
            width: 262px;
            height: 164px;
        }

        .auto-style27 {
            width: 317px;
            height: 164px;
        }

        .auto-style28 {
            height: 164px;
        }

        .auto-style29 {
            width: 288px;
            height: 166px;
        }

        .auto-style30 {
            width: 262px;
            height: 166px;
        }

        .auto-style31 {
            width: 317px;
            height: 166px;
        }

        .auto-style32 {
            height: 166px;
        }

        .auto-style33 {
            width: 288px;
            height: 134px;
        }

        .auto-style34 {
            width: 262px;
            height: 134px;
        }

        .auto-style35 {
            width: 317px;
            height: 134px;
        }

        .auto-style36 {
            height: 134px;
        }

        .auto-style41 {
            width: 288px;
            height: 129px;
        }

        .auto-style42 {
            width: 262px;
            height: 129px;
        }

        .auto-style43 {
            width: 317px;
            height: 129px;
        }

        .auto-style44 {
            height: 129px;
        }

        .auto-style45 {
            width: 288px;
            height: 124px;
        }

        .auto-style46 {
            width: 262px;
            height: 124px;
        }

        .auto-style47 {
            width: 317px;
            height: 124px;
        }

        .auto-style48 {
            height: 124px;
        }

        .auto-style49 {
            width: 288px;
            height: 147px;
        }

        .auto-style50 {
            width: 262px;
            height: 147px;
        }

        .auto-style51 {
            width: 317px;
            height: 147px;
        }

        .auto-style52 {
            height: 147px;
        }

        .auto-style53 {
            width: 288px;
            height: 130px;
        }

        .auto-style54 {
            width: 262px;
            height: 130px;
        }

        .auto-style55 {
            width: 317px;
            height: 130px;
        }

        .auto-style56 {
            height: 130px;
        }

        .auto-style57 {
            height: 63px;
        }
    </style>
</head>
<body>
    <header class="auto-style57">
        <span>Curd Operation Using Wcf
        </span>
    </header>
    <form id="form1" runat="server" class="auto-style2">
        <p class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EMPLOYEE RECORDS DISPLAYED!!!!!!</p>
       <asp:GridView ID="grdEmployees" runat="server">  
       <AlternatingRowStyle BackColor="White" />  
       <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />  
   </asp:GridView>  
    </form>
</body>
</html>



