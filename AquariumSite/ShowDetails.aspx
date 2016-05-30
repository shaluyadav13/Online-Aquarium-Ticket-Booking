<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ShowDetails.aspx.vb" Inherits="ShowDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <style>
        .container1 {
            margin-left: 10em;
            margin-right: 10em;
            margin-bottom: -4.5em;
        }

        input,
        select,
        textarea {
            max-width: 100%;
        }

        body {
            font: 400 15px/1.8 Lato, sans-serif;
            color: #777;
        }

        h3, h4 {
            margin: 10px 0 30px 0;
            letter-spacing: 10px;
            font-size: 25px;
            color: aquamarine;
        }

        h1, .h1 {
            font-size: 40px;
            color: darkcyan;
        }

        .person {
            border: 10px solid transparent;
            margin-bottom: 25px;
            width: 80%;
            height: 80%;
            opacity: 0.7;
        }

            .person:hover {
                border-color: #f1f1f1;
            }


        /*.carousel-inner img {
            -webkit-filter: grayscale(90%);
            filter: grayscale(90%); /* make all photos black and white */
        /* width: 100%; */
        /* Set width to 100% */
        /* margin: auto;*/
        /*}*/
        /*.carousel-caption h3 {
            color: #fff !important;
        }*/

        /*@media (max-width: 600px) {
            .carousel-caption {
                display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
        /*  }*/
        /* }*/

        .carousel-control.right, .carousel-control.left {
            background-image: none;
            color: #f4511e;
        }

        .carousel-indicators li {
            border-color: #f4511e;
        }

            .carousel-indicators li.active {
                background-color: #f4511e;
            }

        .carousel {
            background-color: black;
        }

        .bg-1 {
            background: #2d2d30;
            color: #bdbdbd;
        }

            .bg-1 h3 {
                color: #fff;
            }

            .bg-1 p {
                font-style: italic;
            }

        .list-group-item:first-child {
            border-top-right-radius: 0;
            border-top-left-radius: 0;
        }

        .list-group-item:last-child {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .thumbnail {
            padding: 0 0 15px 0;
            border: none;
            border-radius: 0;
        }

            .thumbnail p {
                margin-top: 15px;
                color: #555;
            }

        .btn {
            padding: 10px 20px;
            background-color: #333;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

            .btn:hover, .btn:focus {
                border: 1px solid #333;
                background-color: #fff;
                color: #000;
            }

        .modal-header, h4, .close {
            background-color: #333;
            color: #fff !important;
            text-align: center;
            font-size: 30px;
        }

        .modal-header, .modal-body {
            padding: 40px 50px;
        }

        .nav-tabs li a {
            color: #777;
        }

        #googleMap {
            width: 100%;
            height: 400px;
            -webkit-filter: grayscale(100%);
            filter: grayscale(100%);
        }

        .navbar {
            font-family: Montserrat, sans-serif;
            margin-bottom: 0;
            background-color: #2d2d30;
            border: 0;
            font-size: 11px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }

            .navbar li a, .navbar .navbar-brand {
                color: #d5d5d5 !important;
            }

        .navbar-nav li a:hover {
            color: #fff !important;
            font-weight: bold !important;
        }

        .navbar-nav li.active a {
            color: black !important;
            background-color: lightgray !important;
            font-weight: bold !important;
        }

        .navbar-default .navbar-toggle {
            border-color: transparent;
        }

        .open .dropdown-toggle {
            color: #fff;
            background-color: #555 !important;
        }

        .dropdown-menu li a {
            color: #000 !important;
        }

            .dropdown-menu li a:hover {
                background-color: red !important;
            }

        footer {
            background-color: #2d2d30;
            color: #f5f5f5;
            padding: 32px;
        }

            footer a {
                color: #f5f5f5;
            }

                footer a:hover {
                    color: #777;
                    text-decoration: none;
                }

        .form-control {
            border-radius: 0;
        }

        textarea {
            resize: none;
        }

        input, select, textarea {
            /* max-width: 280px; */
        }

        .container1 {
            padding-right: 10em;
            padding-left: 10em;
            padding-top: 3em;
            margin-right: auto;
            margin-left: auto;
        }

        .video-container {
            position: relative;
            padding-bottom: 56.25%; /* 16:9 */
            /*padding-top: 30px;*/ /* size of chrome */
            height: 0;
            overflow: hidden;
            z-index: 1;
            border-color: black;
        }

            .video-container iframe,
            .video-container object,
            .video-container #overlay,
            .video-container embed {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }

        #overlay {
            position: absolute;
            top: 100px;
            color: aquamarine;
            text-align: center;
            font-size: 25px;
            background-color: rgba(221, 221, 221, 0.0);
            width: 640px;
            padding: 10px 0;
            z-index: 2147483647;
            margin-top: 18em;
            font-weight: bold;
        }

        #p {
            font-weight: bold;
            color: darkcyan;
        }

        #desc {
            font-weight: bold;
            color: darkgray;
        }

        .sch {
            font-weight: bold;
            color: coral;
            font-size: x-large;
        }

        .slideanim {
            visibility: hidden;
        }

        .slide {
            animation-name: slide;
            -webkit-animation-name: slide;
            animation-duration: 1s;
            -webkit-animation-duration: 1s;
            visibility: visible;
        }

        @keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateY(70%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }

        @-webkit-keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateY(70%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }

        .custSay {
            font-size: 24px;
            text-transform: uppercase;
            text-align: center;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
            /*background-color:whitesmoke;*/
        }

        .d {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
            background-color: black;
        }

        .item h4 {
            font-size: 19px;
            line-height: 1.375em;
            font-weight: 400;
            font-style: italic;
            margin: 70px 0;
            background-color: black;
        }

        .item span {
            font-style: normal;
            background-color: black;
        }

        .btnBuy {
            padding: 10px 20px;
            background-color: darkred;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
            margin-top: 0.5em;
            border: none;
        }

        .panel-primary {
            border-color: palevioletred;
        }

            .panel-primary > .panel-heading {
                color: #ffffff;
                background-color: palevioletred;
                border-color: palevioletred;
            }
    </style>
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" runat="server" href="~/Home">AQUARIUM TICKETING SYSTEM</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a runat="server" href="~/Home">Home</a></li>
                    <%--<li><a runat="server" href="~/BuyTickets">Buy Tickets</a></li>--%>
                    <li class="active"><a runat="server" href="~/ShowDetails">Show Details</a></li>
                    <li><a runat="server" href="~/Contact">Contact Us</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <button class="btnBuy" type="submit"><span><a runat="server" href="~/BuyTickets" style="font-weight: bold">BUY TICKETS</a></span></button></li>
                    <li><a runat="server" href="~/Registration.aspx">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
                    <li><a runat="server" href="~/Login"><span id="logBTN">LogIn</span></a></li>
                </ul>

            </div>
        </div>
    </div>
    <div class="container1" style="background-image:url(../images/Image1.jpg); height: 100%; width: 100%; border: 1px solid blue;">
        <div class="row" id="parentContainer">
        </div>
    </div>
    <br>

    <script type="text/javascript">
        $(document).ready(function () {

            $.ajax({
                url: "Services/RegisterService.asmx/fetchShowDetails",
                dataType: "JSON",
                type: "POST",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    //  alert("In success" + data.d);
                    var showL = data.d;
                    $("#parentContainer").empty();
                    $.each(showL,
                            function (index, u) {
                                $("#parentContainer").append(
                                        //"<div id=\"u.Id\" class=\"row\">"
                                        "<div class=\"col-sm-6\">"
                                           + "<div class=\"panel panel-primary\">"
                                             + " <div class=\"panel-heading\" id=\"heading1\">" + u.title + "</div>"
                                                + "<div class=\"panel-body\">" + u.Description + "<br/><strong>TIMINGS: "+u.date+" "+u.time+"</strong></div>"

                                                 //   + "<div class=\"panel-footer\" id=\"footer1\">"
                                                 ////   + " <img src=\"../Images/Image" + (index + 1) + ".jpg\"  class=\"img-responsive\" style=\"width: 100%;height:30%\" alt=\"Image\" id=\"image1\">
                                                 //+ "</div>"
                                                 + "</div>"
                                              + " </div>"
                                            + " </div>"
                                          + " </div>");
                                //+ "</div>");
                            });
                }
            });
        });
    </script>
</asp:Content>

