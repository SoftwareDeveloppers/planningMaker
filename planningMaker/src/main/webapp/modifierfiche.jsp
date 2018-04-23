<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

 <form role="form" method="post" action="ModifierFiche">
<c:forEach begin="0" end="5" items="${ liste }" var="liste">
	<div class="form-group row">
		<label class="col-sm-2 col-form-label">Sujet n°${ i=i+1 }: </label>
		<div class="ajax col-sm-10">
			<select id="select${i}" name="sujet${i}" class="form-control">
				<c:forEach items="${ listeSujets }" var="listeSujets">
					<c:choose>
					<c:when test="${listeSujets.titre eq liste.titre}">
					
					<option id="option${i}" value="${ listeSujets.id }" selected="selected" > ${listeSujets.titre} </option>
					
					</c:when>
					<c:otherwise>
					
					<option id="option${i}" value="${ listeSujets.id }">${ listeSujets.titre }</option>
					
					</c:otherwise>
				
				   </c:choose>
				</c:forEach>
			</select>
		</div>
	</div>
</c:forEach>
    <div class="col-sm-10">
		<button type="submit" class="modifier btn btn-primary m-b-0">Validez</button>
    </div>
</form>
		<script type="text/javascript">


			$(".modifier").click(function() {

				
				var int idSujet1 = $('#option1').val();
				var int idSujet2 = $('#option2').val();
				var int idSujet3 = $('#option3').val();
				var int idSujet4 = $('#option4').val();
				var int idSujet5 = $('#option5').val();
				
				if (idSujet1 == idSujet2 || idSujet1 == idSujet3 || idSujet1 == idSujet4 || idSujet1 == idSujet5
						|| idSujet2 == idSujet3 || idSujet2 == idSujet4 || idSujet2 == idSujet5 || idSujet3 == idSujet4
						|| idSujet3 == idSujet5 || idSujet4 == idSujet5 ) {
					$
					.growl(
							{
								icon : '',
								title : 'Veuillez choisir des sujets différents ',
								message : '',
								url : ''
							},
							{
								element : 'body',
								type : 'danger',
								allow_dismiss : true,
								placement : {
									from : 'top',
									align : 'right'
								},
								offset : {
									x : 30,
									y : 30
								},
								spacing : 10,
								z_index : 999999,
								delay : 3500,
								timer : 1000,
								url_target : '_blank',
								mouse_over : false,
								animate : {
									enter : 'animated fadeInRight',
									exit : 'animated fadeOutRight'
								},
								icon_type : 'class',
								template : '<div data-growl="container" class="alert" role="alert">'
										+ '<button type="button" class="close" data-growl="dismiss">'
										+ '<span aria-hidden="true">&times;</span>'
										+ '<span class="sr-only">Close</span>'
										+ '</button>'
										+ '<span data-growl="icon"></span>'
										+ '<span data-growl="title"></span>'
										+ '<span data-growl="message"></span>'
										+ '<a href="#" data-growl="url"></a>'
										+ '</div>'
							});
					return false ;
				}else{
					
				
				    $.ajax({
				
					type : 'POST',
					data : {
						 sujet1 : idSujet1,
						 sujet2 : idSujet2,
						 sujet3 : idSujet3,
						 sujet4 : idSujet4,
						 sujet5 : idSujet5
					},
					url : 'ModifierFiche',
					success : function(resultat) {
					document.location.href = resultat
					
					}
				
			});
			
				return false;	
			}	

				
			
		});
		</script>