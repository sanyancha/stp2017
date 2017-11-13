var NAME_PATTERN = /^[A-Z][a-z]+$/;
var MAIL_PATTERN = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
var MOBILE_PATTERN = /^\+375\d{9}$/;
var PASSWORD_PATTERN = /(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-ZА-Я])(?=.*[a-zа-я]).*$/;

var NAME_ERROR_MESSAGE = "*At least 2 letters (first capital)";

var MAIL_ERROR_MESSAGE = "*Incorrect input eMail";

var MOBILE_ERROR_MESSAGE = "*Сorrect form: +375xxxxxxxxx";

var PASSWORD_ERROR_MESSAGE = "*At least 8 char (one letter in each register and one digit)";

var CONFIRM_ERROR_MESSAGE = "*Passwords must be equals";



function validateName() {
    var isValid = true;
    var name = document.getElementById("firstName").value;


    if (!NAME_PATTERN.test(name)) {

        document.getElementById("nameErr").innerHTML = NAME_ERROR_MESSAGE;

        isValid = false;
    }


    return isValid;
}

function validateEmail(){
    var isValid = true;

    var mail = document.getElementById("inputEmail").value;

    if (!MAIL_PATTERN.test(mail)) {

        document.getElementById("emailErr").innerHTML = MAIL_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}

function validatePassword() {
    var isValid = true;

    var password = document.getElementById("inputPassword").value;

    if (!PASSWORD_PATTERN.test(password)) {

        document.getElementById("passwordErr").innerHTML = PASSWORD_ERROR_MESSAGE;

        isValid = false;
    }


    return isValid;
}


function validateConfirm() {
    var isValid = true;

    var conf = document.getElementById("confirmPassword").value;

    if (!PASSWORD_PATTERN.test(conf)) {

        document.getElementById("confirmErr").innerHTML = PASSWORD_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}

function validateMobile() {
    var isValid = true;

    var mobile = document.getElementById("phoneNumber").value;

    if (!MOBILE_PATTERN.test(mobile)) {

        document.getElementById("phoneErr").innerHTML = MOBILE_ERROR_MESSAGE;

        isValid = false;
    }

    return isValid;
}




function isEquals() {
    var isEquals = true;

    var password = document.getElementById("inputPassword").value;
    var conf = document.getElementById("confirmPassword").value;

    if (password != conf && password != '' && conf != '') {

        document.getElementById("equalErr").innerHTML = CONFIRM_ERROR_MESSAGE;

        isEquals = false;
    }

    return isEquals;
}

function validateReg() {
    var isValid = true;

    document.getElementById("nameErr").innerHTML = "<br>";
    document.getElementById("emailErr").innerHTML = "<br>";
    document.getElementById("passwordErr").innerHTML = "<br>";
    document.getElementById("confirmErr").innerHTML = "<br>";
    document.getElementById("phoneErr").innerHTML = "<br>";
    document.getElementById("equalErr").innerHTML = "<br>";


    if (!validateName()) {
        isValid = false;
    }

    if (!validateEmail()) {
        isValid = false;
    }

    if (!validatePassword()) {
        isValid = false;
    }

    if (!validateConfirm()) {
        isValid = false;
    }

    if (!validateMobile()) {
        isValid = false;
    }

    if (!isEquals()) {
        isValid = false;
    }

    return isValid;
}