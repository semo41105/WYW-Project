	 function getJson(){
	        if(navigator.geolocation){
	    		navigator.geolocation.getCurrentPosition(function(pos){
	    			var lon = pos.coords.longitude;
	    			var lat = pos.coords.latitude;
	    			$.ajax({
	    				url: 'http://api.vworld.kr/req/address?service=address&request=getAddress&version=2.0&crs=epsg:4326&point=+126.978275264,37.566642192&format=json&type=road&zipcode=false&simple=false&key=C9124CC8-A802-34ED-89F3-EE44D2CBEEB7',
	    				method: 'GET',
	    				dataType: 'jsonp',
	    				data: { "result": "text" },
	    				cache: false,
	    				success: function(data) {
	    					console.log(data);
	    					
	    				},error:function(){
	    					alert("실패")
	    				}
	    			});
	    		});
	        }else{
	    		alert("지원하지않습니다");
	    	}
	        
	    }
