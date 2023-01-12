<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="Plans.aspx.cs" Inherits="Plans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="CSS/plans.css" />
  <link rel="stylesheet" href="CSS/shop.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- start plan 1 -->
  <h1 class="p-relative" style="color: #EEEEEE;padding-top:25%">Plans</h1>
  <div class="plans-page d-grid m-20 gap-20">
    <div class="plan green bg-white p-20">
      <div class="top bg-green txt-c p-20">
        <h2 class="m-0 c-white">Basic</h2>
        <div class="price c-white"><span>$</span>50.00</div>
      </div>
      <ul>
        <li>
          <span>Up to 3 pages created</span>
        </li>
        <li>
          <span>website statictics</span>
        </li>
        <li>
          <span>include contact us form</span>
        </li>
        <li>
          <del>Browse Content Without Ads</del>
        </li>
        <li>
          <del>you provide content</del>
        </li>
        <li>
          <del>routing panner or header</del>
        </li>
        <li>
          <del>social bookmarking</del>
        </li>
        <li>
          <del>links to your blogs</del>
        </li>
        <li>
          <del>custom Design</del>
        </li>
      </ul>
      <a href="Cart.aspx" class="btn-shape bg-green c-white d-block w-fit">Join</a>
    </div>
    <!-- End plan 1 -->
    <!-- Start Plan 2 -->
    <div class="plan blue bg-white p-20">
      <div class="top bg-blue txt-c p-20">
        <h2 class="m-0 c-white">Standard</h2>
        <div class="price c-white"><span>$</span>65.00</div>
      </div>
      <ul class="list-none p-0">
        <li>
          <span>Up to 3 pages created</span>
        </li>
        <li>
          <span>website statictics</span>
        </li>
        <li>
          <span>include contact us form</span>
        </li>
        <li>
          <span>Browse Content Without Ads</span>
        </li>
        <li>
          <span>you provide content</span>
        </li>
        <li>
          <span>routing panner or header</span>
        </li>
        <li>
          <span>social bookmarking</span>
        </li>
        <li>
          <del>links to your blogs</del>
        </li>
        <li>
          <del>custom Design</del>
        </li>
      </ul>
      <a href="Cart.aspx" class="btn-shape bg-blue c-white d-block w-fit">Join</a>
    </div>
    <!-- End Plan 2-->
    <!-- Start Plan 3-->
    <div class="plan orange bg-white p-20">
      <div class="top bg-orange txt-c p-20">
        <h2 class="m-0 c-white">Premium</h2>
        <div class="price c-white"><span>$</span>80.00</div>
      </div>
      <ul class="list-none p-0">
        <li>
          <span>Up to 3 pages created</span>
        </li>
        <li>
          <span>website statictics</span>
        </li>
        <li>
          <span>include contact us form</span>
        </li>
        <li>
          <span>Browse Content Without Ads</span>
        </li>
        <li>
          <span>you provide content</span>
        </li>
        <li>
          <span>routing panner or header</span>
        </li>
        <li>
          <span>social bookmarking</span>
        </li>
        <li>
          <span>links to your blogs</span>
        </li>
        <li>
          <span>custom Design</span>
        </li>
      </ul>
      <a href="Cart.aspx" class="btn-shape bg-orange c-white d-block w-fit">Join</a>
    </div>
    <!-- End Plan 3 -->
  </div>

  <script src="JavaScript/chat-bot.js"></script>
</asp:Content>

