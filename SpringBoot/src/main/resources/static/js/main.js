
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
                 alert(data);
             },
             error: function (message) {
                 alert(message);
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
                alert(data);
            },
            error: function (message) {
                alert(message);
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
                alert(data);
            },
            error: function (message) {
                alert(message);
            }
        });
    }
}

function scrollOn(idObj)
{
    var element = document.getElementById(idObj);
    element.scrollIntoView(true);
}