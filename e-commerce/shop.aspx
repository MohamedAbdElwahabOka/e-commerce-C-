<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="CSS/shop.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="shop-page d-grid m-20 gap-20" style="padding-top:25%">
    <div class="shop bg-white rad-6 p-relative">
      <img class="cover" src="imgs/shop1.jpg" alt="" />
      <div class="p-20">
        <h4 class="m-0">Mastering Web Design</h4>
        <p class="description c-grey mt-15 fs-14">
          Master The Art Of Web Designing And Mocking, Prototyping And Creating Web Design Architecture
        </p>
      </div>
      <div class="info p-15 p-relative between-flex">
        <span class="c-grey"> 950 visitors</span>
        <a class="title bg-blue c-white btn-shape" href="Plans.aspx">Show Plans</a>
      </div>
    </div>
    <div class="shop bg-white rad-6 p-relative">
      <img class="cover" src="imgs/shop2.jpg" alt="" />
      <div class="p-20">
        <h4 class="m-0">Data Structure And Algorithms</h4>
        <p class="description c-grey mt-15 fs-14">
          Master The Art Of Data Strcuture And Famous Algorithms Like Sorting, Dividing And Conquering
        </p>
      </div>
      <div class="info p-15 p-relative between-flex">
        <span class="c-grey"> 1150 visitors</span>
        <a class="title bg-blue c-white btn-shape" href="Plans.aspx">Show Plans</a>
      </div>
    </div>
    <div class="shop bg-white rad-6 p-relative">
      <img class="cover" src="imgs/shop3.jpg" alt="" />
      <div class="p-20">
        <h4 class="m-0">Responsive Web Design</h4>
        <p class="description c-grey mt-15 fs-14">
          Mastering Responsive Web Design And Media Queries And Know Everything About Breakpoints
        </p>
      </div>
      <div class="info p-15 p-relative between-flex">
        <a class="title bg-blue c-white btn-shape" href="Plans.aspx">Show Plans</a>
        <span class="c-grey">650 visitors</span>
      </div>
    </div>
    <div class="shop bg-white rad-6 p-relative">
      <img class="cover" src="imgs/shop4.jpg" alt="" />
      <div class="p-20">
        <h4 class="m-0">Mastering Python</h4>
        <p class="description c-grey mt-15 fs-14">
          Mastering Python To Prepare For Data Science And AI And Automating Things in Your Life
        </p>
      </div>
      <div class="info p-15 p-relative between-flex">
        <a class="title bg-blue c-white btn-shape" href="Plans.aspx">Show Plans</a>
        <span class="c-grey">950 visitors</span>
      </div>
    </div>
    <div class="shop bg-white rad-6 p-relative">
      <img class="cover" src="imgs/shop5.jpg" alt="" />
      <div class="p-20">
        <h4 class="m-0">PHP Examples</h4>
        <p class="description c-grey mt-15 fs-14">
          PHP Tutorials And Examples And Practice On Web Application And Connecting With Databases
        </p>
      </div>
      <div class="info p-15 p-relative between-flex">
        <span class="c-grey">850 visitors</span>
        <a class="title bg-blue c-white btn-shape" href="Plans.aspx">Show Plans</a>
      </div>
    </div>
  </div>

  <script src="JavaScript/chat-bot.js"></script>
</asp:Content>

