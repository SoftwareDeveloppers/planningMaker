<%@page import="dao.AgentDaoImpl"%>
<%@page import="dao.EtudiantDaoImpl"%>
<%@page import="dao.EnseignantDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idAgent}">
		<c:redirect url="Login"></c:redirect>
	</c:when>
	<c:otherwise>
<jsp:include page="header.jsp"></jsp:include>
 
									 <div class="pcoded-content">
                        <div class="pcoded-inner-content">     
                        <div class="page-body m-t-40">
             </br>
                    <div class="row">
                   
                    <!-- user card start -->
                                           <div class="col-sm-4">
                                                <div class="card bg-c-pink text-white widget-visitor-card">
                                                    <div class="card-block-small text-center">
                                                        <h2> 
                                                        <%EtudiantDaoImpl etuDao =new EtudiantDaoImpl();
                                                         int nbrEtu=etuDao.NombreEtudiant();                                                                
                                                         %>
                                                        <%=nbrEtu %></h2>
                                                        <h6>Nombre des étudiants </h6>
                                                        <i class="ti-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                 <div class="card bg-info text-white widget-visitor-card">                                           
                                                    <div class="card-block-small text-center">
                                                    <h2>
                                                    <%EnseignantDaoImpl ensDao =new EnseignantDaoImpl();
                                                         int nbrEns=ensDao.NombreEnseignant();                                                                
                                                    %>
                                                    <%=nbrEns %>
                                                        </h2>
                                                        <h6>Nombre des enseignants</h6>
                                                        <i class="ti-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="card bg-c-yellow text-white widget-visitor-card">
                                                    <div class="card-block-small text-center">
                                                        <h2> <%AgentDaoImpl AgDao =new AgentDaoImpl();
                                                         int nbrAg=AgDao.NombreAgent();                                                                
                                                         %>
                                                        <%=nbrAg %></h2>
                                                        <h6>Nombre des agents administratifs</h6>
                                                        <i class="ti-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!-- user card end -->
                    </div> <!-- row -->
                    
                    <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Notes card start -->
                                                <div class="card">
                                                    <div class="card-block note-card">
                                                        <div class="note-box-wrapper row">
                                                            <div class="note-box-aside col-lg-12 col-xl-3">
                                                                <div class="row">
                                                                    <div class="col-2">
                                                                        <h5><i class="icofont icofont-file-text m-r-5"></i></h5>
                                                                    </div>
                                                                    <div class="col-10">
                                                                        <input class="form-control form-control-lg" type="text" id="Note-search" placeholder="Search notes">
                                                                    </div>
                                                                </div>
                                                                <div class="notes-list">
                                                                    <ul id="Note-list" class="Note-list list-group"></ul>
                                                                </div>
                                                            </div>
                                                            <div class="note-box-content col-lg-12 col-xl-9">
                                                                <div class="Note-header">
                                                                    <div class="Note-created f-right">
                                                                        <span class="Note-created__on">Note Created On</span>
                                                                        <span class="Note-created__date" id="Note-created__date"></span>
                                                                    </div>
                                                                    <a href="#" class="btn btn-md btn-primary hidden-xs Note-add">Add New +</a>
                                                                </div>
                                                                <div class="note-body">
                                                                    <div class="note-write">
                                                                        <textarea id="Note-pad" class="form-control" placeholder="Type your note here" rows="10"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Notes card end -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page body end -->
                    
                     </div>
                     
                  </div>  
                  </div> 


<jsp:include page="footer.jsp"></jsp:include>
</c:otherwise>
</c:choose>