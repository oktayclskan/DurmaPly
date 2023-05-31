<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="NewsRead.aspx.cs" Inherits="DurmaPly.UserPanel.NewsRead" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-light" style="margin-top: 88px">
        <div class="title">
            <h2>
                <asp:Literal ID="ltrl_title" runat="server"></asp:Literal>
            </h2>
            <div class="text-secondary mt-2">
                <span> <asp:Literal ID="ltrl_dateTime" runat="server"></asp:Literal>  </span>
            </div>
            
        </div>
        <div style="text-align:center;">
            <asp:Image ID="img_news" runat="server" CssClass=" w-50" />
        </div>
        <div class="mt-3 text-secondary">
        <asp:Literal ID="ltrl_content" runat="server" ></asp:Literal>
        </div>
    </div>
</asp:Content>
