<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CoffeWebSite.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="loginSheet.css" rel="stylesheet" />
</head>
<body>
  <form class="login-form" method="post" runat="server">
    <h1>Login</h1>
    <asp:TextBox ID="username" runat="server" CssClass="Iusername"></asp:TextBox>
    <label for="username" class="lblusername">Username or Email</label>
    <asp:TextBox ID="password" runat="server" CssClass="Ipassword"></asp:TextBox>
    <label for="password" class="lblpw">Password</label>
    <asp:Label ID="wronginfo" runat="server" Text="" CssClass="lblerror"></asp:Label>
    <asp:Button ID="Login" runat="server" Text="Login" CssClass="btnlogin" OnClick="Login_Click" />
    <asp:Button ID="Register" runat="server" Text="Register" CssClass="btnreg"/>
  </form>
</body>

</html>
