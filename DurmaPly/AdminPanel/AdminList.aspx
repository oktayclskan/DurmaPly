<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="DurmaPly.AdminPanel.AdminList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div style="margin-top: 75px">
            <asp:ListView ID="lv_Admin" runat="server" OnItemCommand="lv_Admin_ItemCommand">
                <layouttemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>Adı</td>
                            <td>Soyadı</td>
                            <td>Mail</td>
                            <td>Telefon No</td>
                            <td>Düzenle</td>
                            <td>Sil</td>
                        </tr>
                        <tbody>
                            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </tbody>
                    </table>
                </layouttemplate>
                <itemtemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Surname") %></td>
                        <td><%# Eval("Mail") %></td>
                        <td><%# Eval("Phone") %></td>
                        
                        <td><a href="AdminUpdate?gid=<%# Eval("ID") %>" class="btn btn-primary">Düzenle</a></td>
                        <td>
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="dlt">Sil</asp:LinkButton>
                        </td>
                    </tr>
                </itemtemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
