<%@ Page Title="" Language="C#" MasterPageFile="~/BookMyCallOut.Master" AutoEventWireup="true" CodeBehind="ActiveTickets.aspx.cs" Inherits="BookMyCallOut.ActiveTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" Height="31px" Width="912px">
            <Columns>
                <asp:BoundField HeaderText="TicketID" />
                <asp:BoundField HeaderText="Date Logged" />
                <asp:BoundField HeaderText="Status" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
