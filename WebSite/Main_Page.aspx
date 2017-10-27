<%@ Page Title="" Language="C#" MasterPageFile="~/Company_Master_Page.master" AutoEventWireup="true" CodeFile="Main_Page.aspx.cs" Inherits="Main_Page" Theme =""%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body_Content_Holder" Runat="Server">
    
    <div class="container">
    <asp:Label ID ="Login_Label" runat ="server" CssClass ="loginlabel" Text ="Login"></asp:Label>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="App_Images/Images/image1.jpg" alt="Image1" style="width:100%;height:100%">
      </div>

      <div class="item">
        <img src="App_Images/Images/image2.jpg" alt="Image2" style="width:100%;height:100%">
      </div>
    
      <div class="item">
        <img src="App_Images/Images/image3.jpg" alt="Image3" style="width:100%;height:100%">
      </div>
    <div class="item">
        <img src="App_Images/Images/image4.jpg" alt="Image4" style="width:100%;height:100%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</asp:Content>

