function scrollPython()
{   
	hideAll();
	$("#collapse1").collapse('show');
	var element = document.getElementById("python");
	element.scrollIntoView(true);

}

function scrolldotnet()
{
	hideAll();
	$("#collapse2").collapse('show');
	var element = document.getElementById("dotnet");
	element.scrollIntoView(true);

}

function scrollRuby()
{
	hideAll();
	$("#collapse3").collapse('show');
	var element = document.getElementById("ruby");
	element.scrollIntoView(true);

}

function scrollJava()
{
	hideAll();
	$("#collapse4").collapse('show');
	var element = document.getElementById("java");
	element.scrollIntoView(true);

}

function scrollJS()
{
	hideAll();
	$("#collapse5").collapse('show');
	var element = document.getElementById("js");
	element.scrollIntoView(true);

}

function scrollJQuery()
{
	hideAll();
	$("#collapse6").collapse('show');
	var element = document.getElementById("jquery");
	element.scrollIntoView(true);

}

function scrollAzure()
{
	hideAll();
	$("#collapse7").collapse('show');
	var element = document.getElementById("azure");
	element.scrollIntoView(true);

}

function scrollCss()
{
	hideAll();
	$("#collapse8").collapse('show');
	var element = document.getElementById("css3");
	element.scrollIntoView(true);

}

function scrollHtml()
{
    hideAll();
    $("#collapse9").collapse('show');
    var element = document.getElementById("html5");
    element.scrollIntoView(true);

}

function hideAll(){
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

function getVisitedCourses(){
    if(!$('#visitedCourses').hasClass('in')) {
        $.ajax({
            async: true,
            cache: false,
            url: '/get-visited-courses',
            method: 'GET',
            data: {},
            success: function (data) {
                alert(data);
            },
            error: function () {
                alert("Connection error");
            }
        });
    }
}