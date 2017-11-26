
function scrollSituation()
{
	$("#collapse2").collapse('hide');
	$("#collapse1").collapse('show');
	var element = document.getElementById("situation");
	element.scrollIntoView(true);
	myMap();

}

function scrollContact()
{
	$("#collapse1").collapse('hide');
	$("#collapse2").collapse('show');
	var element = document.getElementById("contact");
	element.scrollIntoView(true);

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
                 scrollOn('scrollOnAllCourses');
                 $("#allCources").collapse('show');
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
                scrollOn('scrollOnSelectionOpen');
                $("#selectionOpen").collapse('show');
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
                scrollOn('scrollOnPlanned');
                $("#plannedCourses").collapse('show');
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
    element.scrollIntoView(true);
}