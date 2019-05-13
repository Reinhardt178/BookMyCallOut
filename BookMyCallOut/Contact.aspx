<%@ Page Title="" Language="C#" MasterPageFile="~/BookMyCallOut.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BookMyCallOut.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 719px;
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
        Contact Us:</p>
    <p>
        Tel: 061-239090</p>
    <p>
        email: <a href="mailto:info@bookmycallout.com">info@bookmycallout.com</a></p>
    <p>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.facebook.com/book.callout.5">Facebook</asp:HyperLink>
    </p>
</asp:Content>
