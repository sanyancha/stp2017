
function scrollSituation()
{
	$("#collapse2").collapse('hide');
	$("#collapse1").collapse('show');
	var element = document.getElementById("situation");
    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = element;
    });
	myMap();

}

function scrollContact()
{
	$("#collapse1").collapse('hide');
	$("#collapse2").collapse('show');
	var element = document.getElementById("contact");

	$('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = element;
    });

}

function myMap() {
	
	var myLatLng = new google.maps.LatLng(53.91156845, 27.59578407);
    
    var mapOptions = {
        center: myLatLng,
        zoom: 17,
        mapTypeId: google.maps.MapTypeId.HYBRID
    }

    var map = new google.maps.Map(document.getElementById("map"), mapOptions);

    var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Relax Laboratory'
  });
 }
 
 function getAllCourses() {
     if(!$('#allCources').hasClass('in')) {
         $.ajax({
             async: true,
             cache: false,
             url: '/get-all-course',
             method: 'GET',
             data: {},
             success: function (data) {
                 $(".all-courses-list").empty();
                 $.each(data, function(i, obj) {
                     $(".all-courses-list").append(
                         "<tr>" +
                         "<td>"+ (i + 1) +"</td>" +
                         "<td>"+obj.name+"</td>" +
                         "<td>"+obj.listenersQuantity+"</td>" +
                         "<td>"+obj.hours+"</td>" +
                         "<td>"+obj.dayWeek+"</td>" +
                         "<td>"+obj.price+"</td>" +
                         "</tr>"
                     );
                 });
                 $("#allCources").collapse('show');

                 var element = document.getElementById("scrollOnAllCourses");

                 $('html, body').animate({
                     scrollTop: $(element).offset().top
                 }, 900, function(){

                     window.location.hash = element;
                 });
             },
             error: function () {
                 alert("Connection error");
             }
         });
     }
 }

function getSelectionCourses() {
    if(!$('#selectionOpen').hasClass('in')) {
        $.ajax({
            async: true,
            cache: false,
            url: '/get-selection-open-course',
            method: 'GET',
            data: {},
            success: function (data) {
                $(".open-courses-list").empty();
                $.each(data, function(i, obj) {
                    $(".open-courses-list").append(
                        "<tr>" +
                        "<td>"+ (i + 1) +"</td>" +
                        "<td>"+obj.course.name+"</td>" +
                        "<td>"+obj.startDate+"</td>" +
                        "<td>"+obj.finishDate+"</td>" +
                        "<td>"+obj.course.listenersQuantity+"</td>" +
                        "<td>"+obj.course.hours+"</td>" +
                        "<td>"+obj.course.dayWeek+"</td>" +
                        "<td>"+obj.course.price+"</td>" +
                        "</tr>"
                    );
                });

                $("#selectionOpen").collapse('show');

                var element = document.getElementById("scrollOnSelectionOpen");

                $('html, body').animate({
                    scrollTop: $(element).offset().top
                }, 900, function(){

                    window.location.hash = element;
                });
            },
            error: function () {
                alert("Connection error");
            }
        });
    }
}

function getPlannedCourses() {
    if(!$('#plannedCourses').hasClass('in')) {
        $.ajax({
            async: true,
            cache: false,
            url: '/get-planned-course',
            method: 'GET',
            data: {},
            success: function (data) {
                $(".planned-courses-list").empty();
                var date;

                $.each(data, function(i, obj) {
                    $(".planned-courses-list").append(
                        "<tr>" +
                        "<td>"+ (i + 1) +"</td>" +
                        "<td>"+obj.course.name+"</td>" +
                        "<td>"+obj.startDate+"</td>" +
                        "<td>"+obj.finishDate+"</td>" +
                        "<td>"+obj.course.listenersQuantity+"</td>" +
                        "<td>"+obj.course.hours+"</td>" +
                        "<td>"+obj.course.dayWeek+"</td>" +
                        "<td>"+obj.course.price+"</td>" +
                        "</tr>"
                    );
                });

                $("#plannedCourses").collapse('show');

                var element = document.getElementById("scrollOnPlanned");

                $('html, body').animate({
                    scrollTop: $(element).offset().top
                }, 900, function(){

                    window.location.hash = element;
                });
            },
            error: function () {
                alert("Connection error");
            }
        });
    }
}

function scrollOn(idObj)
{
    var element = document.getElementById(idObj);

    $('html, body').animate({
        scrollTop: $(element).offset().top
    }, 900, function(){

        window.location.hash = element;
    });
}