<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main-w3layouts wrapper">
            <h1>Login Page</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="text" placeholder="Username" Required="true"></asp:TextBox>
                   &nbsp;
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="text" TextMode="Password" placeholder="Password" Required="true"></asp:TextBox>
       
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
            </div> 
          </div>
    </form>
</body>
</html>
