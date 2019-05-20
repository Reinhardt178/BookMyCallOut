<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BookMyCallOutFinal.About" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>About</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="StyleSheet1.css"/>
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
    <button type="button"  style="background-color:darkgray; border-color:black; " class="btn btn-danger navbar-btn" onclick="document.getElementById('id01').style.display='block'" runat="server" >Login</button>
  </div>
</nav>
  
<div class="container">
  <h1>About Us!</h1>
  <p>This is a ticketing system that is used typically for booking callouts for any service providing compony. </p> 
  <p>Founded: 03/05/2019</p>           
</div>
      <div class="footer">
  <p>Website designed by FM Botes and R Miller. Visit our Facebook Page <a href="https://www.facebook.com/book.callout.5">here!</a></p>
</div>
</body>
</html>
