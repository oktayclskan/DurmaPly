<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="GameRead.aspx.cs" Inherits="DurmaPly.UserPanel.GameRead" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="margin-top: 85px">
        <video autoplay muted>
            <asp:Literal ID="ltrl_video" runat="server"></asp:Literal>
        </video>
    </div>

    <div class="container text-light" style="margin-top: 85px">
        <div class="contentDesc">
            <div class="row">
                <div class="col-xl-6" style="margin-top: -100px">
                    <h3>
                        <asp:Literal ID="ltrl_GameName" runat="server"></asp:Literal>
                    </h3>
                </div>
                <div class="col-xl-6">
                    <div class="row">
                        <div class="col-md-6 Price" style="margin-top: -100px">
                            <div class="row first">
                                <div class="col-lg-2 text-bg-dark">
                                    <img src="Images/dodo.png" />
                                </div>
                                <div class="col-lg-2">
                                    <span>
                                        <asp:Literal ID="ltrl_discountPercentage" runat="server"></asp:Literal>
                                    </span>
                                </div>
                                <div class="col-lg-4 second ">
                                    <h6 style="padding-top: 10px">TRY289,50 </h6>

                                </div>
                                <div class="col-lg-4 Price " style="z-index:1">
                                    <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal"">
                                        <span class="text-decoration-none text-white" >Satın al</span>
                                    </button>
                                    <!-- Modal -->
                                    <div style="z-index:1">
                                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="margin-top:85px;"
                                        aria-hidden="true" data-mdb-backdrop="true" data-mdb-keyboard="true">
                                        <div class="modal-dialog" style="width: 300px;">
                                            <div class="modal-content text-center">
                                                <div class="modal-header h5 text-white bg-primary justify-content-center">
                                                    Durma Play
                                                </div>
                                                <div class="modal-body px-5">
                                                    <p class="py-2 text-secondary">
                                                       Satın alma işleminizi şaunda gerçekleştiremiyoruz.
                                                    </p>
                                                    <asp:LinkButton ID="lbtn_resetPassword" runat="server" CssClass="btn btn-primary w-100">Kapat</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <%--   <asp:Button Text="Satın Al" CssClass="btn btn-success" data-bs-toggle="modal" data-bs-target="#demo"  runat="server" />
                                    <div class="modal fade" id="demo">
                                        <div class="modal-dialog modal-md">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Durma Play</h4>
                                                    <asp:Button Text="text" CssClass="btn-close" data-bs-dismiss="modal" runat="server" />
                                                </div>
                                                <div class="modal-body">
                                                    Satın alma işlemini şuan gerçekleştiremiyoruz
                                                </div>
                                                <div class="modal-footer">
                                                    <asp:Button Text="Kapat" CssClass="btn btn-secondary" data-bs-dismiss="modal" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>

                                    <%--  <h6 style="padding-top: 9px; padding-left: 2px" class="mt-auto">Satın Al</h6>--%>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


            </div>

        </div>
        <div class="contentInformation mt-5">
            <div class="row">
                <div class="col-md-3">
                    Nasıl aktif edilir?
                    <br />
                    Kullanılabilecek bölgeler
                    <br />
                    <img src="Images/tr_flag.png" width="35" />
                    <img src="Images/eu_flag.png" width="35" />
                    <br />
                    Etiketler
                    <br />
                    *Modern
                    *First Person
                    *Arcade
                    *Action
                    *Shooter
                </div>
                <div class="col-md-9">
                    <p class="bg-black text-light">
                        <asp:Literal ID="ltrl_content" runat="server"></asp:Literal>
                    </p>
                </div>
            </div>

        </div>
    </div>
   
</asp:Content>

