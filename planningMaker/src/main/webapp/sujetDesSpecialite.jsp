<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<select name="select" class="form-control">
<c:forEach items="${ sujets }" var="sujet">
	 <option value="${ sujet.id }">${ sujet.titre }loooooooool</option>
</c:forEach>
	
</select>