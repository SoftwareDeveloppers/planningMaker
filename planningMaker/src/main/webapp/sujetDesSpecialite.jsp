<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<select name="sujet" class="form-control">
<c:forEach items="${ sujets }" var="sujet">
	 <option value="${ sujet.id }">${ sujet.titre }</option>
</c:forEach>
	
</select>