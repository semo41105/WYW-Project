/*
	Visualize by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
*/

$(document).ready(function(){
	$("#city").change(function(){
		var selectCity = $(this).val();
		console.log(selectCity);
	});
});


const getJSON = function(url, callback){
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function(){
        
        const status = xhr.status;
        if(status === 200){
            callback(null, xhr.response);
        }else{
            callback(status, xhr.response);
        }
    };
    xhr.send();
};

getJSON('http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=d3689315a68c7fb612f372f174579300&units=metric',
function(err, data){
    if(err !== null){
        alert("오류 발생");
    }else{
        loadWeather(data);
    }
});

function loadWeather(data){
    var location = document.querySelector('.location');
    var currentTime = document.querySelector('.current-time');
    var currentTemp = document.querySelector('.current-temp');
    var feelsLike = document.querySelector('.feels-like');

    var date = new Date();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    var hours = date.getHours();
    var minutes = date.getMinutes();

    location.append(data.name, ', ',`${data.sys.country}`);
    currentTemp.append(`${data.main.temp}`);
    feelsLike.append(`${data.main.feels_like}`);
    currentTime.prepend(`${month}월 ${day}일 ${hours}:${minutes}`);
}



$(function() {

	// Vars.
		var	$window = $(window),
			$body = $('body'),
			$wrapper = $('#wrapper');

	// Breakpoints.
		skel.breakpoints({
			xlarge:	'(max-width: 1680px)',
			large:	'(max-width: 1280px)',
			medium:	'(max-width: 980px)',
			small:	'(max-width: 736px)',
			xsmall:	'(max-width: 480px)'
		});

	// Disable animations/transitions until everything's loaded.
		$body.addClass('is-loading');

		$window.on('load', function() {
			$body.removeClass('is-loading');
		});

	// Poptrox.
		$window.on('load', function() {

			$('.thumbnails').poptrox({
				onPopupClose: function() { $body.removeClass('is-covered'); },
				onPopupOpen: function() { $body.addClass('is-covered'); },
				baseZIndex: 10001,
				useBodyOverflow: false,
				usePopupEasyClose: true,
				overlayColor: '#000000',
				overlayOpacity: 0.75,
				popupLoaderText: '',
				fadeSpeed: 500,
				usePopupDefaultStyling: false,
				windowMargin: (skel.breakpoint('small').active ? 5 : 50)
			});

		});

});