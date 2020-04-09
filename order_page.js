$(document).ready(function(){  
	$('#btnLoad2').click(function(){		
		$.getJSON('basket.json', function(jsonData){
			var basketList = "";
			$.each(jsonData.basketInfo, function(){
				basketList += "<li>" + this.orderMenu + "</li>";
			});
			$('#listArea').empty();				
			$('#listArea').append(basketList);
			$('#listArea').listview('refresh');
		});
	});
});	


