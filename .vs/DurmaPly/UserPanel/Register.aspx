<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DurmaPly.UserPanel.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-6.3.0-web/css/all.min.css" rel="stylesheet" />
    <link href="Css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <a href="Index.aspx"><i class="fa-solid fa-xmark float-end exit fixed-top" style="width: 35px"></i></a>
        <div class="container">
            <div class="carrierr">
                <img src="Images/Okito.jpg" class="backImg" />
                <i style="color: black" class="fa-solid fa-xmark justify-content-end"></i>
                <div class="contentR">
                    <div class="head">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="mt-2">Kayıt Ol</h4>
                            </div>
                        </div>
                    </div>
                    <div class="main mt-1">
                        <div class="row">
                            <h6>Email</h6>
                            <asp:TextBox ID="tb_mail" runat="server" CssClass="input  bg-dark text-bg-dark"></asp:TextBox>
                        </div>
                        <div class="row">
                            <h6>Kullanıcı Adı</h6>
                            <asp:TextBox ID="tb_UserName" runat="server" CssClass="bg-dark  input"></asp:TextBox>
                            <p class="text-white bg-dark mt-1">
                                Yalnızca harf ve rakam içermeli, 3 ile 16 karakter arasında olmalı
                            </p>
                        </div>
                        <div class="row">
                            <h6>Şifre</h6>
                            <asp:TextBox ID="tb_Password" runat="server" CssClass="bg-dark  input"></asp:TextBox>
                            <p class="text-white bg-dark mt-1">
                                En az 1 rakam, 1 küçük harf ve 1 büyük harf içermeli ve en az 8 karakter uzunluğunda olmalı
                            </p>
                        </div>
                        <div class="text-light">
                            <asp:CheckBox CssClass="form-check m-2" Text="Bildirim emaillarını al" runat="server" />
                        </div>
                         <div class="text-light">
                            <asp:CheckBox CssClass="form-check m-2" Text="Haber bültenine abone ol" runat="server" />
                             <div class="row">
                                 <p class="text-white bg-black   mt-1">
                              Hesap oluşturduğunuzda Kullanım şartlarını kabul etmiş sayılırsınız.
                            </p>
                             </div>
                        </div>

                        <div class="row">
                            <asp:LinkButton ID="lbtn_login" runat="server" CssClass="btnlogin mt-2">Hesap Oluştur</asp:LinkButton>
                        </div>
                        <div class="row">
                            <h6 style="text-align: center; color: white;" class="mt-3">Zaten bir Durmaplay hesabınız var mı? </h6>
                        </div>
                       
                        <div class="row">
                            <a href="Login.aspx" class="bg-primary text-decoration-none">Giriş Yap</a>
                        </div>
                    </div>
                </div>
        </div>
        </div>
    </form>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <script src="Css/vanilla-tilt.js"></script>
    <script>
        VanillaTilt.init(document.querySelectorAll(".carrierr")
            , {
                max: 25,
                speed: 400,

            });
    </script>
</body>
</html>
