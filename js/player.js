$(document).ready(function(){
	function pusti(){
		alert("Shake it!");
		var data;
		$.post( "player.pl",{filename:"pjesma3_1.mp3"}, function(data){
  			alert(data);
		});
	}
	$(".content > ul > li > a").click(pusti());
});
