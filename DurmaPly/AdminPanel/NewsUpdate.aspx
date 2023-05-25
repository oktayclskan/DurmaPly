<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="NewsUpdate.aspx.cs" Inherits="DurmaPly.AdminPanel.NewsUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 75px">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <h1>Haber Güncelle</h1>
                    <asp:Panel ID="pnl_succes" runat="server" Visible="false">
                        <div class="alert alert-success" role="alert">
                            Haber Başarıyla Güncellendi
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl_error" runat="server" Visible="false">
                        <div class="alert alert-danger" role="alert">
                            <asp:Label ID="lbl_eror" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="col">
                        <asp:TextBox ID="tb_Title" CssClass="form-control mt-2" runat="server" placeholder="Haber Başlığı"></asp:TextBox>
                        <div>
                            <asp:TextBox ID="tb_Content" CssClass="form-control mt-2" runat="server" placeholder="İçerik"></asp:TextBox>

                            <div class="mb-3 mt-2">
                                <asp:Image ID="fu_img" runat="server" Width="120" />
                            </div>
                            <span>Resim seçiniz</span>
                            <asp:FileUpload ID="fu_imguptdate" runat="server" CssClass="form-control form-control-sm" />

                            <div class="mb-3 mt-2">
                                <asp:LinkButton ID="btn_NewsUpdate" runat="server" CssClass="btn btn-success d-block" OnClick="btn_NewsUpdate_Click">Güncelle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
