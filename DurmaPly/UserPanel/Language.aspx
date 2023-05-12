<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Language.aspx.cs" Inherits="DurmaPly.UserPanel.Language" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Language </title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-6.3.0-web/css/all.min.css" rel="stylesheet" />
    <link href="Css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <a href="Index.aspx"><i class="fa-solid fa-xmark float-end exit fixed-top" style="width:35px"></i></a>
        <div class="container">
            <div class="carrier">
                <img src="Images/world-of-warcraft-.jpg" class="backImg2" />
                <i style="color: black" class="fa-solid fa-xmark justify-content-end"></i>
                <div class="contentLanguage">
                    <h4 style="margin-left: 15px;" class="p-2 text-light">Dil ve Kur ayarları</h4>
                    <div class="row" style="margin-left: 10px">
                        <h4 class="text-dark">Dil</h4>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            العربية
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Azərbaycan
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Dansk
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Deutsch
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            English
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Ελληνικά
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Español
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            فارسی
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Français
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Indonesia
                        </div>
                        <div class="col-xl-2 bg-dark text-light m-1 mt-3">
                            Italiano
                        </div>
                        <div class="col-xl-2 bg-dark text-light m-1 mt-3">
                            日本語
                        </div>
                        <div class="col-xl-2 bg-dark text-light m-1 mt-3">
                            한국어
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Nederlands
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Norsk
                        </div>
                        <div class="col-xl-3 bg-primary text-light m-1 mt-3">
                            Türkçe
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Português
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Română
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Русский
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Svenska
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            ไทย
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Pilipino
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Polski
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Українська
                        </div>
                        <div class="col-xl-3 bg-dark text-light m-1 mt-3">
                            Tiếng Việt
                        </div>
                    </div>
                    <div class="row" style="margin-left: 10px">
                        <h4 class="text-dark">Dil</h4>
                        <div class="col-xl-3 text-light bg-primary m-1">
                            TRY
                        </div>
                        <div class="col-xl-3 text-light bg-dark  m-1">
                            USD
                        </div>
                        <div class="col-xl-3 text-light  bg-dark m-1">
                            EUR
                        </div>
                    </div>
                </div>
                <div class="main mt-3">
                </div>
            </div>
        </div>


    </form>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <script src="Css/vanilla-tilt.js"></script>
    <script>
        VanillaTilt.init(document.querySelectorAll(".carrier")
            , {
                max: 25,
                speed: 400,
            });
    </script>
</body>
</html>
