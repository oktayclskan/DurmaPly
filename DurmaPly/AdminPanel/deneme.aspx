<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="DurmaPly.AdminPanel.deneme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rpdeneme" runat="server">
        <ItemTemplate>
            <video autoplay muted>
                <source class="video w-100 h-100 mb-3" src="../AdminPanel/Video/<%# Eval("Video") %>"  />
            </video>
        </ItemTemplate>
    </asp:Repeater>
    <%--<div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="Gta5.aspx">
                                <img src="Images/gta55.jpg" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>GTA 5</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            58%
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY697,00</h6>
                                            TRY290,50
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="NFS.aspx">
                                <img src="Images/nefs.png" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>Need for Speed</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            %65
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY930,00</h6>
                                            TRY276,50
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="FM2022.aspx">
                                <img src="Images/FM22 Opengraph_0.jpg" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>Football Manager 2022</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            70%
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY320,00</h6>
                                            TRY250,50
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="AssaienCred.aspx">
                                <img src="Images/assassins-creed-serisi.jpg" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>Assasins Creed</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            71%
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY461,00</h6>
                                            TRY135,50
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="Cod.aspx">
                                <img src="Images/cod infinite.jpg" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>Call OF Duty İnfinite Warfare</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            70%
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY697,00</h6>
                                            TRY218,50
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="#">
                                <img src="Images/fifa-23-featured-.png" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>FIFA 2023</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            0%
                                        </div>
                                        <div class="col-lg-8 second ">
                                             <h6 style="text-decoration:line-through;">TRY00,00</h6>
                                            TRY770,50
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="#">
                                <img src="Images/steamKod.jpg" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>100 TL değerinde kod 50 TL</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            50%
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY100,00</h6>
                                            TRY50,00
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mt-4">
                    <div class="content">
                        <div class="card-header bg-black">
                            <i class="fa-brands fa-steam-symbol text-light float-end"></i>
                        </div>
                        <div class="card-body bg-black border-danger">
                            <a href="#">
                                <img src="Images/steamKod.jpg" class="img-thumbnail p-0 border-0" />
                            </a>
                        </div>
                        <div class="card-footer bg-dark">
                            <div class="row">
                                <div class="col-md-8 stars">
                                    <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                    <br />
                                    <h6>200 TL değerinde kod 150 TL</h6>
                                </div>
                                <div class="col-md-4 Price">
                                    <div class="row first">
                                        <div class="col-lg-4">
                                            25%
                                        </div>
                                        <div class="col-lg-8 second ">
                                            <h6 style="text-decoration:line-through;">TRY200,00</h6>
                                            TRY150,00
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
</asp:Content>
