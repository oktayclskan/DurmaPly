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
            <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/zeon"><img src="Images/Streamear/zeon.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">zeon</span>
                    </div>
                </div>
            </div>
                  <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://tr.linkedin.com/in/sefaturgut"><img src="Images/Streamear/13c9649e-88e4-4d70-b433-6fb4cafe3edd-profile_image-300x300.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                            
                        <span class="text-light">Sefa Turgut</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/jeddunex"><img src="Images/Streamear/c091d06e-4873-4673-9f85-d44fb1978938-profile_image-300x300.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                            
                        <span class="text-light">jeddunex</span>
                    </div>
                </div>
            </div>
                  <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.youtube.com/channel/UC-iqUanxTDwXGEp15W3oOmA"><img src="Images/Streamear/hamdi.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">kurthamdi</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body">
                        <a href="https://www.twitch.tv/mikren"><img src="Images/Streamear/migrhen.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                            
                        <span class="text-light">miqrhen</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/twitchsasi"><img src="Images/Streamear/20e9d198-183b-452f-bc01-f64ca43aca61-profile_image-300x300.jpg" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">twitchsasi</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/eray"><img src="Images/Streamear/eray.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">eray</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/alperbicen"><img src="Images/Streamear/alper.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">alperBicen</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/zeon"><img src="Images/Streamear/zeon.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">zeon</span>
                    </div>
                </div>
            </div>
                  <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://tr.linkedin.com/in/sefaturgut"><img src="Images/Streamear/13c9649e-88e4-4d70-b433-6fb4cafe3edd-profile_image-300x300.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                            
                        <span class="text-light">Sefa Turgut</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/jeddunex"><img src="Images/Streamear/c091d06e-4873-4673-9f85-d44fb1978938-profile_image-300x300.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                            
                        <span class="text-light">jeddunex</span>
                    </div>
                </div>
            </div>
                  <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.youtube.com/channel/UC-iqUanxTDwXGEp15W3oOmA"><img src="Images/Streamear/hamdi.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">kurthamdi</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body">
                        <a href="https://www.twitch.tv/mikren"><img src="Images/Streamear/migrhen.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                            
                        <span class="text-light">miqrhen</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/twitchsasi"><img src="Images/Streamear/20e9d198-183b-452f-bc01-f64ca43aca61-profile_image-300x300.jpg" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">twitchsasi</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/eray"><img src="Images/Streamear/eray.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">eray</span>
                    </div>
                </div>
            </div>
                 <div class="col-md-3 p-2">
                <div class="card">
                    <div class="card-body" ">
                        <a href="https://www.twitch.tv/alperbicen"><img src="Images/Streamear/alper.png" class="img-thumbnail bg-dark p-0 border-0 opacity-25" /></a>
                        <span class="text-light">alperBicen</span>
                    </div>
                </div>
            </div>



        </div>
        </div>
    </div>
</asp:Content>
