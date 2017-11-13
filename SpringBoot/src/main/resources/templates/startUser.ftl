<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap\bootstrap-3.3.7\dist\css\bootstrap.min.css">
    <link rel="stylesheet" href="css\style.css">
    <link rel="stylesheet" href="css\styleUser.css">
    <script src="js\main.js"></script>
    <script src="js\user.js"></script>
    <script src="js\validator\signUpValidator.js"></script>
    <script src="js\validator\signInValidator.js"></script>
    <script src="bootstrap/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="bootstrap\bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
</head>
<body id="allStyle">

<#include "fragments/background.ftl">
<br/>
<!--Классы navbar и navbar-default &ndash;&gt;-->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <!--Контейнер &ndash;&gt;-->
    <div class="container-fluid">
        <!--Заголовок &ndash;&gt;-->
        <div class="navbar-header">
            <!-- Кнопка «Гамбургер» &ndash;&gt;-->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-main" aria-expanded="false">
                <span class=sr-only>Toggle navigation</span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
            </button>
            <!--Бренд или название сайта &ndash;&gt;-->

           <a style="color: rgb(32,72,72);" class="noneCursor"><img src="images/logotype.png" alt="Logotip" id="logo">Relax Laboratory</a>
        </div>
        <!--Основная часть меню &ndash;&gt;-->
        <div class="collapse navbar-collapse" id="navbar-main">

            <!--Содержимое основной части &ndash;&gt;-->
            <ul class="nav navbar-nav navbar-right">
                <li class="noneCursor"><a class="noneCursor">Name: ${name}</a></li>
                <li style="margin-top: -4px;" class="noneCursor"><a class="noneCursor">Balance: ${balance}<span class="glyphicon glyphicon-usd"></span></a></li>
                <li class="dropdown ">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">My cources <span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                    <ul class="dropdown-menu background-element">
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-plus-sign"></span>
                                &nbsp;Join
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-minus-sign"></span>
                                &nbsp;Leave
                            </a>
                        </li>
                        <li>
                            <a href="javascript:scrollOn('scrollOnVisited');" data-toggle="collapse" data-target="#visitedCourses">
                                <span class="glyphicon glyphicon-calendar"></span>
                                &nbsp;Visited
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown ">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Cources <span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                    <ul class="dropdown-menu background-element">
                        <li >
                            <a onclick="getAllCourses()" href="javascript:scrollOn('scrollOnAllCourses');" data-toggle="collapse" data-target="#allCources">
                                <span class="glyphicon glyphicon-th-list"></span>
                                &nbsp;All available
                            </a>
                        </li>
                        <li >
                            <a onclick="getSelectionCourses()" href="javascript:scrollOn('scrollOnSelectionOpen');" data-toggle="collapse" data-target="#selectionOpen">
                                <span class="glyphicon glyphicon-pencil"></span>
                                &nbsp;Selection open
                            </a>
                        </li>
                        <li>
                            <a onclick="getPlannedCourses()" href="javascript:scrollOn('scrollOnPlanned');" data-toggle="collapse" data-target="#plannedCourses">
                                <span class="glyphicon glyphicon-calendar"></span>
                                &nbsp;Planned
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown ">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Account <span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                    <ul class="dropdown-menu background-element">
                        <li >
                            <a href="#">
                                <span class="glyphicon glyphicon-info-sign"></span>
                                &nbsp;Information
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-piggy-bank"></span>
                                &nbsp;Add balance
                            </a>
                        </li>
                        <li class="dropdown ">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-wrench"></span>&nbsp;Change<span class="glyphicon glyphicon-chevron-down spin-chevron" id="glifup"></span></a>
                            <ul class="dropdown-menu background-element">
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-earphone"></span>
                                        &nbsp;Mobile
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-question-sign"></span>
                                        &nbsp;Password
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-log-in"></span>
                                        &nbsp;logIn
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li ><a href="/">Sign out&nbsp;&nbsp;</a></li>
        </div>
    </div>
</nav>

<br>

<div class="row content">
    <div class="col-sm-2 col-xs-2 sidenav">

    </div>
    <div class="col-sm-8 col-xs-8 text-left">
        <!--<img src="../static/images/course6_5.png" alt="ourBest" style="width: 94%;margin-left: 3%;"></img>-->
        <h1>Recognized for our world class courses:<h1>
            <br/>
            <img src="images/softwarelogos.png" alt="ourBest" style="width: 94%;margin-left: 3%;"></img>
    </div>
    <div class="col-sm-2 col-xs-2 sidenav">

    </div>
</div>

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
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>
                    <li data-target="#myCarousel" data-slide-to="7"></li>
                    <li data-target="#myCarousel" data-slide-to="8"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <a href="javascript:scrollSituation();" id = "python"> <img src="images/python.jpg" alt="python" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrolldotnet();"> <img src="images/dotNet.jpg" alt="dotNet" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollRuby();"> <img src="images/ruby.jpg" alt="ruby" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollJava();"> <img src="images/java.jpg" alt="java" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollJS();"> <img src="images/js.jpg" alt="js" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollJQuery();"> <img src="images/jquery.png" alt="jquery" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollAzure();"> <img src="images/azure.png" alt="azure" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollCss();"> <img src="images/сss.png" alt="сss3" style="width:100%;"></a>
                    </div>

                    <div class="item">
                        <a href="javascript:scrollHtml();"> <img src="images/html.jpg" alt="html5" style="width:100%;"></a>
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

<div id="scrollOnVisited"></div>
<div id="visitedCourses" class="collapse">

    <br>

    <h1>List visited courses</h1>

    <div class="row content">
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
        <div class="col-sm-8 col-xs-8">
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Course Name</th>
                    <th>Start date</th>
                    <th>Total listeners quantity</th>
                    <th>Hours</th>
                    <th>Day in week</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                </tbody>
            </table>
            <button type="button" class="btn btn-my center-block" data-toggle="collapse" data-target="#visitedCourses">Close visited courses</button>
        </div>
        <div class="col-sm-2 col-xs-2 sidenav">
        </div>
    </div>
</div>

<div id="scrollOnAllCourses"></div>
<div id="allCources" class="collapse">

    <br>

    <h1>List courses our company</h1>

<div class="row content">
    <div class="col-sm-2 col-xs-2 sidenav">

    </div>
    <div class="col-sm-8 col-xs-8">
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>Course Name</th>
                <th>Total listeners quantity</th>
                <th>Hours</th>
                <th>Day in week</th>
                <th>Price</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Java</td>
                <td>50</td>
                <td>328</td>
                <td>2</td>
                <td>500</td>
            </tr>
            <tr>
                <th scope="row">1</th>
                <td>Java</td>
                <td>50</td>
                <td>328</td>
                <td>2</td>
                <td>500</td>
            </tr>
            <tr>
                <th scope="row">1</th>
                <td>Java</td>
                <td>50</td>
                <td>328</td>
                <td>2</td>
                <td>500</td>
            </tr>
            </tbody>
        </table>
        <button type="button" class="btn btn-my center-block" data-toggle="collapse" data-target="#allCources">Close list courses</button>
    </div>
    <div class="col-sm-2 col-xs-2 sidenav">
    </div>
</div>
</div>

<div id="scrollOnSelectionOpen"></div>
<div id="selectionOpen" class="collapse">

    <br>

    <h1>List courses, where already selection open</h1>

    <div class="row content">
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
        <div class="col-sm-8 col-xs-8">
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Course Name</th>
                    <th>Start date</th>
                    <th>Total listeners quantity</th>
                    <th>Hours</th>
                    <th>Day in week</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                </tbody>
            </table>
            <button type="button" class="btn btn-my center-block" data-toggle="collapse" data-target="#selectionOpen">Close selection open courses</button>
        </div>
        <div class="col-sm-2 col-xs-2 sidenav">
        </div>
    </div>
</div>

<div id="scrollOnPlanned"></div>
<div id="plannedCourses" class="collapse">

    <br>

    <h1>List planned courses</h1>

    <div class="row content">
        <div class="col-sm-2 col-xs-2 sidenav">

        </div>
        <div class="col-sm-8 col-xs-8">
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Course Name</th>
                    <th>Start date</th>
                    <th>Total listeners quantity</th>
                    <th>Hours</th>
                    <th>Day in week</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Java</td>
                    <td>11.11.2017</td>
                    <td>50</td>
                    <td>328</td>
                    <td>2</td>
                    <td>500</td>
                </tr>
                </tbody>
            </table>
            <button type="button" class="btn btn-my center-block" data-toggle="collapse" data-target="#plannedCourses">Close planned courses</button>
        </div>
        <div class="col-sm-2 col-xs-2 sidenav">
        </div>
    </div>
</div>

<br>

<h1>Useful information</h1>

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
                                Python</a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel-body ">
                            <h3 style="text-align: center;">Some facts about Python</h3>
                            <p>Curabitur vitae nunc sed velit dignissim. Morbi tristique senectus et netus et malesuada fames ac turpis. Aliquet sagittis id consectetur purus ut faucibus. Eu feugiat pretium nibh ipsum consequat. Vel turpis nunc eget lorem dolor sed viverra ipsum nunc. Enim nec dui nunc mattis enim ut tellus elementum. Porttitor leo a diam sollicitudin tempor id. Dui nunc mattis enim ut tellus elementum sagittis. Ultrices neque ornare aenean euismod elementum nisi. Varius duis at consectetur lorem donec massa sapien faucibus et. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Facilisis volutpat est velit egestas dui id ornare arcu. Enim ut tellus elementum sagittis vitae.</p>
                            <p>Sit amet facilisis magna etiam. Sem integer vitae justo eget magna fermentum iaculis eu. Habitasse platea dictumst quisque sagittis. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Pharetra convallis posuere morbi leo urna molestie at elementum. Eget arcu dictum varius duis at consectetur. Quis varius quam quisque id. Vulputate odio ut enim blandit volutpat maecenas volutpat. Egestas diam in arcu cursus euismod quis viverra nibh cras. Habitant morbi tristique senectus et netus. Et tortor at risus viverra adipiscing at in. Nec ultrices dui sapien eget mi proin sed libero. Vel pretium lectus quam id leo in vitae.</p>
                            <p>Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Felis imperdiet proin fermentum leo vel orci porta. Nulla at volutpat diam ut. At consectetur lorem donec massa sapien faucibus. Gravida neque convallis a cras semper auctor neque vitae. Sed faucibus turpis in eu mi bibendum neque egestas congue. Hendrerit gravida rutrum quisque non tellus orci. Sed adipiscing diam donec adipiscing tristique risus. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus. At varius vel pharetra vel turpis nunc eget lorem. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Sapien faucibus et molestie ac feugiat sed lectus. Nibh tortor id aliquet lectus proin nibh nisl condimentum id. Cursus eget nunc scelerisque viverra mauris. Eu non diam phasellus vestibulum.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra et ultrices neque ornare aenean euismod elementum nisi quis. Mattis vulputate enim nulla aliquet porttitor lacus. Duis ut diam quam nulla porttitor. Et magnis dis parturient montes nascetur ridiculus mus mauris. Diam maecenas ultricies mi eget mauris pharetra. Eget nulla facilisi etiam dignissim diam quis. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Scelerisque felis imperdiet proin fermentum leo vel. Mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. In vitae turpis massa sed elementum tempus egestas. Lacus viverra vitae congue eu consequat ac felis donec et. Auctor eu augue ut lectus arcu bibendum at varius. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Accumsan tortor posuere ac ut consequat semper. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum. Semper quis lectus nulla at volutpat diam ut venenatis tellus.</p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" id="dotnet">.NET</a>
                        </h4>
                    </div>
                    <div id="collapse2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about .NET</h3>
                            <p>Morbi tristique senectus et netus. Dictumst quisque sagittis purus sit amet volutpat consequat mauris. Vulputate ut pharetra sit amet aliquam id diam. Aliquam etiam erat velit scelerisque in. Tortor dignissim convallis aenean et. Interdum velit euismod in pellentesque massa placerat. Donec enim diam vulputate ut pharetra sit amet aliquam. Id donec ultrices tincidunt arcu non sodales neque sodales. Aenean euismod elementum nisi quis eleifend quam. Quisque non tellus orci ac auctor augue. Dolor sit amet consectetur adipiscing. Amet est placerat in egestas erat. Sed odio morbi quis commodo odio. Diam vulputate ut pharetra sit amet aliquam id. Lectus sit amet est placerat in. In egestas erat imperdiet sed euismod nisi.</p>
                            <p>Neque viverra justo nec ultrices dui sapien eget mi. Amet volutpat consequat mauris nunc. Neque egestas congue quisque egestas diam in arcu. Urna porttitor rhoncus dolor purus non. Ut enim blandit volutpat maecenas volutpat blandit aliquam. Molestie nunc non blandit massa enim nec dui nunc. Condimentum mattis pellentesque id nibh. Massa enim nec dui nunc mattis. Faucibus nisl tincidunt eget nullam non. Fringilla ut morbi tincidunt augue interdum. Volutpat blandit aliquam etiam erat.</p>
                            <p>Odio morbi quis commodo odio aenean. Lobortis elementum nibh tellus molestie nunc non blandit. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Lacinia at quis risus sed vulputate. Vitae elementum curabitur vitae nunc sed velit dignissim. Tincidunt praesent semper feugiat nibh sed pulvinar proin. Nec tincidunt praesent semper feugiat nibh sed. Semper eget duis at tellus at urna condimentum. Et malesuada fames ac turpis egestas integer eget. Convallis posuere morbi leo urna molestie at elementum eu. Aliquam etiam erat velit scelerisque in dictum non consectetur a. Netus et malesuada fames ac turpis egestas sed tempus urna. Sit amet nisl suscipit adipiscing bibendum est. Arcu non sodales neque sodales ut etiam sit. Mi in nulla posuere sollicitudin aliquam ultrices sagittis. Cursus metus aliquam eleifend mi. Nulla porttitor massa id neque aliquam.</p>
                            <p>Ultricies tristique nulla aliquet enim tortor at auctor. Imperdiet proin fermentum leo vel orci. Urna duis convallis convallis tellus id. Amet risus nullam eget felis. Aliquet enim tortor at auctor urna nunc id cursus. Rhoncus mattis rhoncus urna neque. Integer quis auctor elit sed vulputate. Enim praesent elementum facilisis leo vel. Nulla porttitor massa id neque aliquam vestibulum morbi blandit. Quam id leo in vitae turpis massa sed. Sapien pellentesque habitant morbi tristique.</p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" id="ruby">Ruby</a>
                        </h4>
                    </div>
                    <div id="collapse3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about Ruby</h3>
                            <p>Sed odio morbi quis commodo odio aenean sed adipiscing. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Massa id neque aliquam vestibulum morbi. Urna neque viverra justo nec ultrices dui sapien. Tortor posuere ac ut consequat semper. Quam lacus suspendisse faucibus interdum. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Quam nulla porttitor massa id neque aliquam vestibulum morbi. Consectetur adipiscing elit ut aliquam purus sit. Diam phasellus vestibulum lorem sed risus ultricies. Id leo in vitae turpis massa sed elementum tempus. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et.</p>
                            <p>Gravida quis blandit turpis cursus in hac. Dui accumsan sit amet nulla. Ut tellus elementum sagittis vitae et leo duis. Diam quam nulla porttitor massa id neque aliquam vestibulum. Lorem ipsum dolor sit amet. Donec ultrices tincidunt arcu non sodales neque. Ut consequat semper viverra nam. Arcu felis bibendum ut tristique. Tincidunt praesent semper feugiat nibh. Pellentesque habitant morbi tristique senectus et netus et. Non tellus orci ac auctor augue mauris augue. Et netus et malesuada fames ac turpis egestas.</p>
                            <p>Quisque egestas diam in arcu cursus euismod quis. Morbi tincidunt augue interdum velit. Nunc aliquet bibendum enim facilisis gravida neque. Nunc lobortis mattis aliquam faucibus. Sed sed risus pretium quam vulputate. Tellus molestie nunc non blandit. Hac habitasse platea dictumst quisque sagittis. Eget velit aliquet sagittis id consectetur purus. Purus non enim praesent elementum facilisis. Ac placerat vestibulum lectus mauris ultrices eros. Lobortis elementum nibh tellus molestie nunc. Augue mauris augue neque gravida in fermentum et sollicitudin. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Dignissim cras tincidunt lobortis feugiat vivamus at. Morbi quis commodo odio aenean. A scelerisque purus semper eget. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Non blandit massa enim nec. Semper feugiat nibh sed pulvinar proin gravida.</p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" id="java">Java</a>
                        </h4>
                    </div>
                    <div id="collapse4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about Java</h3>
                            <p>Eu turpis egestas pretium aenean pharetra magna. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Sit amet cursus sit amet. Lectus sit amet est placerat in egestas erat. Posuere morbi leo urna molestie at elementum eu. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Mattis rhoncus urna neque viverra justo nec ultrices dui. Est lorem ipsum dolor sit amet consectetur adipiscing. Risus pretium quam vulputate dignissim suspendisse. Sit amet venenatis urna cursus eget. Ut pharetra sit amet aliquam id diam maecenas ultricies mi. Duis at consectetur lorem donec massa sapien faucibus et. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Fermentum odio eu feugiat pretium nibh ipsum. Ultrices sagittis orci a scelerisque purus semper eget duis. Mattis rhoncus urna neque viverra justo nec ultrices. Consectetur a erat nam at lectus urna duis convallis convallis. Ut tristique et egestas quis ipsum suspendisse ultrices gravida.</p>
                            <p>Id neque aliquam vestibulum morbi blandit. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Congue nisi vitae suscipit tellus mauris a diam. Morbi tincidunt augue interdum velit euismod in pellentesque massa. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Eget dolor morbi non arcu. Dictum fusce ut placerat orci nulla pellentesque dignissim enim sit. Aliquet eget sit amet tellus cras. Fames ac turpis egestas sed tempus urna et pharetra. Odio eu feugiat pretium nibh ipsum consequat nisl vel. Amet purus gravida quis blandit turpis cursus. Elementum sagittis vitae et leo duis ut. Commodo ullamcorper a lacus vestibulum sed.</p>
                            <p>In fermentum posuere urna nec. Curabitur vitae nunc sed velit dignissim sodales ut eu sem. Aenean et tortor at risus viverra adipiscing at. Iaculis nunc sed augue lacus. Ipsum nunc aliquet bibendum enim facilisis gravida. Ligula ullamcorper malesuada proin libero nunc consequat. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Feugiat scelerisque varius morbi enim nunc faucibus a. Suscipit adipiscing bibendum est ultricies integer quis auctor elit. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Faucibus pulvinar elementum integer enim neque volutpat ac. Tempus egestas sed sed risus pretium quam. Nibh tortor id aliquet lectus.</p>
                            <p>Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Semper feugiat nibh sed pulvinar. Condimentum id venenatis a condimentum vitae sapien pellentesque. Nunc lobortis mattis aliquam faucibus purus in massa. Pharetra convallis posuere morbi leo urna molestie at elementum. Fusce id velit ut tortor pretium viverra suspendisse potenti. Sed nisi lacus sed viverra tellus in hac habitasse platea. Amet nisl purus in mollis. Felis eget nunc lobortis mattis aliquam faucibus purus in. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh. Sapien et ligula ullamcorper malesuada. Bibendum enim facilisis gravida neque convallis. Scelerisque eu ultrices vitae auctor. Feugiat vivamus at augue eget arcu dictum varius duis at.</p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse5" id="js">Java Script</a>
                        </h4>
                    </div>
                    <div id="collapse5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about Java Script</h3>
                            <p>Ipsum dolor sit amet consectetur. Habitasse platea dictumst vestibulum rhoncus est. Turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Senectus et netus et malesuada fames ac turpis egestas maecenas. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et netus. Elit sed vulputate mi sit amet. At lectus urna duis convallis convallis tellus id interdum. Viverra maecenas accumsan lacus vel facilisis volutpat. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Arcu dictum varius duis at. Ac ut consequat semper viverra nam libero justo. Donec ultrices tincidunt arcu non sodales.</p>
                            <p>Imperdiet nulla malesuada pellentesque elit. Diam quis enim lobortis scelerisque. Felis eget nunc lobortis mattis aliquam. Tortor at auctor urna nunc id. A diam sollicitudin tempor id eu nisl nunc. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat pretium. Posuere morbi leo urna molestie. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Nisi scelerisque eu ultrices vitae auctor eu augue ut. Duis ut diam quam nulla porttitor massa. Dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh.</p>
                            <p>Volutpat maecenas volutpat blandit aliquam etiam. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Mus mauris vitae ultricies leo integer. Platea dictumst vestibulum rhoncus est pellentesque elit. Eleifend mi in nulla posuere. Sit amet consectetur adipiscing elit. Turpis egestas maecenas pharetra convallis posuere morbi leo. Placerat vestibulum lectus mauris ultrices. Pellentesque nec nam aliquam sem. Diam vel quam elementum pulvinar. Sapien pellentesque habitant morbi tristique. Est ante in nibh mauris cursus mattis molestie. Adipiscing commodo elit at imperdiet dui accumsan sit amet nulla. Dignissim diam quis enim lobortis scelerisque fermentum dui faucibus in. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Turpis massa tincidunt dui ut ornare lectus sit. Enim tortor at auctor urna nunc id cursus metus aliquam. Facilisi cras fermentum odio eu.</p>
                            <p>Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Semper eget duis at tellus at urna condimentum. Tempus quam pellentesque nec nam aliquam sem et. Eu ultrices vitae auctor eu augue ut. Dictumst vestibulum rhoncus est pellentesque. Tempor nec feugiat nisl pretium fusce id velit ut. Nulla facilisi nullam vehicula ipsum a arcu. Ornare lectus sit amet est placerat in egestas. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis.</p>
                            <p>Non curabitur gravida arcu ac tortor dignissim. Accumsan in nisl nisi scelerisque eu. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Sed vulputate odio ut enim. Sagittis orci a scelerisque purus semper eget duis at tellus. Et malesuada fames ac turpis egestas sed. Blandit turpis cursus in hac habitasse platea dictumst quisque. Ut tellus elementum sagittis vitae. Eleifend mi in nulla posuere sollicitudin aliquam. </p>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse6" id="jquery">JQuery</a>
                        </h4>
                    </div>
                    <div id="collapse6" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about JQuery</h3>
                            <p>In iaculis nunc sed augue lacus viverra vitae congue. Lectus proin nibh nisl condimentum id venenatis a condimentum. Platea dictumst quisque sagittis purus sit amet volutpat consequat mauris. Sollicitudin aliquam ultrices sagittis orci a scelerisque. Augue mauris augue neque gravida. A iaculis at erat pellentesque. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Vulputate enim nulla aliquet porttitor lacus luctus. Est ullamcorper eget nulla facilisi etiam dignissim diam quis. Arcu cursus euismod quis viverra. Eu scelerisque felis imperdiet proin. In hac habitasse platea dictumst vestibulum rhoncus. Diam vel quam elementum pulvinar etiam non quam lacus suspendisse. Libero id faucibus nisl tincidunt eget. Magnis dis parturient montes nascetur ridiculus. Amet massa vitae tortor condimentum lacinia quis. Duis ultricies lacus sed turpis tincidunt. Sed faucibus turpis in eu mi bibendum neque egestas. Quisque non tellus orci ac auctor augue. Quisque egestas diam in arcu cursus euismod.</p>
                            <p>Tincidunt lobortis feugiat vivamus at augue. Enim sed faucibus turpis in eu mi. Proin nibh nisl condimentum id. Ullamcorper eget nulla facilisi etiam dignissim. Convallis posuere morbi leo urna molestie at elementum eu. Nulla pellentesque dignissim enim sit amet venenatis urna cursus. In aliquam sem fringilla ut morbi tincidunt. Suscipit tellus mauris a diam maecenas sed enim ut. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum. Augue lacus viverra vitae congue eu consequat. Ut diam quam nulla porttitor massa id. Sed vulputate mi sit amet mauris. Scelerisque eleifend donec pretium vulputate. Libero enim sed faucibus turpis in eu mi bibendum neque. Nisl vel pretium lectus quam id. At tempor commodo ullamcorper a. Tellus in hac habitasse platea dictumst vestibulum rhoncus. Lectus quam id leo in vitae turpis massa sed. Sed enim ut sem viverra aliquet eget sit amet. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl.</p>
                            <p>Sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Convallis convallis tellus id interdum. Vitae tempus quam pellentesque nec nam aliquam sem et tortor. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Luctus venenatis lectus magna fringilla urna porttitor. Ultrices in iaculis nunc sed augue lacus viverra vitae. Risus ultricies tristique nulla aliquet enim tortor at auctor urna. Nec feugiat in fermentum posuere urna nec. Suspendisse interdum consectetur libero id faucibus. Amet nisl suscipit adipiscing bibendum est. Iaculis urna id volutpat lacus laoreet non curabitur. Augue interdum velit euismod in pellentesque massa placerat duis ultricies.</p>
                            <p>Sed augue lacus viverra vitae congue eu consequat ac felis. Commodo ullamcorper a lacus vestibulum sed. Feugiat sed lectus vestibulum mattis. Risus at ultrices mi tempus imperdiet nulla. Tempor id eu nisl nunc mi ipsum faucibus vitae aliquet. Mauris vitae ultricies leo integer malesuada nunc vel risus commodo. Nec sagittis aliquam malesuada bibendum arcu. Id porta nibh venenatis cras sed. Vitae tortor condimentum lacinia quis vel eros donec. Nullam non nisi est sit amet facilisis magna etiam. Nulla porttitor massa id neque aliquam vestibulum. Mi bibendum neque egestas congue quisque egestas diam in. Amet nulla facilisi morbi tempus iaculis urna. Et odio pellentesque diam volutpat commodo sed egestas.</p>
                        </div>
                    </div>
                </div>
                <div class="panel ">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse7" id="azure">Azure</a>
                        </h4>
                    </div>
                    <div id="collapse7" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about Azure</h3>
                            <p>Massa tincidunt dui ut ornare lectus sit amet est. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Quam adipiscing vitae proin sagittis nisl rhoncus. Aliquam vestibulum morbi blandit cursus. Nisl vel pretium lectus quam id leo in vitae turpis. Bibendum at varius vel pharetra. Semper risus in hendrerit gravida rutrum quisque. In nulla posuere sollicitudin aliquam ultrices sagittis. Id ornare arcu odio ut. Felis imperdiet proin fermentum leo vel orci./p>
                            <p>Urna id volutpat lacus laoreet non curabitur gravida. Enim sit amet venenatis urna. Orci porta non pulvinar neque laoreet. Ut porttitor leo a diam sollicitudin tempor id eu. Risus quis varius quam quisque id. Vulputate dignissim suspendisse in est ante in nibh mauris. Rutrum tellus pellentesque eu tincidunt tortor. In arcu cursus euismod quis. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Elementum nibh tellus molestie nunc non blandit massa enim. Elementum curabitur vitae nunc sed velit. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Sit amet nisl purus in mollis. Id semper risus in hendrerit. In nibh mauris cursus mattis molestie a iaculis.</p>
                            <p>Nisl rhoncus mattis rhoncus urna neque viverra justo. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Platea dictumst vestibulum rhoncus est. Pharetra magna ac placerat vestibulum. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Ut etiam sit amet nisl purus. Morbi tincidunt ornare massa eget egestas. Egestas maecenas pharetra convallis posuere morbi leo urna molestie. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Adipiscing enim eu turpis egestas pretium. Non arcu risus quis varius. Imperdiet massa tincidunt nunc pulvinar. Ante metus dictum at tempor commodo ullamcorper a lacus. Tortor id aliquet lectus proin nibh. Tortor posuere ac ut consequat semper viverra nam libero justo.</p>
                        </div>
                    </div>
                </div>
                <div class="panel ">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse8" id="css3">CSS3</a>
                        </h4>
                    </div>
                    <div id="collapse8" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about CSS3</h3>
                            <p>Egestas maecenas pharetra convallis posuere morbi leo urna. Fermentum odio eu feugiat pretium nibh ipsum consequat. Nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi. In nisl nisi scelerisque eu ultrices vitae. Euismod in pellentesque massa placerat duis ultricies lacus sed. Lectus proin nibh nisl condimentum. Morbi tincidunt augue interdum velit euismod. Malesuada fames ac turpis egestas integer eget. Aliquam vestibulum morbi blandit cursus. Turpis tincidunt id aliquet risus.</p>
                            <p>Tellus id interdum velit laoreet id donec ultrices. Maecenas pharetra convallis posuere morbi leo urna molestie at elementum. Erat imperdiet sed euismod nisi porta lorem mollis aliquam ut. Eget velit aliquet sagittis id consectetur. Tristique risus nec feugiat in fermentum posuere urna nec. Egestas egestas fringilla phasellus faucibus scelerisque. Venenatis a condimentum vitae sapien pellentesque habitant morbi. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Tellus molestie nunc non blandit massa. Gravida cum sociis natoque penatibus et magnis dis. Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc. Mauris ultrices eros in cursus turpis massa tincidunt. Egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices. Etiam tempor orci eu lobortis. Lacus vel facilisis volutpat est velit egestas dui id ornare. Nibh sed pulvinar proin gravida. Enim ut tellus elementum sagittis.</p>
                            <p>Purus gravida quis blandit turpis cursus in. Pulvinar mattis nunc sed blandit libero. Vestibulum sed arcu non odio. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Egestas dui id ornare arcu. Sollicitudin aliquam ultrices sagittis orci a scelerisque. Donec massa sapien faucibus et molestie ac feugiat. Nulla facilisi etiam dignissim diam quis. Sed adipiscing diam donec adipiscing. Egestas pretium aenean pharetra magna ac. Vitae ultricies leo integer malesuada nunc vel. Porttitor massa id neque aliquam vestibulum morbi blandit cursus risus. Facilisis gravida neque convallis a cras semper auctor neque vitae. Ultrices dui sapien eget mi proin sed libero enim sed. Velit scelerisque in dictum non consectetur. Dui id ornare arcu odio. Sed sed risus pretium quam vulputate dignissim suspendisse.</p>
                            <p>Orci nulla pellentesque dignissim enim sit amet venenatis urna. Sit amet dictum sit amet justo donec enim diam vulputate. Turpis tincidunt id aliquet risus feugiat in. Auctor urna nunc id cursus. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Egestas purus viverra accumsan in nisl nisi. Dignissim enim sit amet venenatis urna cursus eget. Semper auctor neque vitae tempus quam pellentesque nec nam. Enim diam vulputate ut pharetra sit amet. Lorem dolor sed viverra ipsum.</p>
                            <p>Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper. Cras adipiscing enim eu turpis egestas pretium aenean pharetra magna. Potenti nullam ac tortor vitae purus. Neque egestas congue quisque egestas diam in arcu cursus euismod. Eu feugiat pretium nibh ipsum consequat nisl vel pretium. Mauris cursus mattis molestie a. Aliquam vestibulum morbi blandit cursus risus. Nibh tellus molestie nunc non blandit massa enim. Viverra orci sagittis eu volutpat odio facilisis mauris sit. Nunc congue nisi vitae suscipit tellus mauris a diam maecenas. Consequat id porta nibh venenatis. Vitae et leo duis ut diam quam nulla porttitor massa. Dictumst vestibulum rhoncus est pellentesque. Leo urna molestie at elementum eu facilisis sed odio. Sem nulla pharetra diam sit. Neque vitae tempus quam pellentesque nec nam. Arcu bibendum at varius vel pharetra vel. Viverra orci sagittis eu volutpat odio facilisis mauris sit amet. Dapibus ultrices in iaculis nunc sed augue lacus.</p>
                        </div>
                    </div>
                </div>
                <div class="panel ">
                    <div class="panel-heading ">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse9" id="html5">HTML5</a>
                        </h4>
                    </div>
                    <div id="collapse9" class="panel-collapse collapse">
                        <div class="panel-body">
                            <h3 style="text-align: center;">Some facts about HTML5</h3>
                            <p>Platea dictumst vestibulum rhoncus est. Sit amet porttitor eget dolor morbi. Pretium nibh ipsum consequat nisl vel pretium lectus. Felis eget velit aliquet sagittis id. Tristique nulla aliquet enim tortor at auctor urna. Eget duis at tellus at urna condimentum. Enim tortor at auctor urna nunc id cursus. Lobortis elementum nibh tellus molestie. Nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Morbi tempus iaculis urna id volutpat lacus laoreet. Enim blandit volutpat maecenas volutpat blandit aliquam. Diam phasellus vestibulum lorem sed risus ultricies. Morbi quis commodo odio aenean sed adipiscing diam donec. Tincidunt lobortis feugiat vivamus at. Quam nulla porttitor massa id neque. Sem fringilla ut morbi tincidunt augue interdum. Tellus molestie nunc non blandit massa enim nec dui nunc. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor.</p>
                            <p>Habitant morbi tristique senectus et netus et malesuada. Pretium vulputate sapien nec sagittis aliquam malesuada. Diam sit amet nisl suscipit adipiscing bibendum est ultricies integer. Vitae elementum curabitur vitae nunc sed velit dignissim sodales. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Est velit egestas dui id ornare arcu. Ultricies leo integer malesuada nunc. Est sit amet facilisis magna etiam tempor orci. Lacus vestibulum sed arcu non odio euismod lacinia at quis. A diam maecenas sed enim ut sem viverra aliquet. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Diam maecenas ultricies mi eget. In nulla posuere sollicitudin aliquam ultrices sagittis orci a. Pulvinar sapien et ligula ullamcorper malesuada proin. Pellentesque sit amet porttitor eget dolor morbi. Aliquam purus sit amet luctus venenatis lectus magna. Pellentesque pulvinar pellentesque habitant morbi tristique.</p>
                            <p>Morbi blandit cursus risus at ultrices mi tempus imperdiet. Vitae congue eu consequat ac. Nulla facilisi cras fermentum odio eu feugiat pretium. Posuere urna nec tincidunt praesent semper feugiat. Imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor. Sodales ut eu sem integer vitae justo eget magna fermentum. At erat pellentesque adipiscing commodo. Malesuada fames ac turpis egestas sed tempus urna et. Pellentesque habitant morbi tristique senectus. Ullamcorper sit amet risus nullam eget felis eget. Maecenas ultricies mi eget mauris. Gravida dictum fusce ut placerat.</p>
                            <p>Neque viverra justo nec ultrices dui sapien eget. Venenatis lectus magna fringilla urna porttitor rhoncus dolor. Cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo. In massa tempor nec feugiat nisl pretium fusce id velit. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur. Egestas quis ipsum suspendisse ultrices. Maecenas pharetra convallis posuere morbi leo urna. Massa tincidunt nunc pulvinar sapien. Justo nec ultrices dui sapien eget mi. Proin sed libero enim sed faucibus turpis in.</p>
                        </div>
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

    <p class="style-text"> <a href="#">Join course
    </a> | <a href="#">Leave course</a> | <a href="#">Add balance</a> | <a href="/">Sign out</a> </p>
    <p class="style-text">© ${nowYear} RelaxLaboratory.com | All rights reserved | Contact number <span class="glyphicon glyphicon-phone-alt"></span> 42-78-58</p>
</footer>

</body>
</html>
