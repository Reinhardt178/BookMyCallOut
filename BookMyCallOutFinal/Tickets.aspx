<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="BookMyCallOutFinal.Tickets" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Tickets</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="StyleSheet1.css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home.aspx">BookMyCallOut</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home.aspx">Home</a></li>
      <li><a href="Tickets.aspx">Tickets</a></li>
      <li><a href="About.aspx">About</a></li>
      <li><a href="Contact.aspx">Contact</a></li>
      
    </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><button id="logout1" runat="server" onserverclick="Logout1"><span class="glyphicon glyphicon-log-in"></span> Logout</button></li>
      </ul>
    
  </div>
</nav>

    
<div  class="container">
  <h2>Tickets</h2>
    <button id="button1" style="background-color:darkgrey; border-color:black;" class="btn btn-primary" runat="server" onserverclick="NewTickets" >New Tickets</button>
    <button id="button2" style="background-color:darkgrey; border-color:black;" class="btn btn-primary" runat="server" onserverclick="ActiveTickets">Active Tickets</button>
    <button id="button3" style="background-color:darkgrey; border-color:black;" class="btn btn-primary" runat="server" onserverclick="TicketHistory" >Ticket History</button>
    
</div>

        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
      <div class="footer">
  <p>Website designed by FM Botes and R Miller. Visit our Facebook Page <a href="https://www.facebook.com/book.callout.5">here!</a></p>
</div>
</body>
</html>
