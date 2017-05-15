<?php

$wsRequest = new WSRequest($_REQUEST);

try
{
  $userMessage = "Muestras pendientes de validar";
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
  $idUpdated = $wsRequest->getParam("id", 0);
  if ($idUpdated) {
    $newFamily = $wsRequest->getParam("newFamily", 0);
    $newGenre = $wsRequest->getParam("newGenre", 0);
    $newSpecies = $wsRequest->getParam("newSpecies", 0);
    $newLocation = $wsRequest->getParam("newLocation", 0);
    $newNotes = $wsRequest->getParam("newNotes", 0);
    Pending::validate($idUpdated, $newFamily, $newGenre, $newSpecies, $newLocation, $newNotes);
  }

  $report = new Report($wsRequest, $account, $pending);
}
catch (Exception $ex)
{
  ExceptionManager::handleException($ex);
  $userMessage = $ex->getMessage();
  $userMessage = '<div class="alert alert-danger">'.$userMessage.'</div>';
}
?>

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
              <input type="submit" class="btn btn-success" value="Refrescar">
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
          foreach ($pending as $p)
          {
            $id = $p->id;

            $disabled = "";
            $readonly = "";
            ?>
            <div class="modal fade" id="myModal<?=$id?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
              <div class="modal-dialog">
                <div class="modal-content">

                  <div class="modal-header <?=$headerType?>">
                    <h4 class="modal-title" id="myModalLabel"><?=$transactionType?>Detalles de la Muestra</h4>
                  </div>

                  <div class="modal-body">
                    <div class="panel-body">
                      <!-- Nav tabs -->
                      <ul class="nav nav-pills">
                        <li class="active"><a href="#tab-process<?=$id?>" data-toggle="tab" aria-expanded="true">Detalles</a></li>
                        <li class=""><a href="#tab-customer<?=$id?>" data-toggle="tab" aria-expanded="false">Ver Imagen</a></li>
                      </ul>
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <!-- Tab Re-Process -->
                        <div class="tab-pane fade active in" id="tab-process<?=$id?>">
                          <br/>
                          <form role="form" data-toggle="validator" method="post" id="myForm<?=$id?>" name="myForm<?=$id?>">
                            <input type="hidden" id="id" name="id" value="<?=$id?>">

                            <div class="form-group">
                              <div class="form-group">
                                <!-- family -->
                                <label>Famila</label>
                                <select class="form-control input-sm <?=$disabled?>" id="newFamily" name="newFamily" required>
                                  <?php
                                  foreach ($families as $s) {
                                    $itemId = $s['itemId'];
                                    $value = $s['itemValue'];
                                    if($p->familyId == $itemId){
                                      echo "<option value='$itemId' selected>$value</option>";
                                    }else{
                                      echo "<option value='$itemId'>$value</option>";
                                    }
                                  }
                                  ?>
                                </select>
                              </div>
                              <div class="form-group">
                                <!-- Genero -->
                                <label>Género</label>
                                <select class="form-control input-sm <?=$disabled?>" id="newGenre" name="newGenre" required>
                                  <?php
                                  foreach ($genres as $s) {
                                    $itemId = $s['itemId'];
                                    $value = $s['itemValue'];
                                    if($p->genreId == $itemId){
                                      echo "<option value='$itemId' selected>$value</option>";
                                    }else{
                                      echo "<option value='$itemId'>$value</option>";
                                    }
                                  }
                                  ?>
                                </select>
                              </div>
                              <div class="form-group">
                                <!-- Especie -->
                                <label>Especie</label>
                                <select class="form-control input-sm <?=$disabled?>" id="newSpecies" name="newSpecies" required>
                                  <?php
                                  foreach ($species as $s) {
                                    $itemId = $s['itemId'];
                                    $value = $s['itemValue'];
                                    if($p->speciesId == $itemId){
                                      echo "<option value='$itemId' selected>$value</option>";
                                    }else{
                                      echo "<option value='$itemId'>$value</option>";
                                    }
                                  }
                                  ?>
                                </select>
                              </div>
                            </div>
                            <div class="form-group">
                              <label>Localización</label>
                              <input class="form-control input-sm" type="text" id="newLocation" name="newLocation" value="<?=$p->location?>" required <?=$readonly?>>
                            </div>
                            <div class="form-group">
                              <label>Notas</label>
                              <input class="form-control input-sm <?=$disabled?>" type="text" id="newNotes" name="newNotes" value="<?=$p->notes?>" required>
                            </div>
                            <div class="modal-footer">
                              <?php if ($account->checkPermission('SAMPLE_SAVE')){ ?>
                                <button type="submit" class="btn btn-success <?=$disabled?>">Guardar Cambios</button>
                              <?php }?>
                              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            </div>
                          </form>
                        </div>
                        <!-- Tab view image -->
                        <div class="tab-pane fade" id="tab-customer<?=$id?>">
                          <br/>

                          <div class="form-group">
                            <label class="control-label">Cambiar Imágen</label>
                            <input id="input-1" type="file" class="file">
                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-info" data-dismiss="modal">Cargar imagen</button>
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