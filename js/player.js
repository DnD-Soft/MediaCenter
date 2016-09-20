$(document).ready(function(){
	var pusti=function pustiF(){
		var data;
		$.post( "player.pl",{fileName:"pjesma3_1.mp3"}, function(data){
  			alert(data);
		});
		$(this).addClass("pusteno");
	}
	$(".content > ul > li > a").click(pusti);
});
