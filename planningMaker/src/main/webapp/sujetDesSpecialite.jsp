<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:forEach begin="1" end="5" varStatus="stat">
	<div class="form-group row">
		<label class="col-sm-2 col-form-label">Sujet n°${ stat.index }: </label>
		<div class="ajax col-sm-10">
			<select id="select${ stat.index }" name="sujet${ stat.index }" class="form-control">
				<c:forEach items="${ sujets }" var="sujet">
					<option value="${ sujet.id }">${ sujet.titre }</option>
				</c:forEach>
			</select>
		</div>
	</div>
</c:forEach>
