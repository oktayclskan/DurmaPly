<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="Twicth.aspx.cs" Inherits="DurmaPly.UserPanel.Twicth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">

        <div style="margin-top:85px;">
            <div class="row">
                <div class="col-8">
                    <i class="fa-solid fa-magnifying-glass position-absolute text-white p-2"></i>
              <asp:TextBox ID="tb_search" runat="server" CssClass="searchBoxStream form-control bg-dark border-0 rounded-0" placeholder="       Yayıncı arayın"></asp:TextBox>
                   
                </div>
                 <div class="col-4">
                   <div class="row">
                     <div class="col-md-4 ">
                          <a class="btn btn-success rounded-0" href="#">Avantajlar</a>
                     </div>
                     <div class="col-md-8">
                       <a style="background-color:#9147FF;" class="btn text-white rounded-0" href="#">Yayıncı Başvursu Yap </a>
                    </div>
                   </div>
                </div>
            </div>
             <div class="row">
                  <asp:Repeater ID="rp_publisher" runat="server">
        <ItemTemplate>
            <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="<%# Eval("Url") %>">
                            <img src="../AdminPanel/Images/<%# Eval("Img") %>" class="img-thumbnail bg-dark p-0 border-0 opacity-25" />
                        </a>
                        <span class="text-light"><%# Eval("Name") %></span>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
                  
           
                 



        </div>
        </div>
    </div>
</asp:Content>
