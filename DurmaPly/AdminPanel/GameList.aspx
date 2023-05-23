<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="GameList.aspx.cs" Inherits="DurmaPly.AdminPanel.GameList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div style="margin-top:75px">

            <asp:ListView ID="lv_game" runat="server">
                <LayoutTemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>Oyun Adı</td>
                            <td>İçerik</td>
                            <td>Yayın Tarihi</td>
                            <td>İndirimsiz Fiyat</td>
                            <td>İndirimli Fiyat</td>
                            <td>Resim</td>
                            <td>Video</td>
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
                        <td><%# Eval("Content") %></td>
                        <td><%# Eval("DateTime") %></td>
                        <td><%# Eval("noDiscount") %></td>
                        <td><%# Eval("DiscountRate") %></td>
                         <td>
                            <img src="../AdminPanel/Images/<%# Eval("img") %>" width="30" />
                        </td>
                        <td><%# Eval("Video") %></td>
                        <td> 
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" runat="server">Sil</asp:LinkButton>
                        </td>
                        <td><a href="#" class="btn btn-primary">Düzenle</a></td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
