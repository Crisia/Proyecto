<div id="page-gestion_familia">
  
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
										<button id="btn_familia" type="button" class="btn btn-default dropdown-toggle as-is bs-dropdown-to-select" data-toggle="dropdown" tabindex="-1">
											<span id="txtFamiliaSel" data-bind="txtFamiliaSel" onchange= "desplegarDdlGeneros()">Seleccione una Familia</span>
											<input type="hidden" name="familia_path" data-bind="txtFamiliaSelValue" value="--">
											<span class="caret"></span>												
											<button id='editarFamilias' class="btn btn-default glyphicon glyphicon-edit" type="button" onclick="desp_AreaEdicion('0','editarFamilias')"></button>						
										</button>										
										<ul id="ddFamilias" class="dropdown-menu" role="menu">
											<!-- Loop -->
								<?php foreach($families as $family) { ?>
									<li data-value= <?php echo $family->name;?> onclick="selectFamilia('<?php echo $family->name;?>')" ><a href="#"> <?php echo $family->name;?> </a></li>
								<?php } ?>
											<!-- END Loop -->												
										</ul>										
									</div>								
								</div>
							</div>
							<!--https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp-->
							<div class ="col-lg-4">
								<div class="form-group input-group">
									<div class="input-group-btn bs-dropdown-to-select-group">
										<button id="btn_genero" type="button" class="btn btn-default dropdown-toggle as-is bs-dropdown-to-select" data-toggle="dropdown" tabindex="-1">
											<span id="txtGeneroSel" data-bind="txtGeneroSel">Seleccione un Genero</span>
											<input type="hidden" name="Genero_path" data-bind="txtGeneroSelValue" value="--">
											<span class="caret"></span>												
											<button id='editarGeneros' class="btn btn-default glyphicon glyphicon-edit" type="button" onclick="desp_AreaEdicion('1','editarGeneros')"></button>						
										</button>										
										<ul id="ddGenero" class="dropdown-menu" role="menu" style=" max-height: 300px; ">
											<!-- Loop -->
											<!-- END Loop -->												
										</ul>										
									</div>								
								</div>
							</div>
							<div class ="col-lg-4">
								<div class="form-group input-group">
									<div class="input-group-btn  bs-dropdown-to-select-group">
										<button  id="btn_especie" type="button" class=" btn btn-default dropdown-toggle as-is bs-dropdown-to-select" data-toggle="dropdown" tabindex="-1">
											<span id="txtEspecieSel" data-bind="txtEspecieSel">Seleccione una Especie</span>
											<input type="hidden" name="Especie_path" data-bind="txtEspecieSelValue" value="Customer">
											<span class="caret"></span>												
											<button id='editarEspecies' class="btn btn-default glyphicon glyphicon-edit" type="button" onclick="desp_AreaEdicion('2','editarEspecies')"></button>						
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
						<div id="areaEdicion"  class="row">
							<!--<div class="col-lg-12">-->
								<div class="panel panel-default">								
									<div id="name_edicion" class="panel-heading">
										Área de Edición de:
									</div>
									<div class="panel-body">
										<div class="row">
											
											<div id="area_selectList" class ="col-lg-4" style ="display: block">
												<form role="form">											
													<div class="form-group">
														<label id='lbSelectList'>Lista de Familias Seleccionables</label>
														<input id="filtro_selectList" class="form-control" placeholder ="Filtro">
														<select id="selectList" class="form-control" size=9>
																<!--																	
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
																-->												
														</select>
														<!--<button type="button" class="btn btn-primary btn-md">-->													
														<button id="bt_edit_selectList" type="button" class="btn btn-default btn-md" onclick = 'editar_selectList()'>
															<span class="glyphicon glyphicon-edit"></span> Editar
														</button>
														<button id="bt_add_selectList" type="button" class="btn btn-primary btn-md" onclick = 'agregar_selectList()'>
															<span class="glyphicon glyphicon-plus"></span> Agregar
														</button>
														<button id="bt_remove_selectList" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#quitarModalSL">
															<span class="glyphicon glyphicon-minus"></span> Quitar
														</button>
														<!-- Modal_Ini -->
														<div class="modal fade" id="quitarModalSL" role="dialog">
															<div class="modal-dialog modal-sm">
															
															<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal">&times;</button>
																<h4 class="modal-title">Eliminar ejemp_Familia</h4>
																</div>
																<div class="modal-body">
																<p id='msj_modal_1'>¿Desea eliminar la ejemp_Familia seleccionada?</p>
																</div>
																<div class="modal-footer">
																<button type="button" class="btn btn-success btn-sm" data-dismiss="modal" onclick='quitar_selectList()'>Aceptar</button>
																<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Cancelar</button>
																</div>
															</div>

															</div>
														<!-- Modal_Fin -->
														</div>
													</div>
												</form>
											</div>

											<div id="area_listCompleta" class ="col-lg-4" style ="display: block">
												<form role="form">											
													<div class="form-group">
														<label id='lbListCompleta'>Lista Completa de: XXX</label>
														<input id="filtro_lbListCompleta" class="form-control" placeholder ="Filtro">
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
														<button id="bt_ok_listCompleta" type="button" class="btn btn-success btn-md" onclick='ok_listCompleta()'>
															<span class="glyphicon glyphicon-ok"></span> Ok
														</button>								
														<button id="bt_edit_listCompleta" type="button" class="btn btn-default btn-md" onclick='editar_listCompleta()'>
															<span class="glyphicon glyphicon-edit"></span> Editar
														</button>
														<button id="bt_add_listCompleta" type="button" class="btn btn-primary btn-md" onclick='agregar_listCompleta()'>
															<span class="glyphicon glyphicon-plus"></span> Agregar
														</button>
														<button id="bt_remove_listCompleta" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#quitarModalLC">
															<span class="glyphicon glyphicon-minus"></span> Quitar
														</button>
														<!-- Modal_Ini -->
														<div class="modal fade" id="quitarModalLC" role="dialog">
															<div class="modal-dialog modal-sm">
															
															<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal">&times;</button>
																<h4 class="modal-title">Eliminar ejemp_Familia2</h4>
																</div>
																<div class="modal-body">
																<p id='msj_modal_2'>¿Desea eliminar el ejemp_Familia2 seleccionada?</p>
																</div>
																<div class="modal-footer">
																<button type="button" class="btn btn-success btn-sm" data-dismiss="modal" onclick='quitar_listCompleta()'>Aceptar</button>
																<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Cancelar</button>
																</div>
															</div>

															</div>
														<!-- Modal_Fin -->
														</div>
														
													</div>
												</form>
											</div>

											<div id="area_nuevo_edit" class ="col-lg-4" style ="display: block">
												<form role="form">											
													<div class="form-group">
														<label id='lbNuevo_edit'>Nueva 'Familia'</label>
														<div class="form-group">
															<label id="lblItemSelect">Nuevo:</label>
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
												<button type="button" class="btn btn-success btn-xs" onclick="cerrarAreaEdicion()">          								        									
													<span class="glyphicon glyphicon-chevron-left"></span> Cerrar Edición
												</button>											  
											</div>
										</div>
									</div>
								</div>
							<!--</div>-->
						</div>
            <!-- End Area de Edicion -->
          </form>        
          </div>
        </div>
      </div>
    </div>
  </div>
	<script type="text/javascript" src="../../js/gestion_familias.js"></script>