<?php 
//all script need to have this include except login.
include("header.php"); 

$wsRequest = new WSRequest($_REQUEST);

try
{
	$userMessage = "Gestion de Familias - Generos - Especies";
	$account = $_SESSION['account'];
	$manager = new Manager($account);
	$families = $manager->getFamilies();
}
catch (Exception $ex)
{
	ExceptionManager::handleException($ex);
	$userMessage = $ex->getMessage();
	$userMessage = '<div class="alert alert-danger">'.$userMessage.'</div>';
}

try
{
  $report = new Report($wsRequest, $account);
  $transactions = $report->getTransactions();
  
  $filterFamily = $wsRequest->getParam("filterFamily", "3");
  $filteredType = $wsRequest->getParam("filteredType", "-1");
  $filterBeginDate = $wsRequest->getParam("filterBeginDate", "");
  $filterEndDate = $wsRequest->getParam("filterEndDate", "");
  $filterMTCN = $wsRequest->getParam("filterMTCN", "");
  $filterUniqueId = $wsRequest->getParam("filterUniqueId", "");
}
catch (Exception $ex)
{
	ExceptionManager::handleException($ex);
	$userMessage = $ex->getMessage();
	$userMessage = '<div class="alert alert-danger">'.$userMessage.'</div>';
}
?>
  <div id="page-wrapper">
  
    <div class="row">
      <div class="col-lg-12">
        <h3 class="page-header"><?=$userMessage?></h3>
      </div>

    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
        <div class="panel panel-default">
          <div class="panel-body">
          <form role="form" method="post" name="searchForm" id="searchForm">             
          	<div class="row">                
							<div class ="col-lg-4">
								<div class="form-group input-group">
									<div class="input-group-btn bs-dropdown-to-select-group">
										<button type="button" class="btn btn-default dropdown-toggle as-is bs-dropdown-to-select" data-toggle="dropdown" tabindex="-1">
											<span id="txtFamiliaSel" data-bind="txtFamiliaSel">Seleccione una Familia</span>
											<input type="hidden" name="familia_path" data-bind="txtFamiliaSelValue" value="--">
											<span class="caret"></span>												
											<button class="btn btn-default glyphicon glyphicon-edit" type="button"></button>						
										</button>										
										<ul id="ddFamilias" class="dropdown-menu" role="menu" style=" max-height: 300px; ">
											<!-- Loop -->
											<li data-value="Familia01"><a href="#">Familia 01 </a></li>
											<li data-value="Familia02"><a href="#">Familia02 </a></li>
											<li data-value="Familia03"><a href="#">Familia03 </a></li>
											<!-- END Loop -->												
										</ul>										
									</div>								
								</div>
							</div>
							<!--https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp-->
							<div class ="col-lg-4">
								<div class="form-group input-group">
									<div class="input-group-btn bs-dropdown-to-select-group">
										<button type="button" class="btn btn-default dropdown-toggle as-is bs-dropdown-to-select" data-toggle="dropdown" tabindex="-1">
											<span id="txtGeneroSel" data-bind="txtGeneroSel">Seleccione una Genero</span>
											<input type="hidden" name="Genero_path" data-bind="txtGeneroSelValue" value="--">
											<span class="caret"></span>												
											<button class="btn btn-default glyphicon glyphicon-edit" type="button"></button>						
										</button>										
										<ul id="ddGenero" class="dropdown-menu" role="menu" style=" max-height: 300px; ">
											<!-- Loop -->
											<li data-value="Genero01"><a href="#">Genero 01 </a></li>
											<li data-value="Genero02"><a href="#">Genero 02 </a></li>
											<li data-value="Genero03"><a href="#">Genero 03 </a></li>
											<!-- END Loop -->												
										</ul>										
									</div>								
								</div>
							</div>
							<div class ="col-lg-4">
								<div class="form-group input-group">
									<div class="input-group-btn  bs-dropdown-to-select-group">
										<button type="button" class=" btn btn-default dropdown-toggle as-is bs-dropdown-to-select" data-toggle="dropdown" tabindex="-1">
											<span data-bind="txtGeneroSel">Seleccione una Especie</span>
											<input type="hidden" name="Especie_path" data-bind="txtEspecieSelValue" value="Customer">
											<span class="caret"></span>												
											<button class="btn btn-default glyphicon glyphicon-edit" type="button"></button>						
										</button>										
										<ul id="ddlEspecies" class="dropdown-menu" role="menu" style=" max-height: 300px; ">
											<!-- Loop -->
											<li data-value="Customer"><a href="#">Especie 01 </a></li>
											<li data-value="Vendor"><a href="#">Especie02 </a></li>
											<li data-value="Competitor"><a href="#">Especie03 </a></li>
											<!-- END Loop -->												
										</ul>										
									</div>								
								</div>
							</div>                									
            </div>
						<br/>
						<!-- Area de Edicion -->
						<div class="row">
              <div class="panel panel-default">								
                <div class="panel-heading">
									Área de Edición de:
								</div>
                <div class="panel-body">       									
									<div class="row">
										
										<div id="area_selectList" class ="col-lg-4" style ="display: block">
											<form role="form">											
												<div class="form-group">
													<label id='lbSelectList'>Lista de Familias Seleccionables</label>
													<select id="selectList" class="form-control" size=9>
															<option>Familia 01</option>
															<option>Familia 02</option>
															<option>Familia 03</option>
															<option>Familia 04</option>
															<option>Familia 05</option>
															<option>Familia 06</option>
															<option>Familia 07</option>
															<option>Familia 08</option>
															<option>Familia 09</option>
															<option>Familia 10</option>													
													</select>
													<!--<button type="button" class="btn btn-primary btn-md">-->													
													<button id="bt_edit_selectList" type="button" class="btn btn-default btn-md">
          									<span class="glyphicon glyphicon-edit"></span> Editar
        									</button>
													<button id="bt_add_selectList" type="button" class="btn btn-primary btn-md">
          									<span class="glyphicon glyphicon-plus"></span> Agregar
        									</button>
													<button id="bt_remove_selectList" type="button" class="btn btn-primary btn-md">
          									<span class="glyphicon glyphicon-minus"></span> Quitar
        									</button>
												</div>
											</form>
										</div>

										<div id="area_listCompleta" class ="col-lg-4" style ="display: block">
											<form role="form">											
												<div class="form-group">
													<label id='lbListCompleta'>Lista Completa de: XXX</label>
													<select id="listCompleta" class="form-control" size=9>
															<option>Genero 01</option>
															<option>Genero 02</option>
															<option>Genero 03</option>
															<option>Genero 04</option>
															<option>Genero 05</option>
															<option>Genero 06</option>
															<option>Genero 07</option>
															<option>Genero 08</option>
															<option>Genero 09</option>
															<option>Genero 10</option>													
													</select>
													<button id="bt_ok_listCompleta" type="button" class="btn btn-success btn-md">
          									<span class="glyphicon glyphicon-ok"></span> Ok
        									</button>								
													<button id="bt_edit_listCompleta" type="button" class="btn btn-default btn-md">
          									<span class="glyphicon glyphicon-edit"></span> Editar
        									</button>
													<button id="bt_add_listCompleta" type="button" class="btn btn-primary btn-md">
          									<span class="glyphicon glyphicon-plus"></span> Agregar
        									</button>
													<button id="bt_remove_listCompleta" type="button" class="btn btn-primary btn-md">
          									<span class="glyphicon glyphicon-minus"></span> Quitar
        									</button>
												</div>
											</form>
										</div>

										<div id="area_nuevo_edit" class ="col-lg-4" style ="display: block">
											<form role="form">											
												<div class="form-group">
													<label id='lbNuevo_edit'>Nueva 'Familia'</label>
													<div class="form-group">
                            <label>Nuevo:</label>
														<input id="input_nuevo" class="form-control">
														<button id="bt_guardar_nuevo_edit" type="button" class="btn btn-success btn-md">
          										<span class="glyphicon glyphicon-floppy-disk"></span> Guardar
														</button>																						
														<button id="bt_cancel_nuevo_edit" type="button" class="btn btn-warning btn-md">
															<span class="glyphicon glyphicon-minus"></span> Cancelar
														</button>
													</div>
												</div>
											</form>
										</div>


									</div>
                </div>
								<div class="panel-heading">
									<div class="row">
										<div class ="col-lg-12" style ="display: block">
											<!--<button class="btn btn-success" type="button">Cerrar Edicion</button> S-->
											<button type="button" class="btn btn-success btn-xs">          								        									
												<span class="glyphicon glyphicon-chevron-left"></span> Cerrar Edición
											</button>											  
										</div>
									</div>
								</div>
              </div>
						</div>
            <!-- End Area de Edicion -->
          </form>        
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- FOOTER -->
<?php include("footer.php"); ?>