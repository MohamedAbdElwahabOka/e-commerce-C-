<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="CSS/Home_style.css">
    <link rel="stylesheet" href="CSS/Responsive-Home.css">
    <!-- normalize Css -->
    <link rel="stylesheet" href="CSS/normaliz.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="CSS/all.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@600&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Projects" style="padding-top:7%">
        <div class="container">
            <div id="formList">
                <div id="list">
                    <div class="item">
                        <img src="imgs/giga_chad.png" class="avatar">
                        <div class="content">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Tên</td>
                                    <!-- <td>Chopper</td> -->
                                </tr>
                                <tr>
                                    <td>Nghề nghiệp</td>
                                    <!-- <td>Bác sỉ</td> -->
                                </tr>
                                <tr>
                                    <td>Sức mạnh</td>
                                    <!-- <td>Cute</td> -->
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">Thành viên băng Mũ Rơm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item">
                        <img src="imgs/giga_chad.png" class="avatar">
                        <div class="content">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Tên</td>
                                    <!-- <td>Brook</td> -->
                                </tr>
                                <tr>
                                    <td>Nghề nghiệp</td>
                                    <!-- <td>Hải tặc</td> -->
                                </tr>
                                <tr>
                                    <td>Sức mạnh</td>
                                    <!-- <td>Bất tử</td> -->
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">Thành viên băng Mũ Rơm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item">
                        <img src="imgs/hope_garden.png" class="avatar">
                        <div class="content">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Tên</td>
                                    <!-- <td>Sanji</td> -->
                                </tr>
                                <tr>
                                    <td>Nghề nghiệp</td>
                                    <!-- <td>Đầu bếp</td> -->
                                </tr>
                                <tr>
                                    <td>Sức mạnh</td>
                                    <!-- <td>Chân lửa</td> -->
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">Thành viên băng Mũ Rơm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item">
                        <img src="imgs/hope_garden.png" class="avatar">
                        <div class="content">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Tên</td>
                                    <!-- <td>Usopp</td> -->
                                </tr>
                                <tr>
                                    <td>Nghề nghiệp</td>
                                    <!-- <td>Xạ thủ</td> -->
                                </tr>
                                <tr>
                                    <td>Sức mạnh</td>
                                    <!-- <td>Chém gió</td> -->
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">Thành viên băng Mũ Rơm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item">
                        <img src="imgs/hope_garden.png" class="avatar">
                        <div class="content">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Tên</td>
                                    <!-- <td>Nami</td> -->
                                </tr>
                                <tr>
                                    <td>Nghề nghiệp</td>
                                    <!-- <td>Hoa tiêu</td> -->
                                </tr>
                                <tr>
                                    <td>Sức mạnh</td>
                                    <!-- <td>Ăn hiếp đồng đội</td> -->
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">Thành viên băng Mũ Rơm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="item">
                        <img src="imgs/giga_chad.png" class="avatar">
                        <div class="content">
                            <table width="100%" cellspacing="0">
                                <tr>
                                    <td>Tên</td>
                                    <!-- <td>Robin</td> -->
                                </tr>
                                <tr>
                                    <td>Nghề nghiệp</td>
                                    <!-- <td>Hải tặc</td> -->
                                </tr>
                                <tr>
                                    <td>Sức mạnh</td>
                                    <!-- <td>Nghìn tay</td> -->
                                </tr>
                                <tr>
                                    <td colspan="2" class="nameGroup">Thành viên băng Mũ Rơm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="direction">
                <button id="prev" >
                    < </button>
                        <button id="next"> > </button>
            </div>

        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="JavaScript/Home.js"></script>

</asp:Content>

