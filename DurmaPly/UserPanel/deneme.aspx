<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="DurmaPly.UserPanel.deneme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:100px">
        <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="text-decoration:underline;">
            Şifremi unuttum
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true" data-mdb-backdrop="true" data-mdb-keyboard="true">
            <div class="modal-dialog" style="width: 300px;">
                <div class="modal-content text-center">
                    <div class="modal-header h5 text-white bg-primary justify-content-center">
                        ŞİFRE SIFIRLAMA EKRANI
                    </div>
                    <div class="modal-body px-5">
                        <p class="py-2">
                           Şifrenizi hatırlamıyorsanız, yeni şifre belirlemek için tuşlama yapınız.
                        </p>
                         <div class="form-outline">
                            <asp:TextBox ID="tb_resetMail" runat="server" placeholder="E-Mail Adresinizi Giriniz" CssClass="form-control my-3"></asp:TextBox>
                        </div>
                        <div class="form-outline">
                            <asp:TextBox ID="tb_resetPassword" type="password" runat="server" placeholder="Şifre Giriniz" CssClass="form-control my-3"></asp:TextBox>
                        </div>
                        <asp:LinkButton ID="lbtn_resetPassword" runat="server" CssClass="btn btn-primary w-100">Şifreyi Yenile</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
