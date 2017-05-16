<?php 
//all script need to have this include except login.
include("header.php");
require_once 'app/models/pending.php';

$wsRequest = new WSRequest($_REQUEST);

try
{
	$userMessage = "Busqueda Avanzada";
	$account = $_SESSION['account'];
	$manager = new Manager($account);
	$families = $manager->getFamilies();
	$genres = $manager->getGenres();
	$species = $manager->getSpecies();
}
catch (Exception $ex)
{
	ExceptionManager::handleException($ex);
	$userMessage = $ex->getMessage();
	$userMessage = '<div class="alert alert-danger">'.$userMessage.'</div>';
}

try
{
  $report = new Report($wsRequest, $account, Pending::all());
  $db = DB::getInstance();
  $transactions = $db->getData("search()");
  
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
                	<div class="col-lg-2">
	                	<label>Familia</label>
	                  <select name="filterFamily" id="filteredFamily" class="input-sm form-control">
	            				<option value="-1" <?php echo $filterFamily=='-1'?'selected':'';?>>Todos</option>
	            				<?php 
	            				 foreach ($families as $family) {
	            				   $id = $family['itemId'];
	            				   $value = $family['itemValue'];
	            				   if($filterFamily == $id){
	            				     echo "<option value='$id' selected>$value</option>";
	            				   }else{
	            				     echo "<option value='$id'>$value</option>";
	            				   }
	            				 }
	            				?>
	            			</select>
                	</div>
                	<div class="col-lg-2">
	                	<label>Género</label>
	                  <select name="filteredType" id="filteredType" class="input-sm form-control">
	            				<option value="-1" <?php echo $filteredType=='-1'?'selected':'';?>>Todos</option>
                                  <?php
                                  foreach ($genres as $g) {
                                      $id = $g['itemId'];
                                      $value = $g['itemValue'];
                                      if($filterFamily == $id){
                                          echo "<option value='$id' selected>$value</option>";
                                      }else{
                                          echo "<option value='$id'>$value</option>";
                                      }
                                  }
                                  ?>
	            			</select>
                	</div>
                     <div class="col-lg-2">
                         <label>Especie</label>
                         <select name="filteredType" id="filteredType" class="input-sm form-control">
                             <option value="-1" <?php echo $filteredType=='-1'?'selected':'';?>>Todos</option>
                             <?php
                             foreach ($species as $family) {
                                 $id = $family['itemId'];
                                 $value = $family['itemValue'];
                                 if($filterFamily == $id){
                                     echo "<option value='$id' selected>$value</option>";
                                 }else{
                                     echo "<option value='$id'>$value</option>";
                                 }
                             }
                             ?>
                         </select>
                     </div>
                	<div class="col-lg-4" id="dateRange">
                	   <label>Fecha de registro</label>
                     <div class="input-daterange input-group" id="datepicker">
                        <input type="text" class="input-sm form-control" name="filterBeginDate" id="filterBeginDate" readonly value="<?=$filterBeginDate?>"/>
                        <span class="input-group-addon">al</span>
                        <input type="text" class="input-sm form-control" name="filterEndDate" id="filterEndDate" readonly value="<?=$filterEndDate?>"/>
                    </div>
                </div>

              </div>
              <div class="row">
                <div class="col-lg-2">
                    <input type="submit" class="btn btn-success" value="Buscar">
                </div>
              </div>
              <br/>
            
              <!-- TABLE TRANSACTIONS -->
              <div class="panel panel-default">
                <div class="panel-heading">Resultado de la busqueda</div>
                <div class="panel-body">
  
                    <div class="table-responsive">
                      <table class="table table-striped table-bordered table-hover">
                        <?php echo $report->getReportTable($idUpdated); ?>
                      </table>
                    </div>
                    
                    <!-- PAGINATION TABLE TRANSACTIONS -->
                    <?php 
                      if($report->getTotal()){
                    ?>
                      <div class="btn-group" role="group">
                        <?php echo $report->getPaginationTable(); ?>
                      </div>
                    <?php 
                      }
                    ?>
                    <!-- PAGINATION TABLE TRANSACTIONS -->
                    
                </div>
              </div>
              <!-- END TABLE TRANSACTIONS --> 
          </form>        
          
            <!-- MODAL -->
            <div>               
              <?php
                foreach ($transactions as $transaction)
                {
  								$id = $transaction['Id'];
  								$statusId = $transaction['TransactionStatus_Id'];
  								$transactionTypeId = $transaction['TransactionType_Id'];
  								$transactionType = $transaction['TransactionType'];
  								$amount = $transaction['Amount'];
  								$fee = $transaction['Fee'];
  								$notes = $transaction['Notes'];
  								$controlNumber = $transaction['ControlNumber'];
  								$agency = $transaction['Agency'];
  								
  								$customer = $transaction['Customer'];
  								$customerName = strtoupper($transaction['CustomerName']);
  								
  								$personPersonalId = strtoupper($transaction['PersonPersonalId']);
  								$personName = strtoupper($transaction['PersonName']);
  								$personAddress = strtoupper($transaction['PersonAddress']);
  								$personCity = strtoupper($transaction['PersonCity']);
  								$personTypeId = strtoupper($transaction['PersonTypeId']);
  								$personExpirationDateId = strtoupper($transaction['PersonExpirationDateId']);
  								$personBirthDate = strtoupper($transaction['PersonBirthDate']);
  								$personMaritalStatus = strtoupper($transaction['PersonMaritalStatus']);
  								$personGender = strtoupper($transaction['PersonGender']);
  								$personProfession = strtoupper($transaction['PersonProfession']);
  								$personPhone = strtoupper($transaction['PersonPhone']);
  								
  								$createdDate = $transaction['CreatedDate'];
  								$modifiedDate = $transaction['ModifiedDate'];
  								//format date
  								$createdDate = date(Util::FORMAT_DATE_DISPLAY, strtotime($createdDate));
  								$modifiedDate = date(Util::FORMAT_DATE_DISPLAY, strtotime($modifiedDate));
  								$headerType = ($transactionTypeId == 1) ? 'modal-header-info' : 'modal-header-warning';
  								
  								$disabled = "";
  								$readonly = "";
                                if(($statusId != 3 && $statusId != 4) || (!$account->checkPermission('TRANSACTION_UPDATE'))){ //3: Approved | 4 Rejected
  								  $disabled = 'disabled';
  								  $readonly = 'readonly';
  								}
              ?>
							<div class="modal fade" id="myModal<?=$id?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
								<div class="modal-dialog">
									<div class="modal-content">
									
										<div class="modal-header <?=$headerType?>">
											<h4 class="modal-title" id="myModalLabel"><?=$transactionType?> Detalles de la Muestra</h4>
										</div>
										
										<div class="modal-body">
											<div class="panel-body">
                          <!-- Nav tabs -->
                          <ul class="nav nav-pills">
                            <li class="active"><a href="#tab-customer<?=$id?>" data-toggle="tab" aria-expanded="true">Detalles</a></li>
                            <li class=""><a href="#tab-person<?=$id?>" data-toggle="tab" aria-expanded="false">Ver Imagen</a></li>
                          </ul>
                          <!-- Tab panes -->
                          <div class="tab-content">
                              <!-- Tab Customer -->
                              <div class="tab-pane fade active in" id="tab-customer<?=$id?>">
                              		<br/>
                                  <table class="table">
																		<tbody>
																			<tr><td># de Registro</td><td><?=$id?></td></tr>
																			<tr><td>Familia</td><td><?=$amount?></td></tr>
																			<tr><td>Género</td><td><?=$customer?></td></tr>
																			<tr><td>Especie</td><td><?=$customerName?></td></tr>
																			<tr><td>Fecha de Colecta</td><td><?=$controlNumber?></td></tr>
																			<tr><td>Colector</td><td><?=$agency?></td></tr>
																			<tr><td>Validador</td><td><?=$createdDate?></td></tr>
																			<tr><td>Provincia</td><td><?=$modifiedDate?></td></tr>
																		</tbody>
							                    </table>
							                    
							                    <div class="modal-footer">
																		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																	</div>
                              </div>
                              <!-- Tab Person -->
                              <div class="tab-pane fade" id="tab-person<?=$id?>">
                              		<br/>

							                    
							                    <div class="modal-footer">
																		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																	</div>
                              </div>
                          
                          </div>
                      </div>
											
										</div>
										
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
              <?php
              } 
              ?>
              <!-- END MODAL -->
            </div>
          
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- FOOTER -->
<?php include("footer.php"); ?>