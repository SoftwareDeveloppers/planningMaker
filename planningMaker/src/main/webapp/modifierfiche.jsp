<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

 <form role="form" method="post" action="ModifierFiche">
<c:forEach begin="0" end="5" items="${ liste }" var="liste">
	<div class="form-group row">
		<label class="col-sm-3 col-form-label">Sujet n°${ i=i+1 }: </label>
		<div class="ajax col-sm-9">
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
    <div class="">
		<button type="submit" class="modifier btn btn-primary m-b-0" style="float: right;">Validez</button>
    </div>
</form>
		