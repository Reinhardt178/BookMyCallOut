<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActiveTickets.aspx.cs" Inherits="BookMyCallOutFinal.AvtiveTickets" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="StyleSheet1.css"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
/*button {
  background-color: #4CAF50;
  color: white;
 padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}*/

button:hover {
  opacity: 0.8;
}-->

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
        .auto-style1 {
            width: 37%
        }
        .auto-style3 {
            width: 144px;
        }
        .auto-style4 {
            width: 144px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
    </style>
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
    <p>
        <asp:GridView ID="GridView1" runat="server" Height="165px" Width="812px">
        </asp:GridView>
    </p>            
    <asp:Panel ID="Panel1" runat="server" Height="135px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Search TicketID to delete:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Search" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confrim Cancelation" Visible="False" />
    </asp:Panel>
</div>

        <br />
        <br />
        
    </form>
    
      <div class="footer">
  <p>Website designed by FM Botes and R Miller. Visit our Facebook Page <a href="https://www.facebook.com/book.callout.5">here!</a></p>
</div>
</body>
</html>