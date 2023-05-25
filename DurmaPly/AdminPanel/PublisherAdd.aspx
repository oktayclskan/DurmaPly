<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="PublisherAdd.aspx.cs" Inherits="DurmaPly.AdminPanel.PublisherAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 75px">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <h1>Yayıncı Ekle</h1>
                    <asp:Panel ID="pnl_succes" runat="server" Visible="false">
                        <div class="alert alert-success" role="alert">
                            Yayıncı Başarıyla Eklendi
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl_error" runat="server" Visible="false">
                        <div class="alert alert-danger" role="alert">
                            <asp:Label ID="lbl_eror" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="col">
                        <asp:TextBox ID="tb_name" CssClass="form-control mt-2" runat="server" placeholder="Yayıncı Adı"></asp:TextBox>
                        <div>
                             <asp:TextBox ID="tb_url" CssClass="form-control mt-2" runat="server" placeholder="Yayın Yaptığı Url"></asp:TextBox>
                            <div class="mb-3">
                                <label class="form-label">Resim Seciniz</label>
                                <asp:FileUpload ID="fu_img" runat="server" CssClass="form-control form-control-sm" />
                            </div>
                            
                            <div class="mb-3">
                                <asp:LinkButton ID="btn_PublisherAdd" runat="server" CssClass="btn btn-success d-block" OnClick="btn_PublisherAdd_Click">Ekle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
