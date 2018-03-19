<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<c:forEach items="${ sujets }" var="sujet" varStatus="nbr">
	 <div class="sortable-moves ">
         <h6>#<c:out value="${ nbr.count }"></c:out> ${ sujet.titre}</h6>
         <p>${ sujet.contenu }</p>
     </div>
</c:forEach>
</select>