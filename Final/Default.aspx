<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Final.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="jumbotron">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <div class="item active">
                <img src="https://i.imgur.com/kCejDXf.jpg" alt="Chania" width="460" height="345">
                <div class="carousel-caption">
                    <h3>Chania</h3>
                    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                </div>
            </div>

            <div class="item">
                <img src="http://s3.amazonaws.com/wallpapers2/wallpapers/images/000/000/175/thumb/172.jpg?1487671036" alt="Chania" width="460" height="345">
                <div class="carousel-caption">
                    <h3>Chania</h3>
                    <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                </div>
            </div>

            <div class="item">
                <img src="https://images.wallpaperscraft.com/image/mclaren_mclaren_570s_car_traffic_101899_2560x1080.jpg" alt="Flower" width="460" height="345">
                <div class="carousel-caption">
                    <h3>Flowers</h3>
                    <p>Beautiful flowers in Kolymbari, Crete.</p>
                </div>
            </div>

            <div class="item">
                <img src="https://i.redd.it/lpisflwds3nx.png" alt="Flower" width="460" height="345">
                <div class="carousel-caption">
                    <h3>Flowers</h3>
                    <p>Beautiful flowers in Kolymbari, Crete.</p>
                </div>
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</asp:Content>
