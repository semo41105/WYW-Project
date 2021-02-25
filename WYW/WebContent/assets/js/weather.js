 	$(function(){
		weatherJson();
	});
	
	function weatherJson(){
		$.getJSON('http://api.openweathermap.org/data/2.5/forecast?id=1835848&appid=d3689315a68c7fb612f372f174579300&units=metric',
				function(data){
				
			for(var i=1; i<data.list.length; i++){
				var maxTemp = data.list[0].main.temp_max;
				var minTemp = data.list[0].main.temp_min;
				
				if(maxTemp<(data.list[i].main.temp_max)){
					maxTemp = data.list[i].main.temp_max
				}
				if(minTemp>(data.list[i].main.temp_min)){
					minTemp = data.list[i].main.temp_min
				}
			}
				$('.maxtemp').append(maxTemp);
				$('.mintemp').append(minTemp);
		});
	}