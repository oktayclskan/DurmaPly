<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="DurmaPly.UserPanel.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"style="margin-top: 90px;">
        <div class="row">
            <asp:Repeater ID="rp_news" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 mt-3">
                        <div >
                            <div class="card border-0">
                                <div class="contentNews">
                                    <div class="card-body bg-black border-danger">
                                        <a href="NewsRead.aspx?nid=<%# Eval("ID") %>">
                                            <img src="../AdminPanel/Images/<%# Eval("Img") %>" class="img-thumbnail p-0 border-0 opacity-25" />
                                        </a>
                                        <p class="date" style="margin-top:-75px"><%# Eval("NewsDateTime") %></p>
                                        <br />
                                        <p style="margin-top:-55px" class="title"><%# Eval("Title") %></p>
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
