<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="DurmaPly.UserPanel.deneme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="denemehs container">
        <section>
            <div class="row d-flex justify-content-center align-items-center h-75">
                <div class="col-md">
                    <div class="card card-registration my-4 bg-light">
                        <div class="row g-0">
                            <div class="col-sm-6 d-xl-block">
                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                    alt="Sample photo" class="img-fluid"
                                    style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                            </div>
                            <div class="col-md-6">
                                <div class="card-body p-md-5 text-black">
                                    <h3 class="mb-5 text-uppercase">Mehal Kayıt Sayfası</h3>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="tb_name" runat="server" CssClass="form-control" placeholder="Adınız"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="tb_surname" runat="server" CssClass="form-control" placeholder="Soyadınız"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="tb_username" runat="server" CssClass="form-control" placeholder="Kullanıcı Adınız"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="tb_eMail" runat="server" CssClass="form-control" placeholder="E-Mail Adresiniz"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <asp:TextBox ID="tb_password" runat="server" CssClass="form-control" placeholder="Şifreniz" type="password"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <asp:TextBox ID="txtBirthDate" runat="server" ReadOnly="true"></asp:TextBox>
                                    <asp:Calendar ID="calBirthDate" runat="server" Visible="false"></asp:Calendar>

                                    <div class="d-flex justify-content-end pt-3">
                                        <button type="button" class="btn btn-light btn-lg">Reset all</button>
                                        <button type="button" class="btn btn-warning btn-lg ms-2">Submit form</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
