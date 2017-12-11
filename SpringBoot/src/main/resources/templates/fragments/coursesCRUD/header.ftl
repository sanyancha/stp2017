<!--Классы navbar и navbar-default &ndash;&gt;-->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <!--Контейнер &ndash;&gt;-->
    <div class="container-fluid" style="padding-left: 0px;">
        <!--Заголовок &ndash;&gt;-->
        <div class="navbar-header">
            <!-- Кнопка «Гамбургер» &ndash;&gt;-->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-main"
                    aria-expanded="false">
                <span class=sr-only>Toggle navigation</span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
                <span class="icon-bar" style="background-color: rgb(32,72,72);"></span>
            </button>
            <!--Бренд или название сайта &ndash;&gt;-->

            <div class="navbar-brand" style="padding-top: 10px;">
                <a  href="/user-home" style="background-image: url('../images/logotype.png');zoom: 100%;background-size: 55px;padding-bottom: 10px;padding-top: 10px;"><span style='padding-right: 48px;'> </span> </a>
                <a style="color: rgb(32,72,72);" href="/user-home"><img src="images/logotype.png" alt="Logotip" id="logo" height="25px">Relax Laboratory</a>
                <a class="noneCursor" style="color: rgb(157,157,157);">&nbsp;&nbsp;Name: ${name}&nbsp;&nbsp;</a>
                <a class="noneCursor" style="color: rgb(157,157,157);">Balance: ${balance}<span class="glyphicon glyphicon-usd"></span></a>
            </div>
        </div>
        <!--Основная часть меню &ndash;&gt;-->
        <div class="collapse navbar-collapse" id="navbar-main">

            <!--Содержимое основной части &ndash;&gt;-->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/user-home">Back to home</a></li>
                <li><a href="/logout">Sign out&nbsp;&nbsp;</a></li>
        </div>
    </div>
</nav>