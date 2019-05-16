<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="BookMyCallOutFinal.Tickets" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Tickets</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
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
    
  </div>
</nav>

    
<div  class="container">
  <h2>Tickets</h2>
  <button type="button" class="btn btn-primary" runat="server"  onclick="bNewTicket" >New Ticket</button>
  <button  type="button" class="btn btn-primary " runat="server" onclick="bAvtiveTicket">Active Tickets</button>
  <button type="button" class="btn btn-primary " runat="server" onclick="bTicketHistory" >Ticket History</button>
  <button  type="button" class="btn btn-primary" runat="server"onclick="bCancelTicket">Cancel Ticket</button>
</div>

</body>
</html>
