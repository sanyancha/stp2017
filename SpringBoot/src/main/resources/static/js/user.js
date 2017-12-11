var NAME_PATTERN = /^[A-Z][a-z]+$/;
var MAIL_PATTERN = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
var MOBILE_PATTERN = /^\+375\d{9}$/;
var PASSWORD_PATTERN = /(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-ZА-Я])(?=.*[a-zа-я]).*$/;

var NAME_ERROR_MESSAGE = "*At least 2 letters (first capital)";

var MAIL_ERROR_MESSAGE = "*Incorrect input eMail";

var MOBILE_ERROR_MESSAGE = "*Сorrect form: +375xxxxxxxxx";

var PASSWORD_ERROR_MESSAGE = "*At least 8 char (one letter in each register and one digit)";

var CONFIRM_ERROR_MESSAGE = "*Passwords must be NOT equals";


function scrollPython() {
    hideAll();
    $("#collapse1").collapse('show');
    var element = document.getElementById("python");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrolldotnet() {
    hideAll();
    $("#collapse2").collapse('show');
    var element = document.getElementById("dotnet");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrollRuby() {
    hideAll();
    $("#collapse3").collapse('show');
    var element = document.getElementById("ruby");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrollJava() {
    hideAll();
    $("#collapse4").collapse('show');
    var element = document.getElementById("java");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrollJS() {
    hideAll();
    $("#collapse5").collapse('show');
    var element = document.getElementById("js");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });
}

function scrollJQuery() {
    hideAll();
    $("#collapse6").collapse('show');
    var element = document.getElementById("jquery");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrollAzure() {
    hideAll();
    $("#collapse7").collapse('show');
    var element = document.getElementById("azure");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrollCss() {
    hideAll();
    $("#collapse8").collapse('show');
    var element = document.getElementById("css3");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function scrollHtml() {
    hideAll();
    $("#collapse9").collapse('show');
    var element = document.getElementById("html5");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function () {

        window.location.hash = element;
    });

}

function hideAll() {
    $("#collapse1").collapse('hide');
    $("#collapse2").collapse('hide');
    $("#collapse3").collapse('hide');
    $("#collapse4").collapse('hide');
    $("#collapse5").collapse('hide');
    $("#collapse6").collapse('hide');
    $("#collapse7").collapse('hide');
    $("#collapse8").collapse('hide');
    $("#collapse9").collapse('hide');
}

function getUserInfo() {
    $.ajax({
        async: true,
        cache: false,
        url: '/get-user-info',
        method: 'GET',
        data: {},
        success: function (data) {
            $("#ajaxName").empty();
            $("#ajaxLogin").empty();
            $("#ajaxMobile").empty();
            $("#ajaxBalance").empty();

            $("#ajaxName").append(
                data.name
            );
            $("#ajaxLogin").append(
                data.login
            );
            $("#ajaxMobile").append(
                data.mobile
            );
            $("#ajaxBalance").append(
                data.balance + "$"
            );
            $("#account-info").modal("show");
        },
        error: function () {
            alert("Connection error");
        }
    });
}

function getVisitedCourses() {
    if (!$('#visitedCourses').hasClass('in')) {
        $.ajax({
            async: true,
            cache: false,
            url: '/get-visited-courses',
            method: 'GET',
            data: {},
            success: function (data) {

                if (data == 0) {
                    $(document).ready(function () {
                        document.getElementById("data-info").innerHTML = "";
                        document.getElementById("data-info").innerHTML = "You don't have any courses at these moment!";
                        $("#data-info-operation").modal("show");
                    });
                } else {
                    $(".my-visited-courses-list").empty();
                    $.each(data, function (i, obj) {
                        $(".my-visited-courses-list").append(
                            "<tr>" +
                            "<td>" + (i + 1) + "</td>" +
                            "<td>" + obj.course.name + "</td>" +
                            "<td>" + obj.startDate + "</td>" +
                            "<td>" + obj.finishDate + "</td>" +
                            "<td>" + obj.course.listenersQuantity + "</td>" +
                            "<td>" + obj.course.hours + "</td>" +
                            "<td>" + obj.course.dayWeek + "</td>" +
                            "<td>" + obj.course.price + "</td>" +
                            "</tr>"
                        );
                    });
                    $("#visitedCourses").collapse('show');
                    scrollOn('scrollOnVisited');
                }
            },
            error: function () {
                alert("Connection error");
            }
        });
    }
}

function balanceOperation(operation) {
    if (operation == '+') {
        document.getElementById('balance-header').innerHTML = "";
        document.getElementById('balance-modal-err').innerHTML = "";
        document.getElementById('balance-header').innerHTML = "Balance replenishment";
        document.getElementById('balance-input').innerHTML = "";
        document.getElementById('balance-input').innerHTML = "Add balance";
        $("#balance-operation").modal("show");
        scrollOn('balance-operation');
    }
    if (operation == '-') {
        document.getElementById('balance-header').innerHTML = "";
        document.getElementById('balance-modal-err').innerHTML = "";
        document.getElementById('balance-header').innerHTML = "Balance output";
        document.getElementById('balance-input').innerHTML = "";
        document.getElementById('balance-input').innerHTML = "Leave balance";

        $("#balance-operation").modal("show");
        scrollOn('balance-operation');
    }

}

function closeModal(idobj) {
    $(idobj).modal("hide");
}

function checkDigit(event) {
    var code = (event.which) ? event.which : event.keyCode;

    if ((code < 48 || code > 57) && (code > 31)) {
        return false;
    }

    return true;
}

function cc_format(value) {
    var v = value.replace(/\s+/g, '').replace(/[^0-9]/gi, '')
    var matches = v.match(/\d{4,16}/g);
    var match = matches && matches[0] || ''
    var parts = []

    for (i = 0, len = match.length; i < len; i += 4) {
        parts.push(match.substring(i, i + 4))
    }

    if (parts.length) {
        return parts.join(' ')
    } else {
        return value
    }
}

function balanceOperationServer() {

    var card = $("#shest").val();
    var balance = $("#balance-input-data").val();
    var balanceHeader = document.getElementById('balance-header').innerHTML;
    var url = "";

    document.getElementById('balance-modal-err').innerHTML = "";

    if (balanceHeader == "Balance replenishment") {
        url = '/take-in-balance'
    }

    if (balanceHeader == "Balance output") {
        url = '/take-out-balance'
    }

    if (url == "") {
        document.getElementById('balance-modal-err').innerHTML = "Don't change data modal";

    } else {

        if (card.length != 19) {
            document.getElementById('balance-modal-err').innerHTML = "Don't input card data";
        } else {
            document.getElementById('balance-modal-err').innerHTML = "";
            if (balance.length == 0) {
                document.getElementById('balance-modal-err').innerHTML = "Don't input amount of money";
            } else {
                document.getElementById('balance-modal-err').innerHTML = "";

                $.ajax({
                    async: true,
                    cache: false,
                    url: url,
                    method: 'POST',
                    data: {card: card, balance: balance},
                    success: function (data) {
                        if (data == 0) {
                            closeModal('#balance-operation');
                            $("#success-operation1").modal("show");
                        } else {
                            if (data == 1) {
                                document.getElementById('balance-modal-err').innerHTML = "Don't input card data ";
                            } else {
                                if (data == 2) {
                                    document.getElementById('balance-modal-err').innerHTML = "Don't trully card format";
                                } else {
                                    if (data == 3) {
                                        document.getElementById('balance-modal-err').innerHTML = "Don't trully input amount of money";
                                    } else {

                                        if (data == 4) {
                                            document.getElementById('balance-modal-err').innerHTML = "You balance < then out sum";
                                        } else {
                                            document.getElementById('balance-modal-err').innerHTML = "Another error";
                                        }
                                    }
                                }
                            }
                        }
                    },
                    error: function () {
                        alert("Connection error");
                    }
                });
            }
        }
    }
}

function settingOperation(operation) {
    if (operation == 'name') {
        document.getElementById('settings-header').innerHTML = "";
        document.getElementById('settings-modal-err').innerHTML = "";
        document.getElementById('settings-modal-err1').innerHTML = "";
        document.getElementById('settings-header').innerHTML = "Setting name";
        document.getElementById('setting-input').innerHTML = "";
        document.getElementById('setting-input').innerHTML = "New name";
        $("#setting-input-data").attr("placeholder", "Input new Name");
        $("#setting-input-data").val("");
        $("#setting-input-data1").val("");
        document.getElementById("confirm-password").hidden = true;
        document.getElementById("confirm-password1").hidden = true;
        document.getElementById("confirm-password2").hidden = true;
        document.getElementById("confirm-password3").hidden = true;
        $("#settings").modal("show");
        scrollOn('settings');
    }

    if (operation == 'mobile') {
        document.getElementById('settings-header').innerHTML = "";
        document.getElementById('settings-modal-err').innerHTML = "";
        document.getElementById('settings-modal-err1').innerHTML = "";
        document.getElementById('settings-header').innerHTML = "Setting mobile";
        document.getElementById('setting-input').innerHTML = "";
        document.getElementById('setting-input').innerHTML = "New mobile";
        $("#setting-input-data").attr("placeholder", "Input new Mobile");
        $("#setting-input-data").val("");
        $("#setting-input-data1").val("");
        document.getElementById("confirm-password").hidden = true;
        document.getElementById("confirm-password1").hidden = true;
        document.getElementById("confirm-password2").hidden = true;
        document.getElementById("confirm-password3").hidden = true;
        $("#settings").modal("show");
        scrollOn('settings');
    }
    if (operation == 'login') {
        document.getElementById('settings-header').innerHTML = "";
        document.getElementById('settings-modal-err').innerHTML = "";
        document.getElementById('settings-modal-err1').innerHTML = "";
        document.getElementById('settings-header').innerHTML = "Setting login";
        document.getElementById('setting-input').innerHTML = "";
        document.getElementById('setting-input').innerHTML = "New login";
        $("#setting-input-data").attr("placeholder", "Input new Login");
        $("#setting-input-data").val("");
        $("#setting-input-data1").val("");
        document.getElementById("confirm-password").hidden = true;
        document.getElementById("confirm-password1").hidden = true;
        document.getElementById("confirm-password2").hidden = true;
        document.getElementById("confirm-password3").hidden = true;
        $("#settings").modal("show");
        scrollOn('settings');
    }

    if (operation == 'password') {
        document.getElementById('settings-header').innerHTML = "";
        document.getElementById('settings-modal-err').innerHTML = "";
        document.getElementById('settings-modal-err1').innerHTML = "";
        document.getElementById('settings-header').innerHTML = "Settings password";
        document.getElementById('setting-input').innerHTML = "";
        document.getElementById('setting-input').innerHTML = "New password";
        $("#setting-input-data").attr("placeholder", "Input new Password");
        $("#setting-input-data").val("");
        $("#setting-input-data1").val("");
        document.getElementById("confirm-password").hidden = false;
        document.getElementById("confirm-password1").hidden = false;
        document.getElementById("confirm-password2").hidden = false;
        document.getElementById("confirm-password3").hidden = false;
        $("#settings").modal("show");
        scrollOn('settings');
    }

}

function settingOperationServer() {
    var url = "";
    var data = $("#setting-input-data").val();
    var data1 = $("#setting-input-data1").val();
    var settingHeader = document.getElementById('settings-header').innerHTML;
    document.getElementById('settings-modal-err').innerHTML = "";
    document.getElementById('settings-modal-err1').innerHTML = "";

    switch (settingHeader) {
        case "Setting name":
            url = '/setting-name';
            if (validateName(data)) {
                $.ajax({
                    async: true,
                    cache: false,
                    url: url,
                    method: 'POST',
                    data: {name: data},
                    success: function (data) {
                        closeModal('#settings');
                        $("#success-operation1").modal("show");
                    },
                    error: function () {
                        alert("Connection error");
                    }
                });
            }
            break;
        case "Setting mobile":
            url = '/setting-mobile';
            if (validateMobile(data)) {
                $.ajax({
                    async: true,
                    cache: false,
                    url: url,
                    method: 'POST',
                    data: {mobile: data},
                    success: function (data) {
                        closeModal('#settings');
                        $("#success-operation1").modal("show");
                    },
                    error: function () {
                        alert("Connection error");
                    }
                });
            }
            break;

        case "Setting login":
            url = '/setting-login';
            if (validateEmail(data)) {
                console.log("ok");
                $.ajax({
                    async: true,
                    cache: false,
                    url: url,
                    method: 'POST',
                    data: {login: data},
                    success: function (data) {
                        if(data == 0) {
                            closeModal('#settings');
                            $("#success-operation1").modal("show");
                        } else{
                            if(data == 1){
                                document.getElementById("settings-modal-err").innerHTML = "Input login already Exist";
                            }else{
                                document.getElementById("settings-modal-err").innerHTML = "Another ERROR";
                            }
                        }
                    },
                    error: function () {
                        alert("Connection error");
                    }
                });
            }
            break;

        case "Settings password":
            url = '/setting-password';
            var i = 0;

            if (isEquals(data,data1)) {
                i = i + 1;
            }


            if (validatePassword(data)) {
                i = i + 1;
            }

            if (validateConfirm(data1)) {
                i = i + 1;
            }

            if(i == 3){
                console.log("ok");
                $.ajax({
                    async: true,
                    cache: false,
                    url: url,
                    method: 'POST',
                    data: {oldPas: data1,newPas: data},
                    success: function (data) {
                        if(data == 0) {
                            closeModal('#settings');
                            $("#success-operation1").modal("show");
                        } else{
                            if(data == 1){
                                document.getElementById("settings-modal-err1").innerHTML = "Input old password ERROR";
                            }else{
                                document.getElementById("settings-modal-err1").innerHTML = "Another ERROR";
                            }
                        }
                    },
                    error: function () {
                        alert("Connection error");
                    }
                });
            }

            break;
        default:
            document.getElementById('settings-modal-err').innerHTML = "Don't change data in modal!";
            break;
    }

    console.log(url);

}

function validateName(data) {
    var isValid = true;

    if (!NAME_PATTERN.test(data)) {

        document.getElementById("settings-modal-err").innerHTML = NAME_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}

function validateEmail(data){
    var isValid = true;

    if (!MAIL_PATTERN.test(data)) {

        document.getElementById("settings-modal-err").innerHTML = MAIL_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}

function validatePassword(data) {
    var isValid = true;

    if (!PASSWORD_PATTERN.test(data)) {

        document.getElementById("settings-modal-err").innerHTML = PASSWORD_ERROR_MESSAGE;

        isValid = false;
    }


    return isValid;
}

function validateConfirm(data) {
    var isValid = true;

    if (!PASSWORD_PATTERN.test(data)) {

        document.getElementById("settings-modal-err1").innerHTML = PASSWORD_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}

function validateMobile(data) {
    var isValid = true;

    if (!MOBILE_PATTERN.test(data)) {

        document.getElementById("settings-modal-err").innerHTML = MOBILE_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}

function isEquals(data,data1) {
    var isEquals = true;

    if (data == data1 && data != '' && data1 != '') {

        document.getElementById("settings-modal-err1").innerHTML = CONFIRM_ERROR_MESSAGE;

        isEquals = false;
    }

    return isEquals;
}