<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<select name="sujet${ c }" class="form-control" onchange="sujets1(value);">
<option value="">Choix numéro ${ c }</option>
<c:forEach items="${ sujets }" var="sujet">
	 <option value="${ sujet.id }">${ sujet.titre }</option>
</c:forEach>
	
</select>