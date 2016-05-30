<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
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
            padding-right: 10em;
            padding-left: 10em;
            padding-top: 5em;
            margin-right: auto;
            margin-left: auto;
            padding-bottom: 10em;
        }

        .well {
            margin-top: 8em;
            margin-left: 5em;
        }

        @media (min-width: 768px) {
            .col-sm-2 {
                width: 16.666666666666664%;
                text-align: center;
            }

            .col-sm-6 {
                width: 100%;
                text-align: center;
            }
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
                    <li><a runat="server" href="~/Registration.aspx">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
                    <li class="active"><a runat="server" href="Login" id="login">LogIn</a></li>
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
    <div class="container1" style="background-image: url(../images/login.jpg); height: 200%; width: 100%; border: 1px solid black;">
        <div class="row">
            <div class="col-sm-5">
                <%--<div class="container1">--%>
                <div class="panel panel-default">
                    <div class="panel-heading">Log In</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <%--<audio controls>
                                    <source src="../Images/Beep.mp3" type="audio/mpeg">
                                    Your browser does not support the audio element.
                                </audio>--%>
                            </div>
                            <div class="col-sm-6">
                                <%--<div class="alert alert-danger" role="alert">All fields are mandatory</div>--%>
                                <h6 style="color: red; text-align: right;">*All fields are mandatory</h6>
                            </div>
                        </div>
                        <div class="alert alert-danger" role="alert" style="display: none" id="messageText">...</div>
                        <%--<form>--%>
                        <div class="form-group">
                            <label for="username" class="control-label">Username:</label>
                            <input type="text" class="form-control" id="username" placeholder="Enter Username">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter Password">
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" id="rememberCHK">
                                        Remember me</label>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                               <a href="Contact">Need Help?</a> 
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default">Cancel</button>

                            <button type="button" class="btn btn-primary" id="loginBTN">Submit</button>
                        </div>
                    </div>
                </div>
                <%--</div>--%>
            </div>
            <div class="col-sm-2">
                <label style="margin-top: 10em; color: white">OR</label>
            </div>
            <div class="col-sm-5">
                <%--<div class="container2">--%>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="well" id="guestBTN" style="background-color: mediumaquamarine"><a runat="server" style="color: white;">Continue As GUEST  <span class="glyphicon glyphicon-user"></span></a></div>
                    </div>
                    <%--</div>--%>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(document).ready(function () {

            // Add the page method call as an onclick handler for the register button.
            $("#loginBTN").click(function () {

                var username = $("#username").val();
                var pwd = $("#pwd").val();
                var remMe = $("#rememberCHK").val();

                //alert(username + pwd + remMe)

                var msgError = "";
                if (username == "") {
                    msgError += "Enter Username <br/> ";

                }
                if (pwd == "") {
                    msgError += "Enter password <br/> ";
                }
                if ($('#rememberCHK').is(":checked")) {
                    remMe = true;
                }
                else {
                    remMe = false;
                }

                if (msgError != "") {
                    $("#messageText").html(msgError);
                    $("#messageText").css("display", "block");
                } else {
                    $("#messageText").css("display", "none");
                    if (username.toString() == "bearcats" && pwd.toString() == "bearcats") {
                        window.location.href = "Admin";
                    }
                    else {
                        $.ajax({
                            url: "Services/RegisterService.asmx/checkLoginDetails",
                            dataType: "text",
                            type: "POST",
                            data: { userName: username.toString(), password: pwd.toString(), rememberMe: remMe.toString() },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                            error: function (err) {
                                alert("Error:" + err.toString());
                            },

                            success: function (data) {
                                // Replace the div's content with the page method's return.
                                //alert("success:" + data);
                                //var result = $.trim(data);
                                //alert(result);
                                xmlDoc = $.parseXML(data);
                                // alert(result);
                                $xml = $(xmlDoc);
                                //alert($xml);
                                $title = $xml.find("string");
                                // alert($title);
                                // alert($title.text());
                                var result = $.trim($title.text());
                                // alert("result:" + result);


                                if (result == "Log In successfully!") {
                                    $("#username").val("");
                                    $("#pwd").val("");
                                    window.location.href = "http://localhost:65242/Home?username=" + username;
                                }
                                else {
                                   // alert("wrong")
                                    var snd = new Audio("../Images/Beep.mp3"); // buffers automatically when created
                                    snd.play();
                                    $("#messageText").css("display", "block");
                                    $("#messageText").html(data);
                                }


                                //$("#rememberCHK").val("true");
                                // window.location.href = "Home";
                                //}

                            }

                        });
                    }
                    // $.post("Services/RegisterService.asmx/checkLoginDetails", { "userName": username.toString(), "password": pwd.toString(), "rememberMe": remMe.toString() }, function (data) { alert("success") }, Text);



                }

            });

            $("#guestBTN").click(function () {
                $("#username").val("");
                $("#pwd").val("");
                window.location.href = "http://localhost:65242/Home?username=Guest";
            });
        });

    </script>
</asp:Content>

