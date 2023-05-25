<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="DurmaPly.AdminPanel.NewsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div style="margin-top:75px">
            <asp:ListView ID="lv_news" runat="server">
                <LayoutTemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>Haber Başlık</td>
                            <td>Yayın Tarihi</td>
                            <td>Görüntülenme</td>
                            <td>Resim</td>
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
                        <td><%# Eval("Title") %></td>
                        <td><%# Eval("NewsDateTime") %></td>
                        <td><%# Eval("NewsViews") %></td>
                        <td>
                            <img src="../AdminPanel/Images/<%# Eval("Img") %>" width="70" />
                        </td>
                        <td> 
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" runat="server">Sil</asp:LinkButton>
                        </td>
                        <td><a href="NewsUpdate.aspx?nid=<%# Eval("ID") %>" class="btn btn-primary">Düzenle</a></td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
