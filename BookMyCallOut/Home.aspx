<%@ Page Title="" Language="C#" MasterPageFile="~/BookMyCallOut.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookMyCallOut.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            height: 245px;
        }
        .auto-style11 {
            width: 1281px;
        }
        .auto-style12 {
            height: 245px;
            width: 1281px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;</p>
    <p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewTicket.aspx">New Ticket</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ActiveTickets.aspx">Active Tickets</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/TicketHistory.aspx">Ticket History</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CancelTicket.aspx">Cancel Ticket</asp:HyperLink>
            </td>
            <td>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="84px" style="height: 26px" />
            &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style10"></td>
        </tr>
    </table>
</asp:Content>
