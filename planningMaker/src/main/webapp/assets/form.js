$(function() {

	$(".red").click(function() {

		var idSujet1 = $("select#select1").val();
		var idSujet2 = $("select#select2").val();
		var idSujet3 = $("select#select3").val();
		var idSujet4 = $("select#select4").val();
		var idSujet5 = $("select#select5").val();
		
		if (idSujet1 != idSujet2 && idSujet1 != idSujet3 && idSujet1 != idSujet4 && idSujet1 != idSujet5
				&& idSujet2 != idSujet3 && idSujet2 != idSujet4 && idSujet2 != idSujet5 && idSujet3 != idSujet4
				&& idSujet3 != idSujet5 && idSujet4 != idSujet5 ) {
			
			return true ; 
		}else
		{
			alert ("Vous devez choisir des sujets different!!");
		return false;
		
		}
			
			

	});

});