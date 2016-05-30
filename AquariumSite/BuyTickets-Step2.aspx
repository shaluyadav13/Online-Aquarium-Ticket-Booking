<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuyTickets-Step2.aspx.cs" Inherits="BuyTickets_Step2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
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
            padding-bottom: 15em;
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

        .list-group {
            padding-left: 0;
            margin-bottom: 20px;
            TEXT-ALIGN: LEFT;
            font-weight: bold;
        }

        .panel-default > .panel-heading {
            color: white;
            background-color: mediumaquamarine;
            border-color: mediumaquamarine;
            font-weight: bold;
        }

        a.list-group-item {
            color: mediumaquamarine;
        }



            a.list-group-item:hover, a.list-group-item:focus {
                text-decoration: none;
                background-color: mediumaquamarine;
                color: white;
            }

        .fc-content td:hover {
            background: #adf4fa;
        }
    </style>
    <div class="container1">
        <div class="progress progress-striped active">
            <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                <span class="sr-only">50% Complete</span>
            </div>
        </div>
        <div class="row">

            <div class="col-sm-1">
            </div>
            <div class="col-sm-12">

                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-heading">CHOOSE YOUR ENTRY TIME</div>
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item" id="morning">MORNING +</a>
                                <div class="list-group" style="display: none; background-color: aliceblue" id="morningContent">
                                    <a href="#" class="list-group-item">Dolphin</a>
                                    <a href="#" class="list-group-item">Killer whale</a>
                                </div>
                                <a href="#" class="list-group-item" id="afternoon">AFTERNOON +</a>
                                <div class="list-group" style="display: none; background-color: aliceblue" id="afternoonContent">
                                    <a href="#" class="list-group-item">Dolphin</a>
                                    <a href="#" class="list-group-item">Killer whale</a>
                                </div>
                                <a href="#" class="list-group-item" id="evening">EVENING +</a>
                                <div class="list-group" style="display: none; background-color: aliceblue" id="eveningContent">
                                    <a href="#" class="list-group-item">Dolphin</a>
                                    <a href="#" class="list-group-item">Killer whale</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script type="text/javascript">
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

            var day = getUrlParameter('dateSlected');
            var month = getUrlParameter('monthSelected');
            var year = getUrlParameter('yearSelected');
            if (month < 10)
            {
                var date = year.toString() + "-0" + month.toString() + "-" + day.toString();
            } else {
                var date = year.toString() + "-" + month.toString() + "-" + day.toString();
            }
            
           // alert(date)
            $("#morning").click(function () {
                $("#afternoonContent").css("display", "none");
                $("#eveningContent").css("display", "none");
              //  alert("morning clicked")
                $.ajax({
                    url: "Services/RegisterService.asmx/scheduledShowsMorning",
                    dataType: "JSON",
                    type: "POST",
                    data: JSON.stringify({ date: date.toString() }),
                    contentType: "application/json; charset=utf-8",
                    error: function (err) {
                        alert("Error:" + err.toString());
                    },
                    success: function (data) {
                      //  alert("In success" + data);
                        var showL = data.d;
                      //  alert(showL);
                        $("#morningContent").empty();
                        if (showL.length != 0) {
                            $.each(showL,
                                    function (index, u) {

                                        $("#morningContent").append(
                                            " <a href=\"BuyTickets-Step3\" class=\"list-group-item\">" + u.title + "</a>"
                                            );
                                    }

                            );
                            $("#morningContent").css("display", "block");
                        }
                        else
                        {
                            alert("All tickets are booked for morning. Please choose some other date");
                            window.location.href = "BuyTickets";

                        }
            }
            });
            });

            $("#afternoon").click(function () {
                $("#morningContent").css("display", "none");
                $("#eveningContent").css("display", "none");
              //  alert("afternoon clicked")
                $.ajax({
                    url: "Services/RegisterService.asmx/scheduledShowsAfternoon",
                    dataType: "JSON",
                    type: "POST",
                    data: JSON.stringify({ date: date.toString() }),
                    contentType: "application/json; charset=utf-8",
                    error: function (err) {
                        alert("Error:" + err.toString());
                    },
                    success: function (data) {
                  //      alert("In success" + data);
                        var showL = data.d;
                    //    alert(showL);
                        $("#afternoonContent").empty();
                        if (showL.length != 0) {
                            $.each(showL,
                                    function (index, u) {

                                        $("#afternoonContent").append(
                                            " <a href=\"BuyTickets-Step3\" class=\"list-group-item\">" + u.title + "</a>"
                                            );
                                    }

                            );
                            $("#afternoonContent").css("display", "block");
                        } else {
                            alert("All tickets are booked for afternoon. Please choose some other date");
                            window.location.href = "BuyTickets";
                        }
                    }
                });
            });
            $("#evening").click(function () {
                $("#morningContent").css("display", "none");
                $("#afternoonContent").css("display", "none");
               // alert("evening clicked")
                $.ajax({
                    url: "Services/RegisterService.asmx/scheduledShowsEvening",
                    dataType: "JSON",
                    type: "POST",
                    data: JSON.stringify({ date: date.toString() }),
                    contentType: "application/json; charset=utf-8",
                    error: function (err) {
                        alert("Error:" + err.toString());
                    },
                    success: function (data) {
                      //  alert("In success" + data);
                        var showL = data.d;
                       // alert(showL);
                        $("#eveningContent").empty();
                        if (showL.length != 0) {
                            $.each(showL,
                                    function (index, u) {

                                        $("#eveningContent").append(
                                            " <a href=\"BuyTickets-Step3\" class=\"list-group-item\">" + u.title + "</a>"
                                            );
                                    }
                            );
                            $("#eveningContent").css("display", "block");
                        }else
                        {
                            alert("All tickets are booked for evening. Please choose some other date");
                            window.location.href = "BuyTickets";
                        }
                    }
                });
            });
        });
      
    </script>
</asp:Content>

