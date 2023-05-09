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
                    <img src="Images/menu.jpg" class="w-100 h-50">
                    <div class="carousel-caption text-light">
                        Kampanya yaptık gel gel
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/yayıncıımg.jpg" class="w-100 h-50">
                     <div class="carousel-caption text-light">
                        Kampanya yaptık gel gel
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/forza.jpg" class="w-100 h-50">
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
        <div class="row">
            <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
             <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
             <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
             <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
                  <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
                  <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
                  <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
                  <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
                  <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>
            </div>
                  <div class="col-md-4">
                <div class="card mt-4 border-0">
                    <div class="card-header bg-black">
                         <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>


                    <div class="card-body bg-black">
                        <a href="#"><img src="Images/netfilix.png" class="img-thumbnail" />
                        </a>
                        <div class="stars">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <br />
                            <h6>Netfilix'te film keydini Kaçırmayın</h6>
                            
                        </div>
                        
                    </div>
                    <%--<div class="card-footer bg-dark">
                        Netfilix'te film keydini Kaçırmayın
                        <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                    </div>--%>

                </div>

            </div>
            </div>
           
        </div>
    </div>
</asp:Content>
