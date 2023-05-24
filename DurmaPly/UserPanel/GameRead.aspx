<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="GameRead.aspx.cs" Inherits="DurmaPly.UserPanel.GameRead" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="margin-top: 85px">

    </div>

    <div class="container text-light" style="margin-top: 85px">
        <div class="contentDesc">
            <div class="row">
                <div class="col-xl-6">
                    <h3>
                        <asp:Literal ID="ltrl_GameName" runat="server"></asp:Literal>
                    </h3>
                </div>
                <div class="col-xl-6">
                    <div class="row">
                        <div class="col-md-6 Price">
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
                                <div class="col-lg-3 Price ">
                                    <h6 style="padding-top: 9px; padding-left: 2px" class="mt-auto">Satın Al</h6>
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
