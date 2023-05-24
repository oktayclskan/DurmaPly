<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="CommentList.aspx.cs" Inherits="DurmaPly.AdminPanel.CommentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
        <div style="margin-top: 75px">

            <asp:ListView ID="lv_Comment" runat="server">
                <LayoutTemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>Kullanıcı Adı</td>
                            <td>İçerik</td>
                            <td>Resim</td>
                            <td>Sil</td>
                        </tr>
                        <tbody>
                            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </tbody>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("MemberName") %></td>
                        <td><%# Eval("Content") %></td>
                        <td>
                            <img src="../AdminPanel/Images/<%# Eval("img") %>" width="30" />
                        </td>
                       
                        <td>
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" runat="server">Sil</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
