<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanel.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="DurmaPly.UserPanel.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <asp:Repeater ID="rp_news" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div style="margin-top: 90px;">
                            <div class="card border-0">
                                <div class="contentNews">
                                    <div class="card-body bg-black border-danger">
                                        <a href="NewsRead.aspx?nid=<%# Eval("ID") %>">
                                            <img src="../AdminPanel/Images/<%# Eval("Img") %>" class="img-thumbnail p-0 border-0" />
                                        </a>
                                        <p class="date"><%# Eval("NewsDateTime") %></p>
                                        <br />
                                        <p class="title"><%# Eval("Title") %></p>
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
