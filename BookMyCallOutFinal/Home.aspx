<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookMyCallOutFinal.Home" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="StyleSheet1.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;
      background-color:darkgrey; 
}

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
</style>
</head>
<body>

    <form id="form1" runat="server">
<img style="background-size:50px" src="BookMyCallOutLOGO2.png" alt="Avatar" class="avatar">
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
    <button type="button" id="loginBtn2" style="background-color:darkgray; border-color:black; " class="btn btn-danger navbar-btn" onclick="document.getElementById('id01').style.display='block'" runat="server" >Login</button>
  </div>
</nav>


<!--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>-->

<div id="id01" class="modal">
  
 
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="BookMyCallOutLOGO2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" runat="server" id="textUser" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" runat="server" id="textPass" placeholder="Enter Password" name="psw" required>
        
      <button  type="button" runat="server" id="loginBtn" onserverclick="BtnLogin">Login</button>
      
        <label type="label" runat="server" id="errorLabel" name="remember">
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" style="background-color:darkgray; border-color:black; " onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Register <a href="Register.aspx">here!</a></span>
    </div>
  
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

      <div class="footer">
  <p>Website designed by FM Botes and R Miller. Visit our Facebook Page <a href="https://www.facebook.com/book.callout.5">here!</a></p>
</div>
        <asp:Panel ID="Panel1" runat="server" Height="229px">
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Copperplate Gothic Bold" ForeColor="#333333" Font-Size="XX-Large"></asp:Label>
            <br />
        </asp:Panel>
    </form>
      </body>
</html>
