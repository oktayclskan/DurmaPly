<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="DurmaPly.UserPanel.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rp_comment" runat="server">
        <ItemTemplate>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div style="margin-top: 90px;">
                            <div class="card border-0">
                                <div class="contentNews">
                                    <div class="card-body bg-black border-danger">
                                        <a href="#">
                                            <img src="../AdminPanel/Images/<%# Eval("Img") %>" class="img-thumbnail p-0 border-0" />
                                        </a>
                                        <p class="date"><%# Eval("MemberName") %></p>
                                        <br />
                                        <p class="title"><%# Eval("Title") %></p><div class="text-warning float-end position-relative" style="font-size:9pt; margin-top:-20px;margin-right:8px;"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
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

</asp:Content>
