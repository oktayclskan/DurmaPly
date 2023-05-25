<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="DurmaPly.AdminPanel.AdminAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:80px">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <h1>Admin Ekle</h1>
                    <asp:Panel ID="pnl_succes" runat="server" Visible="false">
                        <div class="alert alert-success" role="alert">
                            Admin Başarıyla Eklendi
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl_error" runat="server" Visible="false">
                        <div class="alert alert-danger" role="alert">
                            <asp:Label ID="lbl_eror" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="col mt-5">
                        <asp:TextBox ID="tb_Name" CssClass="form-control mt-3" runat="server" placeholder="İsim"></asp:TextBox>
                        <div>
                            <div>
                                <asp:TextBox ID="tb_Surname" CssClass="form-control mt-3" runat="server" placeholder="Soyisim"></asp:TextBox>
                            </div>
                            <asp:TextBox ID="tb_Mail" CssClass="form-control mt-2" runat="server" placeholder="Email@"></asp:TextBox>
                            <div>
                                <asp:TextBox ID="tb_adminPassword" CssClass="form-control mt-3" runat="server" TextMode="Password" placeholder="Şifre"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="tb_phone" TextMode="Number" CssClass="form-control mt-3" runat="server" placeholder="Telefon No"></asp:TextBox>
                            </div>

                            <div class="mb-3 mt-2">
                                <asp:LinkButton ID="btn_adminAdd" runat="server" CssClass="btn btn-success d-block" OnClick="btn_adminAdd_Click">Ekle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
