<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="NewsRead.aspx.cs" Inherits="DurmaPly.UserPanel.NewsRead" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-light" style="margin-top:88px">
    <asp:Literal ID="ltrl_content" runat="server"></asp:Literal>
    </div>
</asp:Content>
