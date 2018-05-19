<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<c:forEach items="${ sujets }" var="sujet" varStatus="nbr">
	 <div class="sortable-moves ">
	 <div class="row">
	<div class="col-sm-2">
	 <h5>#${ sujet.specialite}${ nbr.count }</h5>
	</div>
	<div class="col-sm-10">
         <h6>${ sujet.titre}</h6>
         <p>${ sujet.contenu }</p>
	</div>
	</div>
     </div>
</c:forEach>

