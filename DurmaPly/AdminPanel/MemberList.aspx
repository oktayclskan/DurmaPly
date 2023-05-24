<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" Inherits="DurmaPly.AdminPanel.MemberList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div style="margin-top: 75px">

            <asp:ListView ID="lv_Member" runat="server" OnItemCommand="lv_Member_ItemCommand">
                <LayoutTemplate>
                    <table class="table table-dark table-hover">
                        <tr>
                            <td>ID</td>
                            <td>İsim</td>
                            <td>Soyisim</td>
                            <td>Kullanıcı Adı</td>
                            <td>Mail</td>
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
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Surname") %></td>
                        <td><%# Eval("UserName") %></td>
                        <td><%# Eval("Mail") %></td>
                        <td>
                            <asp:LinkButton ID="btn_dlt" CssClass="btn btn-danger" CommandArgument='<%# Eval("ID") %>' CommandName="Dlt" runat="server">Üye Sil</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
