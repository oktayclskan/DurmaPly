<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="CommentList.aspx.cs" Inherits="DurmaPly.AdminPanel.CommentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
        <div style="margin-top: 75px">
            <asp:ListView ID="lv_Comment" runat="server" OnItemCommand="lv_Comment_ItemCommand">
                <LayoutTemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>Kullanıcı Adı</td>
                            <td style="text-align:center;">İçerik</td>
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
                        <td style="text-align:center;"><%# Eval("Content") %></td>
                        <td>
                            <img src="../AdminPanel/Images/<%# Eval("img") %>" width="80" />
                        </td>
                       
                        <td>
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="dlt">Sil</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
