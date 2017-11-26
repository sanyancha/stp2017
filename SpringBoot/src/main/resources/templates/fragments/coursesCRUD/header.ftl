<!--Классы navbar и navbar-default &ndash;&gt;-->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <!--Контейнер &ndash;&gt;-->
    <div class="container-fluid">
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

            <a style="color: rgb(32,72,72);" <#--class="noneCursor--> href="/user-home"><img src="images/logotype.png" alt="Logotip" id="logo">Relax
                Laboratory</a>
        </div>
        <!--Основная часть меню &ndash;&gt;-->
        <div class="collapse navbar-collapse" id="navbar-main">

            <!--Содержимое основной части &ndash;&gt;-->
            <ul class="nav navbar-nav navbar-right">
                <li class="noneCursor"><a class="noneCursor">Name: ${name}</a></li>
                <li style="margin-top: -4px;" class="noneCursor"><a class="noneCursor">Balance: ${balance}<span
                        class="glyphicon glyphicon-usd"></span></a></li>
                <li><a href="/user-home">Back to home</a></li>
                <li><a href="/">Sign out&nbsp;&nbsp;</a></li>
        </div>
    </div>
</nav>