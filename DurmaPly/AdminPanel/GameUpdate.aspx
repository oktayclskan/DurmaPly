<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="GameUpdate.aspx.cs" Inherits="DurmaPly.AdminPanel.GameUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 75px">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <h1>Oyun Ekle</h1>
                    <asp:Panel ID="pnl_succes" runat="server" Visible="false">
                        <div class="alert alert-success" role="alert">
                           Oyun Başarıyla güncellendi
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl_error" runat="server" Visible="false">
                        <div class="alert alert-danger" role="alert">
                            <asp:Label ID="lbl_eror" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="col">
                        <asp:TextBox ID="tb_name" CssClass="form-control mt-2" runat="server" placeholder="Oyun ismi"></asp:TextBox>
                        <div>
                            <asp:TextBox ID="tb_discountPercentage" CssClass="form-control  mt-2" runat="server" placeholder="İndirim yüzdesi"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="tb_content" TextMode="MultiLine" CssClass="form-control  mt-2" runat="server" placeholder="içerik"></asp:TextBox>
                        </div>
                        <div>
                            <div class="input-group mb-3 mt-3">
                                <span class="input-group-text">$</span>
                                <span class="input-group-text">0.00</span>
                                <asp:TextBox ID="tb_discountRate" runat="server" class="form-control" placeholder="İndirimli Fiyat" aria-label="Dollar amount (with dot and two decimal places)"></asp:TextBox>
                            </div>
                            
                            <div class="input-group">
                                <asp:TextBox ID="tb_noDiscount" runat="server" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" placeholder="İndirimsiz Fiyat"></asp:TextBox>
                                <span class="input-group-text">$</span>
                                <span class="input-group-text">0.00</span>
                            </div>
                            <div class="mb-3 mt-2">
                                <asp:Image ID="fu_img" runat="server"  Width="150"/>
                            </div>
                            <span>Resim seçiniz</span>
                               <asp:FileUpload ID="fu_imguptdate" runat="server" CssClass="form-control form-control-sm" />
                            <div class="mb-3">
                                <label class="form-label">Video Seciniz</label>
                                <asp:FileUpload ID="fu_video" runat="server" CssClass="form-control form-control-sm" />
                            </div>
                            <div class="mb-3">
                                <asp:LinkButton ID="btn_GameAdd" runat="server" CssClass="btn btn-success d-block" OnClick="btn_GameAdd_Click">Güncelle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
