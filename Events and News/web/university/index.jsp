
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>university</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <script src="lib/chart-master/Chart.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>      

            #b{

                display: none;
            }
            #c{

                display: none;
            }
            #d{

                display: none;
            }
            #e{

                display: none;
            }
          
        </style>
    </head>

    <body>
        <section id="container">

            <header class="header black-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>


                <!-- notification dropdown end -->
                </ul>
                <!--  notification end -->
                </div>
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                        <li><a class="logout" href="../home.jsp">Logout</a></li>
                    </ul>
                </div>
            </header>
            <!--header end-->
            <!-- **********************************************************************************************************************************************************
                MAIN SIDEBAR MENU
                *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <p class="centered"><a href="profile.html"><img src="img/ui-sam.png" class="img-circle" width="80"></a></p>
                        <h5 class="centered">university</h5>

                        <li class="sub-menu">
                            <a href="#" onclick="bopen();aclose();cclose();dclose();eclose();fclose();">
                                <i class="fa fa-user"></i>
                                <span>New Student register</span>
                            </a>

                        </li>
                        <li class="sub-menu">
                            <a href="#" onclick="copen();aclose();bclose();dclose();eclose();fclose();">
                                <i class="fa fa-info"></i>
                                <span>Student Detail</span>
                            </a>

                        </li>
                        <li class="sub-menu">
                            <a href="#" onclick="dopen();aclose();bclose();cclose();eclose();fclose();">
                                <i class="fa fa-book"></i>
                                <span>New Event/New News</span>
                            </a>

                        </li>
                        <li class="sub-menu">
                            <a href="#" onclick="eopen();aclose();bclose();cclose();dclose();fclose();">
                                <i class="fa fa-tasks"></i>
                                <span>Events/NEWS details</span>
                            </a>

                        </li>
<!--                

                        <!-- sidebar menu end-->
                </div>
            </aside>

            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="dd" id="a">
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Student ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Username</th>
                                        <th scope="col">Email</th>
                                    </tr>
                                </thead>
                                <%
                                        DBCon obj = new DBCon();
                                        Connection con = obj.getConnection();
                                        Statement st = con.createStatement();
                                        ResultSet res = st.executeQuery("SELECT * FROM  users where type='student'");
                                        while (res.next()) {
                                            String id = res.getString("studentID");
                                            String name = res.getString("name");
                                            String email = res.getString("email");
                                            String username = res.getString("username");
                                    %>
                                <tbody>
                                    <tr>
                                        <th scope="row"><% out.println(id); %></th>
                                        <td><% out.println(name); %></td>
                                        <td><% out.println(username); %></td>
                                        <td><% out.println(email); %></td>
                                    </tr>
                                    <%
                                    }
                                %> 
                                </tbody>
                            </table>
                        </div>
                        <script>
                            function aopen() {
                                document.getElementById("a").style.display = "block";
                            }
                            function aclose() {
                                document.getElementById("a").style.display = "none";

                            }</Script>

                        <div class="dd" id="b">

                            <form action="../studentReg" method="POST">
                                <div class="container">
                                    <h1>Register</h1>
                                    <p>Please fill in this form to create an account.</p>
                                    <hr><label for="name"><b>Name</b></label>: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" placeholder="Enter Name" name="name" required>  </br> 
                                    </br></br
                                    </br></br><label for="id"><b>Student Id</b></label> :&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" placeholder="Enter Id" name="stdId" required>  </br> 
                                    </br></br </br>
                                    
                                    </br></br><label for="id"><b>Username</b></label> :&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" placeholder="Enter usrname" name="uname" required>  </br> 
                                    </br></br </br>
 
                                    <label for="email"><b>Email</b></label>: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" placeholder="Enter Email" name="email" required>  </br> 
                                    </br></br>
                                    <label for="psw"><b>Password</b></label>:&nbsp&nbsp&nbsp&nbsp
                                    <input type="password" placeholder="Enter Password" name="password" required> </br></br>   </br>
                                    <hr>

                                    <button type="submit" class="registerbtn">Register</button>
                                </div>

                            </form>              





                        </div>
                        <script>
                            function bopen() {
                                document.getElementById("b").style.display = "block";
                            }
                            function bclose() {
                                document.getElementById("b").style.display = "none";

                            }</Script>

                        <div class="dd" id="c">
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Username</th>
                                        <th scope="col">password</th>
                                        <th scope="col">Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        DBCon obj1 = new DBCon();
                                        Connection con1 = obj.getConnection();
                                        Statement st1 = con.createStatement();
                                        ResultSet res1 = st.executeQuery("SELECT * FROM  users where type='student'");
                                        while (res1.next()) {
                                            String id = res1.getString("id");
                                            String name = res1.getString("name");
                                            String username = res1.getString("username");
                                             String password= res1.getString("password");
                                            String email = res1.getString("email");
                                            
                                    %>
                                    <tr>
                                        <th scope="row"><% out.println(id); %></th>
                                        <td><% out.println(name); %></td>
                                        <td><% out.println(password); %></td>
                                        <td><% out.println(username); %></td>
                                        <td><% out.println(email); %></td>
                                    </tr>
                                    <%
                                        }
                                    %> 
                                </tbody>
                            </table>
                        </div>
                        <script>
                            function copen() {
                                document.getElementById("c").style.display = "block";
                            }
                            function cclose() {
                                document.getElementById("c").style.display = "none";

                            }</Script>

                        <div class="dd" id="d">


                            <div class="container">
                                <h2>Add New Event</h2>
                                <form action="../addPost" method="POST">
                                    <div class="form-group">
                                        <label for="email">Post Title</label>
                                        <input type="text" class="form-control" id="email" placeholder="Enter title" name="pTitle">
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Post Body</label>
                                        <input type="textarea"   rows="6" cols="50" class="form-control" id="pwd" placeholder="Body" name="pBody">
                                    </div>
                                    <div class="checkbox">
                                        <input type="radio" name="type" value="public">Public<br>
                                        <input type="radio" name="type" value="private">Private<br>
                                    </div>
                                    <button type="submit" class="btn btn-default">Submit</button>
                                </form>
                            </div>







                        </div>
                        <script>
                            function dopen() {
                                document.getElementById("d").style.display = "block";
                            }
                            function dclose() {
                                document.getElementById("d").style.display = "none";

                            }</Script>

                        <div class="dd" id="e">
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Title</th>
                                        <th scope="col">Body</th>
                                        <th scope="col">Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        DBCon obj2 = new DBCon();
                                        Connection con2 = obj.getConnection();
                                        Statement st2 = con.createStatement();
                                        ResultSet res2 = st.executeQuery("SELECT * FROM  event");
                                        while (res2.next()) {
                                            String id = res2.getString("id");
                                            String title = res2.getString("title");
                                            String body = res2.getString("body");
                                            String type = res2.getString("type");
                                    %>
                                    <tr>
                                        <th scope="row"><% out.println(id); %></th>
                                        <td><% out.println(title); %></td>
                                        <td><% out.println(body); %></td>
                                        <td><% out.println(type); %></td>
                                    </tr>
                                    <%
                                        }
                                    %> 
                                </tbody>
                            </table>
                        </div>
                        <script>
                            function eopen() {
                                document.getElementById("e").style.display = "block";
                            }
                            function eclose() {
                                document.getElementById("e").style.display = "none";

                            }</Script>

         
                        <!--footer end-->
                </section>
                <!-- js placed at the end of the document so the pages load faster -->
                <script src="lib/jquery/jquery.min.js"></script>

                <script src="lib/bootstrap/js/bootstrap.min.js"></script>
                <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
                <script src="lib/jquery.scrollTo.min.js"></script>
                <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
                <script src="lib/jquery.sparkline.js"></script>
                <!--common script for all pages-->
                <script src="lib/common-scripts.js"></script>
                <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
                <script type="text/javascript" src="lib/gritter-conf.js"></script>
                <!--script for this page-->
                <script src="lib/sparkline-chart.js"></script>
                <script src="lib/zabuto_calendar.js"></script>
                <script type="text/javascript">
                            $(document).ready(function() {
                            var unique_id = $.gritter.add({
                            // (string | mandatory) the heading of the notification

                </script>
                <script type="application/javascript">
                    $(document).ready(function() {
                    $("#date-popover").popover({
                    html: true,
                    trigger: "manual"
                    });
                    $("#date-popover").hide();
                    $("#date-popover").click(function(e) {
                    $(this).hide();
                    });

                    $("#my-calendar").zabuto_calendar({
                    action: function() {
                    return myDateFunction(this.id, false);
                    },
                    action_nav: function() {
                    return myNavFunction(this.id);
                    },
                    ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                    },
                    legend: [{
                    type: "text",
                    label: "Special event",
                    badge: "00"
                    },
                    {
                    type: "block",
                    label: "Regular event",
                    }
                    ]
                    });
                    });

                    function myNavFunction(id) {
                    $("#date-popover").hide();
                    var nav = $("#" + id).data("navigation");
                    var to = $("#" + id).data("to");
                    console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
                    }
                </script>
                </body>

                </html>
