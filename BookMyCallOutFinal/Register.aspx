<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BookMyCallOutFinal.Register" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="StyleSheet1.css"/>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>
    

    <form id="form1" runat="server">
    

  <div class="container">
    <h1>Welcome to BookMyCallOuts Register page.</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <label for="Username"><b>Username</b></label>
    <input id="Username" runat="server" type="text" placeholder="Enter Username" name="Username" required>

    <label for="email"><b>Email</b></label>
    <input id="Email" runat="server" type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input id="Password" runat="server" type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input id="rePassword" runat="server" type="password" placeholder="Repeat Password" name="psw-repeat" required>
    <hr>
    <asp:Label ID="Label1" runat="server"></asp:Label>
      

    <button type="submit" style="background-color:darkgray; border-color:black; " runat="server" onserverclick="Registrationbtn"  class="registerbtn">Register</button>
  </div>
  
  


    </form>
  
  <div class="footer">
  <p>Website designed by FM Botes and R Miller. Visit our Facebook Page <a href="https://www.facebook.com/book.callout.5">here!</a></p>
</div>


</body>
</html>