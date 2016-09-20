$(document).ready(function(){
	var pusti=function pustiF(){
		alert("Shake it!");
		var data;
		$.post( "player.pl",{fileName:"pjesma3_1.mp3"}, function(data){
  			alert(data);
		});
	}
	$(".content > ul > li > a").click(pusti);
});
