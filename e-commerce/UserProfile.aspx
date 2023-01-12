<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" href="CSS/User_Profile.css" />
    <link rel="stylesheet" href="CSS/User_Profile_framework.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <!-- Start continer  -->
    <div class="container" style="padding-top:25%">
        <!-- Start Main part1  -->
        <div class="content w-full">
            <!-- start user-page -->
            <div class="user-page m-20">

                <!-- start overview -->
                <div class="overview  d-flex align-center bg-b rad-6">

                    <div class="avatar-box txt-c p-20">
                        <img src="imgs/1946429.png" width="150" decoding="async" class="rad-half mb-10">
                        <h3 class="m-0 "><%=HttpContext.Current.Session["urname"] %></h3>

                    </div>

                    <!-- start box -->
                    <div class="info-box w-full txt-c-mobile">
                        <!-- Start Information Row1 -->
                        <div class="box p-20 d-flex align-center">
                            <h4 class="c-grey fs-15 m-0 w-full">General Information</h4>
                            <div class="fs-14">
                                <span class="c-grey">Full Name: <%=HttpContext.Current.Session["urname"] %></span>
                            </div>
                            <div class="fs-14">
                                <span class="c-grey">Gender:</span>
                                <span>Male</span>
                            </div>
                            <div class="fs-14">
                                <span class="c-grey">Country:</span>
                                <span>Egypt</span>
                            </div>

                        </div>
                        <!-- End Information Row1 -->



                        <!-- Start Information Row2 -->
                        <div class="box p-20 d-flex align-center">
                            <h4 class="c-grey w-full fs-15 m-0">Personal Information</h4>
                            <div class="fs-14">
                                <span class="c-grey">Email: <%=HttpContext.Current.Session["mail"] %></span>

                            </div>
                            <div class="fs-14">
                                <span class="c-grey">Phone:</span>
                                <span>019123456789</span>
                            </div>
                            <div class="fs-14">
                                <span class="c-grey">Date Of Birth:</span>
                                <span>25/10/1982</span>
                            </div>

                        </div>
                        <!-- End Information Row2 -->
                    </div>
                    <!-- end box -->


                </div>
                <!-- End overview -->



            </div>
            <!-- End user-page -->



        </div>
        <!-- End Main part1  -->




        <!-- Start Main part2  -->
        <h1 class="p-relative bg-t">Projects</h1>
        <!-- Start projects-page  -->
        <div class="projects-page d-grid m-20 gap-20 ">
            <div class="project  p-20 rad-6 p-relative bg-b">
                <!-- project1 -->
                <!-- chang using data base -->
                <span class="date fs-13 c-grey">Date</span>
                <h4 class="m-0">.............</h4>
                <p class="c-grey mt-10 mb-10 fs-14">Dashboard Project Design And Programming And Hosting</p>
                <div class="team">

                    <!-- chang using data base -->
                    <a href="#"><img src="imgs/team-01.png" alt="" /></a>
                    <a href="#"><img src="imgs/team-02.png" alt="" /></a>
                    <a href="#"><img src="imgs/team-03.png" alt="" /></a>
                    <a href="#"><img src="imgs/team-04.png" alt="" /></a>
                    <a href="#"><img src="imgs/team-05.png" alt="" /></a>
                </div>

                <!-- chang using data base -->
                <div class="do d-flex">
                    <span class="fs-13 rad-6 bg-eee">Programming</span>
                    <span class="fs-13 rad-6 bg-eee">Design</span>
                    <span class="fs-13 rad-6 bg-eee">Hosting</span>
                    <span class="fs-13 rad-6 bg-eee">Marketing</span>
                </div>
                <div class="info between-flex">
                    <div class="prog bg-eee">
                        <span class="bg-red" style="width: 50%"></span>
                    </div>
                    <div class="fs-14 c-grey">
                        <i class="fa-solid fa-dollar-sign"></i>
                        2500
                    </div>
                </div>

            </div>
            <!-- project2 -->
            <!-- chang using data base -->
            <div class="project bg-white p-20 rad-6 p-relative bg-b">
                <span class="date fs-13 c-grey">Date</span>
                <h4 class="m-0">Academy Portal</h4>
                <p class="c-grey mt-10 mb-10 fs-14">Academy Portal Project Design And Programming</p>
                <div class="team">
                    <a href="#"><img src="imgs/team-01.png" alt="" /></a>
                    <a href="#"><img src="imgs/team-02.png" alt="" /></a>
                    <a href="#"><img src="imgs/team-03.png" alt="" /></a>
                </div>
                <div class="do d-flex">
                    <span class="fs-13 rad-6 bg-eee">Programming</span>
                    <span class="fs-13 rad-6 bg-eee">Design</span>
                </div>
                <div class="info between-flex">
                    <div class="prog bg-eee">
                        <span class="bg-green" style="width: 80%"></span>
                    </div>
                    <div class="fs-14 c-grey">
                        <i class="fa-solid fa-dollar-sign"></i>
                        1800
                    </div>
                </div>
            </div>
        </div>
        <!-- End projects-page  -->



    </div>
    <!-- End continer -->
</asp:Content>

