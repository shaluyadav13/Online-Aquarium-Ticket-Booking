<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
  
    </script>
    <style>
        input, select, textarea {
            max-width: 100%;
        }

        #Request {
            margin-top: 2em;
        }

        #addDel {
            margin-top: 8em;
        }

        .btn-block {
            margin-top: -5em;
            margin-left: -1em;
            align-self: center;
        }

        .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
            color: whitesmoke;
            background-color: dimgrey;
        }

        a {
            color: white;
        }

        .panel-default > .panel-heading {
            color: whitesmoke;
            background-color: mediumaquamarine;
            border-color: #dddddd;
        }

        .btn-primary {
            border-color: white;
        }

        .btn-block1 {
            /* margin-top: -5em; */
            margin-left: -1em;
            align-self: center;
        }

        .btnApprove:hover, .btnApprove:focus {
            border: 1px solid #333;
            background-color: #fff;
            color: #000;
        }

        .btnDelete:hover, .btnDelete:focus {
            border: 1px solid #333;
            background-color: #fff;
            color: #000;
        }

        .btnApprove {
            padding: 10px 20px;
            background-color: darkgreen;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

        .btnDelete {
            padding: 10px 20px;
            background-color: red;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

        .btn-primaryApp {
            border-color: darkgreen;
        }


        .btn-primaryDel {
            border-color: red;
        }

        .container1 {
            padding-bottom: 10em;
            margin-top: -3em;
        }
    </style>
    <br />
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
                     <li><a runat="server" href="~/ShowDetails">Show Details</a></li>
                    <li class="active"><a runat="server" href="~/Admin">Admin</a></li>
                     <li><a runat="server" href="~/Contact">Contact Us</a></li>
                </ul>
                <%--<asp:LoginView runat="server" ViewStateMode="Disabled">
                    <AnonymousTemplate>--%>
                <ul class="nav navbar-nav navbar-right">
                    <li><a runat="server" href="~/Registration.aspx">Register<span class="glyphicon glyphicon-registration-mark"></span></a></li>
                    <li><a runat="server" href="~/Login">LogOut</a></li>
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
    <div class="container1" style="background-image: url(../images/sea-star.jpg); height: 200%; width: 100%; border: 1px solid black;">
        <ul class="nav nav-pills">
            <li class="active"><a data-toggle="pill" href="#Request">Requests For Registeration</a></li>
            <li><a data-toggle="pill" href="#addDel">Add/delete Shows</a></li>
        </ul>

        <div class="tab-content">

            <div id="Request" class="tab-pane fade in active">
                <div class="panel panel-default">
                    <div class="panel-heading">Pending Requests</div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table" id="tblRequest">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Username</th>
                                        <th>Submitted Date</th>
                                        <th>Approve</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody id="resultUserDiv">
                                    <%--<tr>
                                        <td>1</td>
                                        <td>Anna</td>
                                        <td>Pitt</td>
                                        <td>30/03/2016</td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Approve Request  <span class="glyphicon glyphicon-thumbs-up"></span></button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Delete Request <span class="glyphicon glyphicon-trash"></span></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>John</td>
                                        <td>Cena</td>
                                        <td>30/01/2016</td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Approve Request  <span class="glyphicon glyphicon-thumbs-up"></span></button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Delete Request <span class="glyphicon glyphicon-trash"></span></button>
                                        </td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div id="addDel" class="tab-pane fade">
                <div class="col-sm-6">
                    <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Add the shows to the list</button>
                </div>
                <!-- Trigger the modal with a button -->
                <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>
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
                <!-- Confirm Modal -->
                <div class="modal fade" id="confirmModal" role="dialog">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Confirm</h4>
                            </div>
                            <div class="modal-body">
                                <p id="pConfirm">This is a small modal.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal" id="confCloseBTN">Cancel</button>
                                <button type="button" class="btn btn-primary" id="confirmBTN">YES</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Add Show Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Add Show</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<div class="alert alert-danger" role="alert">All fields are mandatory</div>--%>
                                        <h6 style="color: red; text-align: right; margin-right: -7em;">*All fields are mandatory</h6>
                                    </div>
                                </div>
                                <div class="alert alert-danger" role="alert" style="display: none" id="error_alert">...</div>
                                <%--<form>--%>
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Title:</label>
                                    <input type="text" class="form-control" id="recipient-name" placeholder="Enter show Title">
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="control-label">Description:</label>
                                    <textarea class="form-control" id="message-text" placeholder="Enter Description about show"></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="datepicker" class="control-label">Schedule Date:</label>
                                            <input type='date' class="form-control" id="datepicker" />
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="timepicker" class="control-label">Schedule Time:</label>
                                            <input type='time' class="form-control" id="timepicker" />
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="price" class="control-label">Price:</label>
                                    <input type="text" class="form-control" id="price" placeholder="Enter Price">
                                </div>
                                <div class="form-group">
                                </div>
                                <%--</form>--%>
                            </div>
                            <%-- <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>--%>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                <button type="button" class="btn btn-primary" id="createShowBTN">Schedule Show</button>

                            </div>
                        </div>

                    </div>
                </div>
                <div id="myEditModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Edit Show</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-6">
                                        <%--<div class="alert alert-danger" role="alert">All fields are mandatory</div>--%>
                                        <h6 style="color: red; text-align: right; margin-right: -7em;">*All fields are mandatory</h6>
                                    </div>
                                </div>
                                <div class="alert alert-danger" role="alert" style="display: none" id="edit_error_alert">...</div>
                                <%--<form>--%>
                                <div class="form-group">
                                    <label for="edit_recipient-name" class="control-label">Title:</label>
                                    <input type="text" class="form-control" id="edit_recipient-name">
                                </div>
                                <div class="form-group">
                                    <label for="edit_message-text" class="control-label">Description:</label>
                                    <textarea class="form-control" id="edit_message-text"></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="edit_datepicker" class="control-label">Schedule Date:</label>
                                            <input type='date' class="form-control" id="edit_datepicker" />
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="edit_timepicker" class="control-label">Schedule Time:</label>
                                            <input type='time' class="form-control" id="edit_timepicker" />
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="edit_price" class="control-label">Price:</label>
                                    <input type="text" class="form-control" id="edit_price">
                                </div>
                                <div class="form-group">
                                </div>
                                <%--</form>--%>
                            </div>
                            <%-- <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>--%>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                <button type="button" class="btn btn-primary" id="editShowBTN">Save Edited Show</button>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">Shows List</div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table" id="tblShow">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Schedule</th>
                                        <th>Price</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody id="tblShowDetails">
                                    <%--<tr>
                                        <td>1</td>
                                        <td>XYZ</td>
                                        <td>AAAAAAAAAAAAAAAAA</td>
                                        <td>30/03/2016 7:00PM</td>
                                        <td>$25</td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Edit Show Details <span class="glyphicon glyphicon-edit"></span></button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Delete Show <span class="glyphicon glyphicon-trash"></span></button>
                                        </td>
                                    </tr>--%>
                                    <%--<tr>
                                        <td>2</td>
                                        <td>PQR</td>
                                        <td>nnnnnnnnnnnnnnn</td>
                                        <td>30/01/2016 8:30AM</td>
                                        <td>$50</td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Edit Show Details <span class="glyphicon glyphicon-edit"></span></button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-block1">Delete Show <span class="glyphicon glyphicon-trash"></span></button>
                                        </td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

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
                    $("#tblShowDetails").empty();
                    $.each(showL,
                            function (index, u) {
                                $("#tblShowDetails").append(
                                        "<tr id=\"u.Id\">"
                                        + "<td>" + (index + 1) + "</td>"
                                        + "<td style=\"display:none\" id = " + u.Id + ">" + u.Id + "</td>"
                                        + "<td>" + u.title + "</td>"
                                        + "<td>" + u.Description + "</td>"
                                        + "<td>" + u.date + " " + u.time + "</td>"
                                        + "<td>" + u.price + "$" + "</td>"
                                        + "<td>  <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"editShowDetails(this)\" id=\"editBTN\">Edit Show Details <span class=\"glyphicon glyphicon-edit\"></span></button></td>"
                                        + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"deleteShowDetails(this)\">Delete Show <span class=\"glyphicon glyphicon-trash\"></span></td>"
                                        + "</tr>");
                            });
                }
            });



            $.ajax({
                url: "Services/RegisterService.asmx/fetchRegistrationDetails",
                dataType: "JSON",
                type: "POST",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    //   alert("In success" + data.d.Id);
                    var userL = data.d;
                    $("#resultUserDiv").empty();
                    $.each(userL,
                            function (index, u) {
                                $("#resultUserDiv").append(
                                        "<tr id=\"u.Id\">"
                                        + "<td>" + (index + 1) + "</td>"
                                        + "<td style=\"display:none\" id = " + u.Id + ">" + u.Id + "</td>"
                                        + "<td>" + u.firstName + " " + u.LastName + "</td>"
                                        + "<td>" + u.Username + "</td>"
                                        + "<td>" + u.SubmittedOn.toString() + "</td>"
                                        + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"approveRequest(this)\">Approve Request  <span class=\"glyphicon glyphicon-thumbs-up\"></span></button></td></td>"
                                        + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"deleteRequest(this)\">Delete Request <span class=\"glyphicon glyphicon-trash\"></span></button></td></td>"
                                        + "</tr>");
                            });
                }
            });

            $("#createShowBTN").click(function () {
                var title = $("#recipient-name").val();
                var description = $("#message-text").val();
                var date = $("#datepicker").val();
                var time = $("#timepicker").val();
                var price = $("#price").val();
                // alert(title + description + date + time)
                var msgError = "";
                if (title == "") {
                    msgError += "Enter show title <br/> ";

                }
                if (description == "") {
                    msgError += "Enter Description about show <br/> ";
                }
                if (date == "") {
                    msgError += "Enter Date on which show is scheduled <br/> ";
                }
                if (time == "") {
                    msgError += "Enter time at which show is scheduled <br/> ";
                }
                if (price == "") {
                    msgError += "Enter price ";
                }


                if (msgError != "") {
                    $("#error_alert").html(msgError);
                    $("#error_alert").css("display", "block");
                } else {
                    $("#error_alert").css("display", "none");
                    $("#myModal").modal('hide');
                    $.ajax({
                        url: "Services/RegisterService.asmx/saveShowDetails",
                        dataType: "text",
                        type: "POST",
                        data: { title: title.toString(), desc: description.toString(), date: date.toString(), time: time.toString(), price: price },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                        error: function (err) {
                            alert("Error:" + err.toString());
                        },

                        success: function (data) {
                            // Replace the div's content with the page method's return.
                            $("#recipient-name").val("");
                            $("#message-text").val("");
                            $("#datepicker").val("");
                            $("#timepicker").val("");
                            $("#price").val("");
                            //$("#error_alert").css("display", "block");
                            //$("#error_alert").html("Show is scheduled!");
                            $("#alertModal").modal({ show: true });
                            $("#pAlert").html(data);
                            $("#alertCloseBTN").click(function () {
                                reloadShows();
                            });

                            // window.location.href = "Admin";
                        }
                    });
                }


            });

        });




        function deleteShowDetails(row) {
            // alert("deleted successfully!");
            var r = confirm("Are you sure you want to DELETE the show?");
            if (r == true) {
                var table = document.getElementById("tblShow");
                var r = row.parentNode.parentNode.rowIndex;
                // alert(r);
                // alert(table.rows[r].cells[1].id);
                var ID = table.rows[r].cells[1].id;
                // alert(ID);
                $.ajax({
                    url: "Services/RegisterService.asmx/deleteShow",
                    dataType: "text",
                    type: "POST",
                    data: { ID: ID.toString() },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                    error: function (err) {
                        alert("Error:" + err.toString());
                    },

                    success: function (data) {
                        // Replace the div's content with the page method's return.
                        alert("Deleted Successfully");
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
                                $("#tblShowDetails").empty();
                                $.each(showL,
                                        function (index, u) {
                                            $("#tblShowDetails").append(
                                                    "<tr id=\"u.Id\">"
                                                    + "<td>" + (index + 1) + "</td>"
                                                    + "<td style=\"display:none\" id = " + u.Id + ">" + u.Id + "</td>"
                                                    + "<td>" + u.title + "</td>"
                                                    + "<td>" + u.Description + "</td>"
                                                    + "<td>" + u.date + " " + u.time + "</td>"
                                                    + "<td>" + u.price + "$" + "</td>"
                                                    + "<td>  <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"editShowDetails()\">Edit Show Details <span class=\"glyphicon glyphicon-edit\"></span></button></td>"
                                                    + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"deleteShowDetails(this)\">Delete Show <span class=\"glyphicon glyphicon-trash\"></span></td>"
                                                    + "</tr>");
                                        });
                            }
                        });
                    }
                });
            }

        }

        function reloadShows() {
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
                    $("#tblShowDetails").empty();
                    $.each(showL,
                            function (index, u) {
                                $("#tblShowDetails").append(
                                        "<tr id=\"u.Id\">"
                                        + "<td>" + (index + 1) + "</td>"
                                        + "<td style=\"display:none\" id = " + u.Id + ">" + u.Id + "</td>"
                                        + "<td>" + u.title + "</td>"
                                        + "<td>" + u.Description + "</td>"
                                        + "<td>" + u.date + " " + u.time + "</td>"
                                        + "<td>" + u.price + "$" + "</td>"
                                        + "<td>  <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"editShowDetails()\">Edit Show Details <span class=\"glyphicon glyphicon-edit\"></span></button></td>"
                                        + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"deleteShowDetails(this)\">Delete Show <span class=\"glyphicon glyphicon-trash\"></span></td>"
                                        + "</tr>");
                            });
                }
            });
        }

        function editShowDetails(row) {
            var table = document.getElementById("tblShow");
            var r = row.parentNode.parentNode.rowIndex;
            //  alert(r);
            // alert(table.rows[r].cells[1].id);
            var ID = table.rows[r].cells[1].id;
            //  alert(ID);
            $.ajax({
                url: "Services/RegisterService.asmx/fetchEditShowDetails",
                dataType: "JSON",
                type: "POST",
                data: JSON.stringify({ ID: ID.toString() }),
                contentType: "application/json; charset=utf-8",
                error: function (err) {
                    alert("Error:" + err.toString());
                },
                success: function (data) {
                    // alert("Edit show" + data.d);
                    var showL = data.d;
                    var ID = "";
                    $.each(showL,
                          function (index, u) {
                              ID = u.Id;
                              $("#edit_recipient-name").val(u.title);
                              $("#edit_message-text").val(u.Description);
                              $("#edit_datepicker").val(u.date);
                              $("#edit_timepicker").val(u.time);
                              $("#edit_price").val(u.price);
                          });
                    // alert("ID:" + ID);
                    $("#myEditModal").modal({ show: true });
                    $("#editShowBTN").click(function () {
                        //  alert("ID on button click:" + ID);
                        var title = $("#edit_recipient-name").val();
                        var desc = $("#edit_message-text").val();
                        var date = $("#edit_datepicker").val();
                        var time = $("#edit_timepicker").val();
                        var price = $("#edit_price").val();
                        var msgError = "";
                        if (title == "") {
                            msgError += "Enter show title <br/> ";

                        }
                        if (desc == "") {
                            msgError += "Enter Description about show <br/> ";
                        }
                        if (date == "") {
                            msgError += "Enter Date on which show is scheduled <br/> ";
                        }
                        if (time == "") {
                            msgError += "Enter time at which show is scheduled <br/> ";
                        }
                        if (price == "") {
                            msgError += "Enter price ";
                        }

                        if (msgError != "") {
                            $("#edit_error_alert").html(msgError);
                            $("#edit_error_alert").css("display", "block");
                        } else {
                            $("#edit_error_alert").css("display", "none");
                            $("#myEditModal").modal('hide');
                            $.ajax({
                                url: "Services/RegisterService.asmx/editShowDetails",
                                dataType: "text",
                                type: "POST",
                                data: { ID: ID.toString(), title: title.toString(), desc: desc.toString(), date: date.toString(), time: time.toString(), price: price },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                                error: function (err) {
                                    alert("Error:" + err.toString());
                                },

                                success: function (data) {
                                    // Replace the div's content with the page method's return.
                                    $("#edit_recipient-name").val("");
                                    $("#edit_message-text").val("");
                                    $("#edit_datepicker").val("");
                                    $("#edit_timepicker").val("");
                                    $("#edit_price").val("");
                                    //$("#edit_error_alert").css("display", "block");
                                    //$("#edit_error_alert").html("Show Details Updated!");

                                    $("#alertModal").modal({ show: true });
                                    $("#pAlert").html(data);
                                    $("#alertCloseBTN").click(function () {
                                        reloadShows();
                                    });

                                }
                            });
                        }
                    });
                }
            });
        }
        function deleteRequest(row) {
            var r = confirm("Are you sure you want to DELETE the request?");
            if (r == true) {
                var table = document.getElementById("tblRequest");
                var r = row.parentNode.parentNode.rowIndex;
                //  alert(r);
                // alert(table.rows[r].cells[1].id);
                var ID = table.rows[r].cells[1].id;
                // alert(ID);

                $.ajax({
                    url: "Services/RegisterService.asmx/deleteRequests",
                    dataType: "text",
                    type: "POST",
                    data: { ID: ID.toString() },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                    error: function (err) {
                        alert("Error:" + err.toString());
                    },

                    success: function (data) {
                        // Replace the div's content with the page method's return.
                        alert("Deleted Successfully");
                        $.ajax({
                            url: "Services/RegisterService.asmx/fetchRegistrationDetails",
                            dataType: "JSON",
                            type: "POST",
                            data: "{}",
                            contentType: "application/json; charset=utf-8",
                            error: function (err) {
                                alert("Error:" + err.toString());
                            },
                            success: function (data) {
                                //   alert("In success" + data.d.Id);
                                var userL = data.d;
                                $("#resultUserDiv").empty();
                                $.each(userL,
                                        function (index, u) {
                                            $("#resultUserDiv").append(
                                                    "<tr id=\"u.Id\">"
                                                    + "<td>" + (index + 1) + "</td>"
                                                    + "<td style=\"display:none\" id = " + u.Id + ">" + u.Id + "</td>"
                                                    + "<td>" + u.firstName + " " + u.LastName + "</td>"
                                                    + "<td>" + u.Username + "</td>"
                                                    + "<td>" + u.SubmittedOn.toString() + "</td>"
                                                    + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"approveRequest()\">Approve Request  <span class=\"glyphicon glyphicon-thumbs-up\"></span></button></td></td>"
                                                    + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"deleteRequest(this)\">Delete Request <span class=\"glyphicon glyphicon-trash\"></span></button></td></td>"
                                                    + "</tr>");
                                        });
                            }
                        });
                    }
                });
            }

        }
        function approveRequest(row) {
            //$("#confirmModal").modal({ show: true });
            //$("#pConfirm").html("Are you sure you want to APPROVE the request?");
            var rm = confirm("Are you sure you want to APPROVE the request?");
            if (rm == true) {
                var table = document.getElementById("tblRequest");
                var r = row.parentNode.parentNode.rowIndex;
                // alert(r);
                // alert(table.rows[r].cells[1].id);
                var ID = table.rows[r].cells[1].id;
                // alert(ID);
                $.ajax({
                    url: "Services/RegisterService.asmx/approveRequests",
                    dataType: "text",
                    type: "POST",
                    data: { ID: ID.toString() },                         //'{firstName : "'+ fname + '", lastName : "'+ lname +'", userName : "'+ uname + '" , password :"' + pwd +'"}',
                    error: function (err) {
                        alert("Error:" + err.toString());
                    },

                    success: function (data) {
                        // Replace the div's content with the page method's return.
                        alert("Approved Successfully!");
                        $.ajax({
                            url: "Services/RegisterService.asmx/fetchRegistrationDetails",
                            dataType: "JSON",
                            type: "POST",
                            data: "{}",
                            contentType: "application/json; charset=utf-8",
                            error: function (err) {
                                alert("Error:" + err.toString());
                            },
                            success: function (data) {
                                //   alert("In success" + data.d.Id);
                                var userL = data.d;
                                $("#resultUserDiv").empty();
                                $.each(userL,
                                        function (index, u) {
                                            $("#resultUserDiv").append(
                                                    "<tr id=\"u.Id\">"
                                                    + "<td>" + (index + 1) + "</td>"
                                                    + "<td style=\"display:none\" id = " + u.Id + ">" + u.Id + "</td>"
                                                    + "<td>" + u.firstName + " " + u.LastName + "</td>"
                                                    + "<td>" + u.Username + "</td>"
                                                    + "<td>" + u.SubmittedOn.toString() + "</td>"
                                                    + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"approveRequest()\">Approve Request  <span class=\"glyphicon glyphicon-thumbs-up\"></span></button></td></td>"
                                                    + "<td> <button type=\"button\" class=\"btn btn-primary btn-block1\" onClick=\"deleteRequest(this)\">Delete Request <span class=\"glyphicon glyphicon-trash\"></span></button></td></td>"
                                                    + "</tr>");
                                        });
                            }
                        });
                    }
                });
            }
            else {

            }
        }
    </script>

</asp:Content>
