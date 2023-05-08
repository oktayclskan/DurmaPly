<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DurmaPly.UserPanel.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:88px">
        <div class="row">
            <div class="col-sm-8">
                <div id="demo" class="carousel slide" data-bs-ride="carousel" data-bs-pause="hover">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2" class="active"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/menu.jpg"  width="950" height="450">
                    <div class="carousel-caption text-light">
                        Kampanya yaptık gel gel
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/yayıncıımg.jpg" width="950" height="450">
                     <div class="carousel-caption text-light">
                        Kampanya yaptık gel gel
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/forza.jpg" width="950" height="450">
                     <div class="carousel-caption text-light">
                        Kampanya yaptık gel gel
                    </div>
                </div>

            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
            </div>
            <div class="col-sm-4 righRow"> 
                <h3 class="text-light">Dev İndirimler Başladı</h3>
            </div>
        </div>
        <div class="">

        </div>
    </div>
</asp:Content>
