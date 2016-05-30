<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
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
    </style>
    <%--<iframe src="https://player.vimeo.com/video/145891501?autoplay=1&loop=1&title=0&byline=0&portrait=0" width="1348" height="700"></iframe>--%>
    <%--   <div id="overlay">
        hello
    </div>--%>
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
                    <li class="active"><a runat="server" href="~/Home">Home</a></li>
                    <%--<li><a runat="server" href="~/BuyTickets">Buy Tickets</a></li>--%>
                    <li><a runat="server" href="~/ShowDetails">Show Details</a></li>
                    <li><a runat="server" href="~/Contact">Contact Us</a></li>
                </ul>
                <%--<asp:LoginView runat="server" ViewStateMode="Disabled">
                    <AnonymousTemplate>--%>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <button class="btnBuy" type="submit"><span><a runat="server" href="~/BuyTickets" style="font-weight: bold">BUY TICKETS</a></span></button></li>
                    <li><a runat="server" href="~/Registration.aspx">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
                    <li><a runat="server" href="~/Login"><span id="logBTN">LogIn</span></a></li>
                </ul>
                <%--  </AnonymousTemplate>
                    <LoggedInTemplate>--%>
                <%--  <ul class="nav navbar-nav navbar-right">
                            <li><a runat="server" href="~/Account/Manage" title="Manage your account">Hello, <%: Context.User.Identity.GetUserName()  %>!</a></li>
                            <li>
                                <asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" OnLoggingOut="Unnamed_LoggingOut" />
                            </li>
                        </ul>--%>
                <%--    </LoggedInTemplate>
                </asp:LoginView>--%>
            </div>
        </div>
    </div>

    <div class="video-container">
        <iframe src="https://player.vimeo.com/video/145891501?wmode=opaque&autoplay=1&loop=1&title=0&byline=0&portrait=0"></iframe>
        <div id="overlay">
            <h3>"The world’s finest wilderness lies beneath the waves …"</h3>
            <h3>— Wyland, Marine Life Artist</h3>
        </div>
    </div>

    <div id="schedule" class="container1">
        <div class="row">
            <div class="col-sm-6">
                <h1>Plan Your Aquarium Visit</h1>
                <p id="p">Visiting Hours</p>
                <div class="row sch">
                    <div class="col-sm-6">
                        MON - THU
                    </div>
                    <div class="col-sm-6">
                        9 am - 5 pm
                    </div>
                </div>
                <div class="row sch">
                    <div class="col-sm-6">
                        FRI
                    </div>
                    <div class="col-sm-6">
                        9 am - 8 pm
                    </div>
                </div>
                <div class="row sch">
                    <div class="col-sm-6">
                        SAT - SUN
                    </div>
                    <div class="col-sm-6">
                        9 am - 5 pm
                    </div>
                </div>
                <div class="row">
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-12" id="desc">
                        Visitors may tour up to 90 minutes after the last entry. For your best experience, visit before 11 am or after 3 pm.
                    </div>
                </div>
                <div class="row">
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-3">
                        <button class="btn" type="submit" id="butBTN">BUY TICKETS</button>
                    </div>
                    <div class="col-sm-3">
                        <button class="btn" type="submit">PARKING/DIRECTIONS</button>
                    </div>
                </div>

            </div>
            <div class="col-sm-6">
                <img src="..\Images\dolphin.jpg" alt="dolphin" width="500" height="500">
            </div>
        </div>

    </div>

    <div class="container1">
        <h2 class="custSay">What our visitors say</h2>
        <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <h4 class="d">" I am so happy with the result!"<br>
                        <span style="font-style: normal;">Michael Roe, Vice President</span></h4>
                </div>
                <div class="item">
                    <h4 class="d">"One word... WOW!!"<br>
                        <span style="font-style: normal;">John Doe</span></h4>
                </div>
                <div class="item">
                    <h4 class="d">"I enjoyed alot here...its amazing!"<br>
                        <span style="font-style: normal;">Chandler Bing, Actor</span></h4>
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
    <br />
    <br />
    <br />

    <div id="contact" class="container1">
        <h2 class="custSay">About Us</h2>
        <p class="text-center"><em>We love our customers!</em></p>

        <div class="row">
            <div class="col-md-4">
                <p>Reach to us at..</p>
                <p><span class="glyphicon glyphicon-map-marker"></span>Maryville, US</p>
                <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
                <p><span class="glyphicon glyphicon-envelope"></span>Email: powerwhales@gmail.com</p>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
                <br>
                <div class="row">
                    <div class="col-md-12 form-group">
                        <button class="btn pull-right" type="submit">Send <span class="glyphicon glyphicon-send"></span></button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- carousal for home page --%>
    <%--<div id="myCarousel" class="carousel slide" data-ride="carousel">
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
                <img src="..\Images\shark.jpg" alt="Shark" width="1200" height="700">
                <div class="carousel-caption">
                    <h3>Carribean Shark</h3>
                    <p>It is found in the tropical waters of the western Atlantic Ocean.</p>
                </div>
            </div>

            <div class="item">
                <img src="..\Images\crab.jpg" alt="Lyon-Fish" width="1200" height="700">
                <div class="carousel-caption">
                    <h3>White Beach Crab</h3>
                    <p>About 850 species of crab are freshwater, terrestrial or semi-terrestrial species.</p>
                </div>
            </div>

            <div class="item">
                <img src="..\Images\tortoise.jpg" alt="Tortoise" width="1200" height="700">
                <div class="carousel-caption">
                    <h3>Tortoise</h3>
                    <p>Tortoises generally have one of the longest lifespans of any animal, and some individuals are known to have lived longer than 150 years.</p>
                </div>
            </div>

              <div class="item">
                <img src="..\Images\Killerwhales.jpg" alt="Snakehead Fish" width="1200" height="700">
                <div class="carousel-caption">
                    <h3>Killer Whale</h3>
                    <p>The killer whale, also referred to as the orca whale or orca, and less commonly as the blackfish or grampus, is a toothed whale belonging to the oceanic dolphin family, of which it is the largest member.</p>
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
    </div>--%>

    <script type="text/javascript">
        $(function () {
            $('#butBTN').click(function () { window.location = 'BuyTickets.aspx' });
        });
        $(document).ready(function () {
            $(function () {
                var getUrlParameter = function getUrlParameter(sParam) {
                    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
                        sURLVariables = sPageURL.split('&'),
                        sParameterName,
                        i;

                    for (i = 0; i < sURLVariables.length; i++) {
                        sParameterName = sURLVariables[i].split('=');

                        if (sParameterName[0] === sParam) {
                            return sParameterName[1] === undefined ? true : sParameterName[1];
                        }
                    }
                };

                var uName = getUrlParameter('username');

               // alert("uname:" + uName);
                if (uName.toString() == "Guest") {
                    $("#logBTN").html("Guest");
                }
                else if (uName.toString() != "undefined") {
                    document.getElementById("logBTN").innerText = "LogOut";
                }
                else {
                    document.getElementById("logBTN").innerText = "LogIn";
                }

            });
        });
    </script>
</asp:Content>
