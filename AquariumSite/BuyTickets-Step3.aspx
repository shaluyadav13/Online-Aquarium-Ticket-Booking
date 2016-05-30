<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuyTickets-Step3.aspx.cs" Inherits="BuyTickets_Step3" %>

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
            <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                <span class="sr-only">80% Complete</span>
            </div>
        </div>
        <div class="row" style="margin-top: 5em;">
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-heading">CHILD</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <h6>10% Discount</h6>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                                            Quantity
                                        <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">0</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></li>
                                            <%--  <li role="presentation" class="divider"></li>--%>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></li>
                                            <%--  <li role="presentation" class="divider"></li>--%>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-heading">ADULT</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <h6>Membership Discount</h6>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="menu2" data-toggle="dropdown">
                                            Quantity
                                        <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">0</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></li>
                                            <%--  <li role="presentation" class="divider"></li>--%>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></li>
                                            <%--  <li role="presentation" class="divider"></li>--%>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-heading">SENIOR CITIZEN</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <h6>5% Discount</h6>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div>
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                                            Quantity
                                        <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">0</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">1</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">2</a></li>
                                            <%--  <li role="presentation" class="divider"></li>--%>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">3</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">5</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">6</a></li>
                                            <%--  <li role="presentation" class="divider"></li>--%>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">7</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">8</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">9</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">10</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <h5 style="font-weight:bold;text-align:left">Other Addons (Optional):</h5>
        </div>
        <div class="row" style="text-align:left">
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">Check this if you need Guide-Maps,GPS</label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">Check this if you need Pick/Drop facility</label>
            </div>
            <div class="checkbox disabled">
                <label>
                    <input type="checkbox" value="">Check this if you need Snacks/lunch</label>
            </div>

        </div>
        <div class="row">
            <button type="button" class="btn btn-success" style="margin-left:45em">Order</button>
        </div>

    </div>
</asp:Content>

