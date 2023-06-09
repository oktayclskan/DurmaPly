﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="PublisherList.aspx.cs" Inherits="DurmaPly.AdminPanel.PublisherList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div style="margin-top:75px">
            <asp:ListView ID="lv_publisher" runat="server" OnItemCommand="lv_publisher_ItemCommand">
                <LayoutTemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>Yayincı Adı</td>
                            <td>Resim</td>
                            <td>URL</td>
                            <td>Sil</td>
                            <td>Düzenle</td>
                        </tr>
                        <tbody>
                            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </tbody>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Name") %></td>
                        <td>
                            <img src="../AdminPanel/Images/<%# Eval("Img") %>" width="30" />
                        </td>
                        <td><%# Eval("Url") %></td>
                        <td> 
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" CommandArgument='<%# Eval("ID") %>' CommandName="Dlt" runat="server">Sil</asp:LinkButton>
                        </td>
                        <td><a href="PublisherUpdate.aspx?sid=<%# Eval("ID") %>" class="btn btn-primary">Düzenle</a></td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
