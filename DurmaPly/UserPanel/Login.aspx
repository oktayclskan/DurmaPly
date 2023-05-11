<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DurmaPly.UserPanel.Login" %>

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
        <a href="Index.aspx"><i class="fa-solid fa-xmark float-end exit fixed-top"></i></a>
        <div class="container">
            <div class="carrierr">
                <img src="Images/Okito.jpg" class="backImg" />
                <i style="color: black" class="fa-solid fa-xmark justify-content-end"></i>
                <div class="content">
                    <div class="head">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="mt-2">Giriş Yap</h4>
                            </div>
                            <div class="col-md-6">
                                <h6 class="mt-3"><a href="#">Şifremi Unuttum</a></h6>
                            </div>
                        </div>
                    </div>
                    <div class="main mt-5">
                        <div class="row">
                            <h6>Email</h6>
                            <asp:TextBox ID="tb_mail" runat="server" CssClass="input form-control"></asp:TextBox>
                        </div>
                        <div class="row">
                            <h6>Sifre</h6>
                            <asp:TextBox ID="tb_Password" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
                        </div>
                        <div class="row">
                            <asp:LinkButton ID="lbtn_login" runat="server" CssClass="btnlogin mt-2">Giriş Yap</asp:LinkButton>
                        </div>
                        <div class="row">
                            <h4 style="text-align: center; color: white;" class="mt-3">veya </h4>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <a href="#"><i class="fa-brands fa-facebook float-end mt-2"></i></a>

                            </div>
                            <div class="col-6">
                                <a href="#"><i class="fa-brands fa-google-plus"></i></a>

                            </div>
                        </div>
                        <div class="row">
                            <asp:LinkButton ID="lbtn_Register" runat="server" CssClass="btnRegister">Hesap Oluştur</asp:LinkButton>
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
