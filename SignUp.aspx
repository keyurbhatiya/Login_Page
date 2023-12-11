<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Creative Colorlib SignUp Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Custom Theme files -->
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet" />
    <!-- //web font -->
    
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
    
</head>
<body>
    <!-- main -->
    <form id="formSignUp" runat="server">
        <div class="auto-style1">
            <h1>Sign-Up Page</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="text" placeholder="Username" Required="true"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="text email" placeholder="Email" Required="true"></asp:TextBox>
                   <asp:TextBox ID="txtPassword" runat="server" CssClass="text" TextMode="Password" placeholder="Password" Required="true"></asp:TextBox>
                   <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="text w3lpass" TextMode="Password" placeholder="Confirm Password" Required="true"></asp:TextBox>
                   <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Password do not match" Display="Dynamic" CssClass="validation-error"></asp:CompareValidator>

                     <asp:Button ID="btnSignUp" runat="server" Text="SIGNUP" OnClick="btnSignUp_Click" />
                 
                    </div>
            </div> 
          </div>
          
        <!-- //main -->
    </form>
</body>
</html>
