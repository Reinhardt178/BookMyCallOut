<%@ Page Title="" Language="C#" MasterPageFile="~/BookMyCallOut.Master" AutoEventWireup="true" CodeBehind="NewTicket.aspx.cs" Inherits="BookMyCallOut.NewTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 306px;
        height: 126px;
    }
        .auto-style10 {
            width: 384%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style10">
        <tr>
            <td>
                                      <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
                                          <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                          <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                          <StaticMenuStyle BackColor ="#333333" />
                                          <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                          <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                          <DynamicMenuStyle BackColor="#F7F6F3" />
                                          <DynamicSelectedStyle BackColor="#5D7B9D" />
                                          <Items>
                                              <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                                              <asp:MenuItem NavigateUrl="~/About.aspx" Text="About" Value="About"></asp:MenuItem>
                                              <asp:MenuItem NavigateUrl="~/Contact.aspx" Text="Contact" Value="Contact"></asp:MenuItem>
                                          </Items>
                                          <StaticSelectedStyle BackColor="#5D7B9D" />
                                      </asp:Menu>
                                  </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Ticket Info:
        <asp:TextBox ID="TextBox1" runat="server" Height="126px" Width="170px"></asp:TextBox>
</p>
<p>
        Ticket Priority:
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Low</asp:ListItem>
            <asp:ListItem>Medium</asp:ListItem>
            <asp:ListItem>High</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
</p>
<p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Ticket" Width="162px" />
</p>
    <asp:Panel ID="Panel1" runat="server" Height="173px">
        <asp:Label ID="Label2" runat="server" Text="TicketID"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Ticket Priority"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Ticket date"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Ticket Description"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confrim Ticket" Width="159px" />
        <br />
</asp:Panel>
<p>
</p>
</asp:Content>
