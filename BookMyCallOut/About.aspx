<%@ Page Title="" Language="C#" MasterPageFile="~/BookMyCallOut.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BookMyCallOut.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 856px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10">&nbsp;</td>
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
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Here we strive to give you the ultimate ticket booking experience.</p>
    <p>
        &nbsp;</p>
</asp:Content>
