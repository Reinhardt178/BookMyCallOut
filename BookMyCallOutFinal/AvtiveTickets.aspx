<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AvtiveTickets.aspx.cs" Inherits="BookMyCallOutFinal.AvtiveTickets" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
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

    <form id="form1" runat="server">

<div class="container">
  <h2>Active Tickets</h2>
  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
</div>

        <asp:GridView ID="GridView1" runat="server" Width="581px">
            <Columns>
                <asp:BoundField HeaderText="TicketID" />
                <asp:BoundField HeaderText="Ticket Description" />
                <asp:BoundField HeaderText="Ticket Status" />
            </Columns>
        </asp:GridView>
    </form>

</body>
</html>