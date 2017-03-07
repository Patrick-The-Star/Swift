<%-- 
    Document   : menu
    Created on : Mar 7, 2017, 6:37:39 PM
    Author     : Rocke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Swift for Marpha</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/menuStyles.css">
        <link type="text/css" rel="stylesheet" href="css/styles.css">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="css/Navigation-Clean1.css">
        <link href='http://fonts.googleapis.com/css?family=Short+Stack' rel='stylesheet' type='text/css'>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                
                
                    var $accordion = $('#accordion-1');
                    $.ajax({
                        type: "GET",
                        dataType: "json",
                        url: "http://localhost:8080/Swift/webresources/menu",
                        success: function (foods) {
                            console.log(foods);
                            $.each(foods, function (i, food) {
                                console.log(foods);
                                $accordion.append('<div class="panel panel-default"> <div class="pannel-heading" role=tab"> \n\
                    <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-1" aria-expanded="false"\n\
                    href="#accordion-1 .item-' + i + '">' + food.foodId + '. ' + food.foodName + ' </a></h4></div>\n\
                    <div class="panel-collapse collapse item-' + i + '" role="tabpanel">\n\
                    <div class="panel-body"><span>' + food.ingredients + ' <br> <br>' + 'Price: ' + food.price + ' euros. </span></div></div></div>');
                            });
                        }

                    });
                

            });
        </script>

    </head>

    <body>


        <!--
        <div>
            <nav class="navbar navbar-default navigation-clean">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand navbar-link" href="index.jsp"><img src="img/marpha.png" id="brand-logo"></a>
                        <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    </div>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li role="presentation"><a href="index.jsp">Orders </a></li>
                            <li role="presentation"><a href="#">Messages </a></li>
                            <li class="active" role="presentation"><a href="menu.jsp">Menu </a></li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">${username}<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a href="#">Employee Id</a></li>
                                    <li role="presentation"><a href="#">View Profile</a></li>
                                    <li role="presentation"><a href="logout">Sign Out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div> -->
        <header>
            <nav id="header-nav" class="navbar navbar-default">
                <div class="container">
                    <div class="navbar-header">
                        <a href="index.html" class="pull-left visible-md visible-lg">
                            <div id="logo-img"></div>

                        </a>

                        <div class="navbar-brand">
                            <a href="index.html"><h1>Swift Web Application</h1></a>
                            <div id="sublogo">
                                <img src="images/restaurant.ico" height="65" width="65" alt="Swift logo">
                                <span>A restaurant app</span>
                            </div>

                        </div>
                        <button id="navbarToggle" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapsable-nav" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div><!-- navbar-header-->

                    <div id="collapsable-nav" class="collapse navbar-collapse">
                        <ul id="nav-list" class="nav navbar-nav navbar-right">
                            <li id="navMenuButton">
                                <a href="menu.jsp">
                                    <span class="glyphicon glyphicon-cutlery"></span><br class="hidden-xs">Menu</a>
                            </li>
                            <li>
                                <a id="takeOrder" href="orders.html">
                                    <span class="glyphicon glyphicon-pencil"></span><br class="hidden-xs">Take order</a>
                            </li>
                            <li>
                                <a href="logout.jsp">
                                    <span class="glyphicon glyphicon-log-in"></span><br class="hidden-xs">Login</a>
                            </li>
                        </ul>
                    </div>
                </div><!-- .container -->
            </nav><!-- #header-nav -->
        </header>

        <div class="header-dark">
            <div class="container hero">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="text-center">The Revolution is Here.</h1>
                        <div id="menu-holder">
                            <div class="panel-group" role="tablist" aria-multiselectable="true" id="accordion-1">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>