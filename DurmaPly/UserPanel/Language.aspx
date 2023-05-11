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
        <div class="container">
            <div class="carrier">
                <img src="Images/world-of-warcraft-.jpg" class="backImg2" />
                 <i style="color: black" class="fa-solid fa-xmark justify-content-end"></i>
                <div class="content">
                    <div class="head">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="mt-2">Griş Yap</h4>
                            </div>
                            <div class="col-md-6">
                                <h6 class="mt-3"><a href="#">Şifremi Unuttum</a></h6>
                            </div>
                        </div>
                    </div>
                    <div class="main mt-5">
                       
                    </div>
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
