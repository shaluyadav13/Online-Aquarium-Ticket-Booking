<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <style>
        .panel-default > .panel-heading {
            color: whitesmoke;
            background-color: mediumaquamarine;
            border-color: #dddddd;
        }

        input, select, textarea {
            max-width: 100%;
        }

        .container1 {
            padding-right: 30em;
            padding-left: 30em;
            padding-top: 2em;
            margin-right: auto;
            margin-left: auto;
            padding-bottom:15em;
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
                    <li><a runat="server" href="~/ShowDetails">Show Details</a></li>
                    <li><a runat="server" href="~/Contact">Contact Us</a></li>
                </ul>
                <%--<asp:LoginView runat="server" ViewStateMode="Disabled">
                    <AnonymousTemplate>--%>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a runat="server" href="~/Registration.aspx">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
                    <li><a runat="server" href="~/Login">LogIn</a></li>
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
    <!-- Alert Modal -->
    <div class="modal fade" id="alertModal" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Alert</h4>
                </div>
                <div class="modal-body">
                    <h2 id="pAlert" style="text-align: center">This is a small modal.</h2>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="alertCloseBTN">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container1" style="background-image: url(../images/sea-star.jpg); height: 200%; width: 100%; border: 1px solid black;">
        <div class="panel panel-default">
            <div class="panel-heading">Registration</div>
            <div class="panel-body">
                 <div class="row">
                            <div class="col-sm-4">

                            </div>
                            <div class="col-sm-6">
                                 <%--<div class="alert alert-danger" role="alert">All fields are mandatory</div>--%>
                                <h6 style="color:red;text-align:right;margin-right:-5em;">*All fields are mandatory</h6>
                            </div>
                        </div>
                <div class="alert alert-danger" role="alert" style="display: none" id="messageText"></div>
                <%--<form>--%>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="fname" class="control-label">First Name:</label>
                            <input type="text" class="form-control" id="fname" placeholder="Enter your First Name">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="lname" class="control-label">Last Name:</label>
                            <input type="text" class="form-control" id="lname" placeholder="Enter your Last Name">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="control-label">Username:</label>
                    <input type="text" class="form-control" id="username" placeholder="Enter Username">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Enter Password">
                </div>
                <div class="form-group">
                    <label for="confpwd">Confirm Password:</label>
                    <input type="password" class="form-control" id="confpwd" placeholder="Confirm Password">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default">Cancel</button>

                    <button type="button" class="btn btn-primary" id="registerBTN">Register</button>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">

        $(document).ready(function () {

            // Add the page method call as an onclick handler for the register button.
            $("#registerBTN").click(function () {
                var fname = $("#fname").val();
                var lname = $("#lname").val();
                var uname = $("#username").val();
                var password = $("#pwd").val();
                var cpwd = $("#confpwd").val();
                // alert(lname + uname + password)
                var msgError = "";
                if (fname == "") {
                    msgError += "Enter First Name <br/> ";

                }
                if (lname == "") {
                    msgError += "Enter Last Name <br/> ";
                }
                if (uname == "") {
                    msgError += "Enter Username <br/> ";
                }
                if (password == "") {
                    msgError += "Enter Password<br/> ";
                }
                if (cpwd == "") {
                    msgError += "Enter confirm password <br/> ";
                }
                if (password != "") {
                    if (cpwd != "") {
                        if (password != cpwd) {
                            msgError += "Password and confirm password should be same <br/>";
                        }
                    }
                }

                if (msgError != "") {
                    $("#messageText").html(msgError);
                    $("#messageText").css("display", "block");
                } else {
                    $("#messageText").css("display", "none");

                    $.ajax({
                        url: "Services/RegisterService.asmx/saveRegistrationDetails",
                        dataType: "text",
                        type: "POST",
                        data: { firstName: fname.toString(), lastName: lname.toString(), userName: uname.toString(), password: password.toString() },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                        error: function (err) {
                            alert("Error:" + err.toString());
                        },

                        success: function (data) {
                            // Replace the div's content with the page method's return.
                            $("#messageText").css("display", "block");
                            $("#messageText").html("Your registered successfully!");
                            $("#fname").val("");
                            $("#lname").val("");
                            $("#username").val("");
                            $("#pwd").val("");
                            $("#confpwd").val("");
                            $("#alertModal").modal({ show: true });
                            $("#pAlert").html("Your registered successfully!");
                            $("#alertCloseBTN").click(function () {
                                window.location.href = "Login";
                            });
                           
                        }
                    });
                }

            });
        });

    </script>
</asp:Content>

