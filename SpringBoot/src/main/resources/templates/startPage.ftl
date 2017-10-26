<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap\bootstrap-3.3.7\dist\css\bootstrap.min.css">
    <link rel="stylesheet" href="css\style.css">
    <script src="js\main.js"></script>
    <script src="bootstrap/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="bootstrap\bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
</head>
<body style="background-image: url(images/Wallpaper.jpg);" id="allStyle">

<script type="text/javascript">
    $(function() {

        $("body").css({padding:0,margin:0});
        var f = function() {
            $(".ndra-container").css({position:"relative"});
            var h1 = $("body").height();
            var h2 = $(window).height();
            var d = h2 - h1;
            var h = $(".ndra-container").height() + d;
            var ruler = $("<div>").appendTo(".ndra-container");
            h = Math.max(ruler.position().top,h);
            ruler.remove();
            $(".ndra-container").height(h);
        };
        setInterval(f,1000);
        $(window).resize(f);
        f();

    });
</script>

<a href="#top"><img src="images\updown3-1.png" id="updown" height=5% width=3%></a>

<a href="#foot"><img src="images\updown3-1.png" id="downup" height=5% width=3%></a>

<!-- Классы navbar и navbar-default -->
<nav class="navbar navbar-inverse">
    <!-- Контейнер -->
    <div class="container-fluid">
        <!-- Заголовок -->
        <div class="navbar-header">
            <!-- Кнопка «Гамбургер» -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-main" aria-expanded="false">
                <span class=sr-only>Toggle navigation</span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
            </button>
            <!-- Бренд или название сайта -->

            <a href="#"><img src="images/logotype.png" alt="Logotip" id="logo">Relax Laboratory</a>
        </div>
        <!-- Основная часть меню -->
        <div class="collapse navbar-collapse" id="navbar-main">

            <!-- Содержимое основной части -->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown ">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Cources <span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                <ul class="dropdown-menu background-element">
                    <li >
                        <a href="#">
                            <span class="glyphicon glyphicon-list"></span>
                            &nbsp;Available
                        </a>
                    </li>
                    <li >
                        <a href="#">
                            <span class="glyphicon glyphicon-pencil"></span>
                            &nbsp;Selection open
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-calendar"></span>
                            &nbsp;Planned
                        </a>
                    </li>
                </ul>
                </li>
                <li class="dropdown " >
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Join <span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                    <ul class="dropdown-menu background-element">
                        <li >
                            <a href="#" id="on-enter">
                                <span class="glyphicon glyphicon-log-in "></span>
                                &nbsp;Sign in
                            </a>
                        </li>
                        <li>
                            <a href="#" id="on-registration">
                                <span class="glyphicon glyphicon-user"></span>
                                &nbsp;Sign up
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">About us  <span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                    <ul class="dropdown-menu background-element">
                        <li>
                            <a href="javascript:scrollSituation();">
                                <span class="glyphicon glyphicon-globe"></span>
                                &nbsp;Our location
                            </a>
                        </li>
                        <li>
                            <a href="javascript:scrollContact();">
                                <span class="glyphicon glyphicon-phone"></span>
                                &nbsp;Contact information
                            </a>
                        </li>
                    </ul>
                </li>
                <li ><a href="#" id="on-help">Help</a></li>

        </div>
    </div>
</nav>

<br>

<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
        <div class="col-sm-8 col-xs-8  text-left">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="images/laboratory-1.png" alt="Laboratory Class 1" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Laboratory</h3>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/laboratory-2.png" alt="Laboratory Kitchen 1" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Canteen</h3>
                        </div>
                    </div>

                    <div class="item">
                        <img src="images/laboratory-3.png" alt="Learning classes" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Lecture audiences</h3>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>
        <div class="col-sm-2 col-xs-2 sidenav">
        </div>
    </div>
</div>

<br>

<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
        <div class="col-sm-8 col-xs-8 text-left">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default ">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" id="situation">
                                Our location</a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse in">
                        <div class="panel-body ">
                            <div id="map" style="width: 100%; height: 400px;">
                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD0WtTVzOHYfSCBZzYZc5eFTuXirqAyHdg&callback=myMap"></script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-2 col-xs-2 sidenav">
        </div>
    </div>
    <div class="row content">
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
        <div class="col-sm-8 col-xs-8 text-left">
            <div class="panel panel-default">
                <div class="panel-heading ">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" id="contact">Contact information</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul style="list-style-type: none;">
                            <li>
                                <p id="phones">
                                    <img src="images\operators-mts.png" alt="MTS">
                                    +375-44-856-25-45
                                </p>
                            </li>
                            <li>
                                <p id="phones">
                                    <img src="images\operators-velcom.png" alt="Velcom">
                                    +375-29-365-54-45

                                </p>
                            </li>
                            <li>
                                <p id="phones">
                                    <img src="images\operators-life.png" alt="Life:)">
                                    +375-25-658-98-89
                                </p>
                            </li>
                            <li>
                                <p id="phones"> &ensp;
                                    <span class="glyphicon
											glyphicon-phone-alt" alt="Life:)"></span> &emsp;
                                    44-14-42
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
    </div>
</div>

<footer class="container-fluid text-center background-element ndra-container" id="foot">
    <br>
    <p class="style-text"><a href="#top">Home</a> | <a href="#" id="on-enter1">Sign in</a> | <a href="#" id="on-registration1">Sign out</a> | <a href="#" id="on-help1">Help</a> </p>
    <p class="style-text">© 2017 RelaxLaboratory.com | All rights reserved | Contact number <span class="glyphicon glyphicon-phone-alt"></span> 42-78-58</p>
</footer>

<!--Модальное окно входа-->

<div id="enter" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Sign in</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Login:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="name" placeholder="Enter name" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="modal-footer">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-default">Sign in <span class="glyphicon glyphicon-off"></span></button>
                                        <br>
                                    </div>
                                    <div class="col-sm-6">
                                        <button type="reset" class="btn btn-default">Clear <span class="glyphicon glyphicon-trash"></span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#on-enter").click(function () {
            $("#enter").modal("show");
        });

        $("#on-enter1").click(function () {
            $("#enter").modal("show");
        });

    });
</script>

<!--Модальное окно регистрации-->

<div id="registration" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">
                    <span class="glyphicon glyphicon-user"></span>
                    &nbsp;Sign up
                </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="firstName">Name:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" id="firstName" placeholder="Enter your name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="inputEmail">Email:</label>
                        <div class="col-xs-9">
                            <input type="email" class="form-control" id="inputEmail" placeholder="Enter email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="inputPassword">Password:</label>
                        <div class="col-xs-9">
                            <input type="password" class="form-control" id="inputPassword" placeholder="Enter password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="confirmPassword">Repeate password:</label>
                        <div class="col-xs-9">
                            <input type="password" class="form-control" id="confirmPassword" placeholder="Enter password again">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="phoneNumber">Number:</label>
                        <div class="col-xs-9">
                            <input type="tel" class="form-control" id="phoneNumber" placeholder="Enter your number phone">
                        </div>
                    </div>

                    <br />
                    <div class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-default">Submit <span class="glyphicon glyphicon-ok"></span></button>
                                <button type="reset" class="btn btn-default">Clear <span class="glyphicon glyphicon-trash"></span></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#on-registration").click(function () {
            $("#registration").modal("show");
        });

        $("#on-registration1").click(function () {
            $("#registration").modal("show");
        });
    });
</script>


<!--Модальное окно помощи-->

<div id="help" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;Помощь</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="/action_page.php">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Имя:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="name" placeholder="Введите имя" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Пароль:</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pwd" placeholder="Введите пароль" name="pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="5" id="comment" placeholder="Введите интересующий вас вопрос"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="modal-footer">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-default">Отправить <span class="glyphicon glyphicon-ok"></span></button>
                                        <br>
                                    </div>
                                    <div class="col-sm-6">
                                        <button type="reset" class="btn btn-default">Очистить <span class="glyphicon glyphicon-trash"></span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#on-help").click(function () {
            $("#help").modal("show");
        });

        $("#on-help1").click(function () {
            $("#help").modal("show");
        });
    });
</script>

</body>
</html>
