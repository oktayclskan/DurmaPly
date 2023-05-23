<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DurmaPly.UserPanel.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 88px">
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
                                Yüzlerle İndirimli oyun sizi bekliyor
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
                <p class="text-secondary mt-4 m-4">Yüzlerce oyunda farklı oranlarda uygulanan indirimler başladı. Tüm indirimler stok sayılarına , sürelere göre ve günlük yeni stok eklemelerine göre değişecektir. Nisan ayı boyunca sürecek olan indirimleri her gün 1 kere kontrol etmenizi şiddetle öneririz. Keyifli Alışverişler..</p>
                <div class="row">
                    <a href="#" class="mt-5 m-3 text-white text-decoration-none">Hemen İncele...</a>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:Repeater ID="rp_game" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card mt-4">
                            <div class="content">
                                <div class="card-header bg-black">
                                    <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                                </div>
                                <div class="card-body bg-black border-danger">
                                    <a href="GameRead.aspx?gid=<%# Eval("ID") %>"">
                                        <img src="../AdminPanel/Images/<%# Eval("img") %>" class="img-thumbnail p-0 border-0" />
                                    </a>
                                </div>
                                <div class="card-footer bg-dark">
                                    <div class="row">
                                        <div class="col-md-8 stars">
                                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                            <br />
                                            <h6><%# Eval("Name") %></h6>
                                        </div>
                                        <div class="col-md-4 Price">
                                            <div class="row first">
                                                <div class="col-lg-4">
                                                    <span><%# Eval("discountPercentage") %></span>
                                                </div>
                                                <div class="col-lg-8 second ">
                                                    <span style="text-decoration: line-through;">TRY<%# Eval("DiscountRate") %></span>
                                                     <span>TRY<%# Eval("noDiscount") %></span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
