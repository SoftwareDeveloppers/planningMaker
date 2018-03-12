	<jsp:include page="header.jsp"></jsp:include>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                <!-- Page-header start -->
                                    <div class="page-header card">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <i class="icofont icofont-file-code bg-c-blue"></i>
                                                    <div class="d-inline">
                                                        <h4>Proposer Sujets</h4>
                                                        <span>Vous devez remplir touts les champs</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                   <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item">
                                                            <a href="fiche-de-voeux.html">
                                                                <i class="icofont icofont-home"></i>
                                                            </a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Consultez</a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Ajouter un sujet</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page-header end -->
                                   <!--/*********************************************************************************************-->
                                    <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                        	 <div class="col-sm-1"></div>
                                            <div class="col-sm-10">
                                               <!-- Basic Form Inputs card start -->
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Veuillez proposer votre sujet :</h5>
                                                    
                                                    <div class="card-header-right"><i
                                                            class="icofont icofont-spinner-alt-5"></i></div>

                                                    <div class="card-header-right">
                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                    </div>

                                                </div>
                                                <div class="card-block">
                                                    
                                                    <form>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Specialité*:</label>
                                                            
                                                                <select name="select" class="form-control" required>
                                                                    <option value="opt1">Selectioner spécialitée</option>
                                                                    <option value="opt2">GL</option>
                                                                    <option value="opt3">RSD</option>
                                                                    <option value="opt4">SIC</option>
                                                                    <option value="opt5">MID</option>
                                                                    <option value="opt6">Type 6</option>
                                                                    <option value="opt7">Type 7</option>
                                                                    <option value="opt8">Type 8</option>
                                                                </select>
                                                            
                                                        </div>
                                                        
                                                        <div class="form-group">
									                        <label for="exampleInputEmail1">Titre*:</label>
									                        <input type="text" name="nom" class="form-control"  placeholder="Titre" required>
									                    </div>
									                    
									                    <div class="form-group">
									                        <label for="exampleTextarea">Description*:</label>
									                        <textarea class="form-control" id="exampleTextarea" rows="3" required></textarea>
									                    </div>
                                                        
                                                        <div class="form-group row">
                                                                <label class="col-sm-2"></label>
                                                                <div class="col-sm-10">
                                                                    <button type="submit" class="btn btn-primary m-b-0">Ajouter</button>
                                                                </div>
                                                            </div>
                                                    </form>
                                                        
                                                </div>
                                            </div>
                                            <!-- Basic Form Inputs card end -->
                                            </div>
                                           <div class="col-sm-1"></div>
                                        </div>
                                    </div>
                                    <!-- Page body end -->
                                    <!--/*********************************************************************************************-->
                                </div>
                            </div>
                            <!-- Main-body end -->
                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>

