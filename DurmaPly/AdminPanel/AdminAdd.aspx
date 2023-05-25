<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="DurmaPly.AdminPanel.AdminAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <h1>Admin Ekle</h1>
                    <asp:Panel ID="pnl_succes" runat="server" Visible="false">
                        <div class="alert alert-success" role="alert">
                            Admin Başarıyla Eklendi
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
                            <asp:TextBox ID="tb_content" CssClass="form-control mt-2" runat="server" TextMode="MultiLine" placeholder="İçerik"></asp:TextBox>
                            <div class="mb-3">
                                <label class="form-label">Resim Seciniz</label>
                                <asp:FileUpload ID="fu_img" runat="server" CssClass="form-control form-control-sm" />
                            </div>
                            
                            <div class="mb-3">
                                <asp:LinkButton ID="btn_NewsAdd" runat="server" CssClass="btn btn-success d-block" OnClick="btn_NewsAdd_Click">Ekle</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
