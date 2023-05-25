<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminUpdate.aspx.cs" Inherits="DurmaPly.AdminPanel.AdminUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 75px">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <h1>Admin Ekle</h1>
                    <asp:Panel ID="pnl_succes" runat="server" Visible="false">
                        <div class="alert alert-success" role="alert">
                            Admin Başarıyla Güncellendi
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl_error" runat="server" Visible="false">
                        <div class="alert alert-danger" role="alert">
                            <asp:Label ID="lbl_eror" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="col">
                        <asp:TextBox ID="tb_name" CssClass="form-control mt-2" runat="server" placeholder="İsim"></asp:TextBox>
                        <div>
                            <asp:TextBox ID="tb_Surname" CssClass="form-control mt-2" runat="server" placeholder="Soyisim"></asp:TextBox>
                            <div>
                                <asp:TextBox ID="tb_Mail" CssClass="form-control mt-2" runat="server" TextMode="Email" placeholder="Mail Adresi"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="tb_AdminPassword" CssClass="form-control mt-2" runat="server" TextMode="Password" placeholder="Şifrenizi Lütfen Tekrar Giriniz"></asp:TextBox>
                            </div>
                             <div>
                                <asp:TextBox ID="tb_phone" CssClass="form-control mt-2" runat="server" TextMode="Number" placeholder="Telefon no"></asp:TextBox>
                            </div>
                            
                            <div class="mb-3 mt-2">
                                <asp:LinkButton ID="btn_AdminUpdate" runat="server" CssClass="btn btn-success d-block" OnClick="btn_AdminUpdate_Click">Güncelle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
