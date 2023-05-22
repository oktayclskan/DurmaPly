<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="DurmaPly.AdminPanel.deneme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rpdeneme" runat="server">
        <ItemTemplate>
            <video autoplay muted>
                <source class="video w-100 h-100 mb-3" src="../AdminPanel/Video/<%# Eval("Video") %>"  />
            </video>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
