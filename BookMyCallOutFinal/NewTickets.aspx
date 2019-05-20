<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewTickets.aspx.cs" Inherits="BookMyCallOutFinal.NewTickets" %>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StyleSheet1.css"/>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>


<h3>Book New Ticket</h3>

<div class="container">
    <form id="form1" runat="server">
    <label for="fname">Name:</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

   

    <label for="priority">Priority</label>
    <select id="priority" runat="server" name="priority">
      <option value="Low">Low</option>
      <option value="Medium">Medium</option>
      <option value="High">High</option>
      <option value="Imediate">Imediate!!!</option>
    </select>

    <label for="problemDescription">Problem Description</label>
    <textarea id="problemDescription" runat="server" name="problemDescription" placeholder="Write something.." style="height:200px"></textarea>

    <button type="button" runat="server" onserverclick="Submits" style="background-color:dodgerblue">Submit</button>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</div>
      <div class="footer">
  <p>Website designed by FM Botes and R Miller. Visit our Facebook Page <a href="https://www.facebook.com/book.callout.5">here!</a></p>
</div>
</body>
</html>
