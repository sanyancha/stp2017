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
    <script src="js\joinOrLeaveCourse.js"></script>
    <script src="bootstrap/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="bootstrap\bootstrap-3.3.7\dist\js\bootstrap.min.js"></script>
</head>
<body id="allStyle">
<#setting date_format="dd-MM-yyyy">
<br/>
<br/>
<br/>
<br/>

<#include "fragments/coursesCRUD/header.ftl">

<div class="row content">
    <div class="col-sm-2 col-xs-2 sidenav">

    </div>
    <div class="col-sm-8 col-xs-8">
        <h1>Total number of available courses for you ${countCourses}<h1>
    </div>
    <div class="col-sm-2 col-xs-2 sidenav">
    </div>
</div>

<#include "fragments/coursesCRUD/mainTabble.ftl">

<div class="row content" style="margin-left: 0%;">
    <div class="col-sm-2 col-xs-2">

    </div>
    <div class="col-sm-8 col-xs-8">
        <div class="row">
            <div class="col-sm-4 col-xs-4">
                <div class="input-group">
                    <span class="input-group-addon">Number selected courses</span>
                    <input id="total-number-courses" style="text-align: right; background-color: white;" type="text"
                           class="form-control" readonly="readonly" value="0">
                </div>
                <br/>
                <div class="input-group">
                    <span class="input-group-addon">Total courses prise</span>
                    <input id="total-prise" style="text-align: right; background-color: white;" type="text"
                           class="form-control" readonly="readonly" value="0 $">
                </div>
                <br/>
                <div class="input-group">
                    <span class="input-group-addon">Balance after purchase</span>
                    <input id="after-purchase" style="text-align: right; background-color: white;" type="text"
                           class="form-control" readonly="readonly" value="0 $">
                </div>
            </div>
            <div class="col-sm-8 col-xs-8">
            </div>
        </div>
    </div>
    <div class="col-sm-2 col-xs-2">
    </div>
</div>

<br/>

<button id="submit-data" type="button" class="btn btn-my center-block"
        onclick="sendData('/add-course','listCourses')" <#--onclick="getValueActiveCheckBoxes(1)"-->>Submit
</button>

<br/>

<script>
    function sendData(path, yourKey) {
        var prise = parseFloat(document.getElementById("total-prise").value);

        var num = parseStringMy("${balance}");
        num = num.replace(/\s+/g,'');  //дополнительно убираем пробелы
        var afterParse = parseFloat(num);

        if (prise > afterParse) {
            $("#balance-err").modal("show");
        } else {
            method = "post";

            var list = getValueActiveCheckBoxes(1);

            var form = document.createElement("form");
            form.setAttribute("method", method);
            form.setAttribute("action", path);

            var addField = function (key, value) {
                var hiddenField = document.createElement("input");
                hiddenField.setAttribute("type", "hidden");
                hiddenField.setAttribute("name", key);
                hiddenField.setAttribute("value", value);

                form.appendChild(hiddenField);
            };

            addField(yourKey, list);

            document.body.appendChild(form);
            form.submit();
        }

    }
</script>


<script>
    document.getElementById("submit-data").disabled = true;

    var num = parseStringMy("${balance}");
    num = num.replace(/\s+/g,'');  //дополнительно убираем пробелы
    var startP = document.getElementById("total-prise").value;
    var afterStart = parseFloat(num) - parseFloat(startP);
    afterStart = afterStart.toFixed(2);

    document.getElementById("after-purchase").value = afterStart + " $";
    document.getElementById("after-purchase").style.color = "green";


    checkboxes = document.getElementsByTagName("input");

    for (var i = 0; i < checkboxes.length; i++) {
        var checkbox = checkboxes[i];

        checkbox.onclick = function () {

            var prise = 0;

            prises = getValueActiveCheckBoxes(8);

            for (var j = 0; j < prises.length; j++) {
                var a = prises[j].replace(/&nbsp;/gi,'');  //дополнительно убираем пробелы /&nbsp;
                a = parseStringMy(a);
                prise = prise + parseFloat(a);
            }

            prise = prise.toFixed(2);
            document.getElementById("total-prise").value = prise + " $";


            var num = parseStringMy("${balance}");
            num = num.replace(/\s+/g,'');  //дополнительно убираем пробелы

            var after = parseFloat(num) - prise;
            after = after.toFixed(2);
            document.getElementById("after-purchase").value = after + " $";

            if (after < 0) {
                document.getElementById("after-purchase").style.color = "red";
            } else {
                document.getElementById("after-purchase").style.color = "green";
            }

            document.getElementById("total-number-courses").value = prises.length;

            if (prises.length != 0) {
                document.getElementById("submit-data").disabled = false;
            } else {
                document.getElementById("submit-data").disabled = true;
            }

        };

    }

</script>

<br/>

<#include "fragments/coursesCRUD/footer.ftl">

<script type="text/javascript">
    $(function () {

        $("body").css({padding: 0, margin: 0});
        var f = function () {
            $(".ndra-container").css({position: "relative"});
            var h1 = $("body").height();
            var h2 = $(window).height();
            var d = h2 - h1;
            var h = $(".ndra-container").height() + d;
            var ruler = $("<div>").appendTo(".ndra-container");
            h = Math.max(ruler.position().top, h);
            ruler.remove();
            $(".ndra-container").height(h);
        };
        setInterval(f, 1000);
        $(window).resize(f);
        f();

    });
</script>


<div id="balance-err" class="modal fade" role="dialog" style="margin-top: 15%">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">&nbsp;Balance error</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div><h3 class="col-sm-10" style="color: rgb(34,34,34);">Your balance is not enough to make a
                        purchase!</h3></div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="user-err" class="modal fade" role="dialog" style="margin-top: 15%">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">&nbsp;User error</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div><h3 class="col-sm-10" style="color: rgb(34,34,34);">Try to use different courses!</h3></div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="change-err" class="modal fade" role="dialog" style="margin-top: 15%">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">&nbsp;Data error</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div><h3 class="col-sm-10" style="color: red;">Don't change data in table!</h3></div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<#if error == 1>

<script type="text/javascript">

    $(document).ready(function() {

        $("#balance-err").modal("show");
    });

</script>

</#if>

<#if error == 2>

<script type="text/javascript">

    $(document).ready(function() {

        $("#user-err").modal("show");
    });

</script>

</#if>

<#if error == 3>

<script type="text/javascript">

    $(document).ready(function() {

        $("#change-err").modal("show");
    });

</script>

</#if>

</body>
</html>