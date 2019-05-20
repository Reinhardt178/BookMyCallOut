<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotLoggedIn.aspx.cs" Inherits="BookMyCallOutFinal.NotLoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NotLoggedIn</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            You are not logged-in.Please continue to
            <asp:HyperLink ID="HyperLink1" href="Home.aspx" runat="server">Home</asp:HyperLink>
&nbsp;and login!!</div>
    </form>
</body>
</html>
