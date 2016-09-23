$(document).ready(function(){
	//when fiddling with player
	var player=0;
	//when choosing file from content
	var playerContent=function playerContent(){
		var returnData,data={fileName:""};
		//play from begining
		if($(this).hasClass("pjesma")){
			data.fileName=$(this).attr("fileId").trim();
			//data.action="play";
		}
		//stop previous and play this (pl script should  know to do this)
		/*else if($(this).hasClass("stoped")){
			data.fileName=$(this).attr("fileId").trim();
			data.action="stopPlay";
		}*/

		//send message
		$.post("player.pl",data,function(retData){
			alert(retData);
		});
	}
	$(".content > ul > li > a").click(playerContent);
});
