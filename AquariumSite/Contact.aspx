<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        input,
        select,
        textarea {
            max-width: 100%;
        }

        .container1 {
            padding-right: 10em;
            padding-left: 10em;
            padding-top: 15em;
            padding-bottom:15em;
            margin-right: auto;
            margin-left: auto;
        }

        .panel-default > .panel-heading {
            color: whitesmoke;
            background-color: darkcyan;
            border-color: #dddddd;
        }

     

        .panel-info {
            border-color: #bce8f1;
            margin-top: -2em;
        }

        .panel-default {
            border-color: #dddddd;
            margin-top: -5em;
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
                    <%-- <li><a runat="server" href="~/BuyTickets">Buy Tickets</a></li>--%>
                    <li><a runat="server" href="~/ShowDetails">Show Details</a></li>
                    <li class="active"><a runat="server" href="~/Contact">Contact Us</a></li>
                </ul>
               
                <ul class="nav navbar-nav navbar-right">
                    <li><a runat="server" href="~/Registration.aspx">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
                    <li><a runat="server" href="~/Login">LogIn</a></li>
                </ul>
          
            </div>
        </div>
    </div>

    <div id="contact" class="container1" style="background-image: url(../images/contactUs.jpg); height: 200%; width: 100%; border: 1px solid black;">
        
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">Customer? Drop a note.</div>
                    <div class="panel-body">
                        <p><span class="glyphicon glyphicon-map-marker"></span>Maryville, US</p>
                        <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
                        <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>

                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-heading">Contact Us</div>
                    <div class="panel-body">
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
        </div>
    </div>
</asp:Content>
