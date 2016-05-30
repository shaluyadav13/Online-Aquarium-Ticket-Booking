<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuyTickets.aspx.cs" Inherits="BuyTickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <%--<script class="cssdesk" src="//arshaw.com/js/fullcalendar-1.5.3/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>--%>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.0/css/bootstrap-combined.min.css" rel="stylesheet" />
    <link href="//arshaw.com/js/fullcalendar-1.5.3/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <link href="http://arshaw.com/js/fullcalendar-1.5.3/fullcalendar/fullcalendar.print.css" rel="stylesheet" />
    <script class="cssdesk" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
    <script class="cssdesk" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js" type="text/javascript"></script>
    <script class="cssdesk" src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.0/js/bootstrap.min.js" type="text/javascript"></script>
    <script class="cssdesk" src="//arshaw.com/js/fullcalendar-1.5.3/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <style>
        /* CSS */
        body {
            /* margin-top: 40px; */
            text-align: center;
            font-size: 14px;
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
        }

        #calendar {
            width: 100%;
            margin: 0 auto;
        }

        .container1 {
            margin-left: 10em;
            margin-right: 10em;
        }

        .navbar .nav > li > a {
            float: none;
            /* padding: 10px 15px 10px; */
            color: #555555;
            text-decoration: none;
            text-shadow: 0 1px 0 #ffffff;
        }

        .progress-bar-primary {
            background-color: yellow;
        }

        .progress-striped .progress-bar-primary {
            background-image: linear-gradient(45deg, rgba(255, 255, 255, .75) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .75) 50%, rgba(255, 255, 255, .75) 75%, transparent 75%, transparent);
        }

        @media (min-width: 1200px) {
            .container, .navbar-static-top .container, .navbar-fixed-top .container, .navbar-fixed-bottom .container {
                width: 1300px;
            }
        }

        .fc-header-title h2 {
            margin-top: 0;
            font-size: inherit;
            white-space: nowrap;
        }

        .fc-content {
            clear: both;
            background-color: white;
        }

        .panel-info > .panel-heading {
            color: white;
            background-color: #075E8A;
            border-color: #bce8f1;
        }

        .panel-heading {
            /* padding: 10px 15px; */
            border-bottom: 1px solid transparent;
            border-top-right-radius: 3px;
            border-top-left-radius: 3px;
            border-radius: 3px;
            margin-left: 1em;
            margin-right: 1em;
            /* text-align: center; */
        }

        .fc-content td:hover {
            background: #adf4fa;
        }
    </style>


    <div class="container1">

        <div class="progress progress-striped active">
            <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                <span class="sr-only">20% Complete</span>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5">
                <h5 style="color: seagreen">SELECT DATE</h5>
                <div id='calendar'></div>
            </div>
            <div class="col-sm-1">
            </div>
            <div class="col-sm-6">
                <div class="row well" style="background-color: white">
                    <div class="col-sm-6">
                        <p style="font-weight: bold">MEMBER EVENTS AND PRICING</p>
                    </div>
                    <div class="col-sm-6">
                        <button type="button" class="btn btn-primary btn-block1" style="background-color: darkred; border: none">MEMBER AREA</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="panel panel-info">
                            <div class="panel-heading"><b>HOURS</b></div>
                            <div class="panel-body">
                                <p style="font-weight: bold">APRIL HOURS</p>
                                <p style="text-align: left; font-size: 12px;">Mon-Thr <span style="font-weight: bold">9 am-5 pm</span> </p>
                                <p style="text-align: left; font-size: 12px;">Fri <span style="font-weight: bold">9 am-8 pm</span></p>
                                <p style="text-align: left; font-size: 12px;">Sat <span style="font-weight: bold">9 am-6 pm</span></p>
                                <p style="text-align: left; font-size: 12px;">Sun <span style="font-weight: bold">9 am-5 pm</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-5">
                        <div class="panel panel-info">
                            <div class="panel-heading"><b>VISITOR TIPS</b></div>
                            <div class="panel-body"><b><i style="font-size: small">By buying online,you skip the line! </i></b></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script type="text/javascript">
        /* Javascript */

        var selectedDate;
        var selDate;
        var selMonth;
        var selYear;

        $(function () {
            var date = new Date();
            var d = date.getDate();
            var m = date.getMonth();
            var y = date.getFullYear();

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month'
                },
                editable: false,
    
                dayClick: function (date, cell) {

                    selDate = date.getDate();
                    selMonth = date.getMonth() + 1;
                    selYear = date.getFullYear();

                    selectedDate = date.format();
                    //alert('Clicked on day: ' + selDate);
                    //alert('Clicked on month: ' + selMonth);
                    //alert('Clicked on year: ' + selYear);

                    var myDate = new Date();
                    var daysToAdd = -1;
                    myDate.setDate(myDate.getDate() + daysToAdd);
                    if (date < myDate) {
                        //TRUE Clicked date smaller than today + daysToadd
                        alert("You cannot book on this day as date is already passed!");
                    } else {
                        //FALSE Clicked date larger than today + daysToadd
                        window.location.href = "BuyTickets-Step2?dateSlected=" + selDate + "&monthSelected=" + selMonth + "&yearSelected=" + selYear;
                        alert("Excellent choice! You can book today..");
                    }
                }
            });
        });



    </script>
</asp:Content>

