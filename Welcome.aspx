<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #3498db; /* Blue */
            font-size: 36px;
            margin-bottom: 20px;
        }

        h1 span {
            color: #e74c3c; /* Red */
            font-size: 42px;
        }

        .logout-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #2ecc71; /* Green */
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="container">
            <h1>Welcome, <span><%= Session["Username"] %></span>!</h1>
            <asp:Button ID="logoutBtn" runat="server" Text="Logout" CssClass="logout-btn" OnClick="logoutBtn_Click" />

        </div>
    </form>
   
</body>
</html>
