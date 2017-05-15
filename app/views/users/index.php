<?php

$wsRequest = new WSRequest($_REQUEST);

try
{
  $userMessage = "Usuarios en el sistema";
  $account = $_SESSION['account'];
  $manager = new Manager($account);
  $roles = $manager->getRoles();
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

  $idUpdated = $wsRequest->getParam("id", 0);
  $idNew = $wsRequest->getParam("idNew", 0);
  if ($idUpdated || $idNew) {
    $newUser = $wsRequest->getParam("newUser", 0);
    $newPassword = $wsRequest->getParam("newPassword", 0);
    $newName = $wsRequest->getParam("newName", 0);
    $newRole = $wsRequest->getParam("newRole", 0);
    if ($idUpdated) {
      $userUpdated = User::validate($idUpdated, $newUser, $newPassword, $newName, $newRole);
    }
    if ($idNew) {
      $userUpdated = User::validate($idNew, $newUser, $newPassword, $newName, $newRole);
      if ($userUpdated) {
        $users[] = $userUpdated;
      }
    }
  }
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
              <a title='Open' class="btn btn-info" data-toggle="modal" data-target="#myModalNew">Crear Usuario</a>
            </div>
          </div>
          <br/>

          <!-- TABLE TRANSACTIONS -->
          <div class="panel panel-default">
            <div class="panel-heading">Resultado de la busqueda</div>
            <div class="panel-body">

              <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                  <?php echo $report->getUsersTable($users, $idUpdated, $userUpdated); ?>
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

        <!-- MODAL for new users -->
        <div class="modal fade" id="myModalNew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">

              <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Agregar nuevo usuario</h4>
              </div>

              <div class="modal-body">
                <div class="panel-body">
                  <!-- Nav tabs -->
                  <ul class="nav nav-pills">
                    <li class="active"><a href="#tab-processNew" data-toggle="tab" aria-expanded="true">Detalles</a></li>
                  </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <!-- Tab Re-Process -->
                    <div class="tab-pane fade active in" id="tab-processNew">
                      <br/>
                      <form role="form" data-toggle="validator" method="post" id="myFormNew" name="myFormNew">
                        <input type="hidden" id="idNew" name="idNew" value="New">

                        <div class="form-group">

                          <div class="form-group">
                            <label>Usuario</label>
                            <input class="form-control input-sm" type="text" id="newUser" name="newUser" value="<?=$user->user?>" required <?=$readonly?>>
                          </div>
                          <div class="form-group">
                            <label>Clave</label>
                            <input class="form-control input-sm <?=$disabled?>" type="password" id="newPassword" name="newPassword" value="<?=$user->pass?>" required>
                          </div>
                          <div class="form-group">
                            <label>Nombre</label>
                            <input class="form-control input-sm" type="text" id="newName" name="newName" value="<?=$user->name?>" required <?=$readonly?>>
                          </div>

                          <div class="form-group">
                            <!-- roles -->
                            <label>Rol</label>
                            <select class="form-control input-sm <?=$disabled?>" id="newRole" name="newRole" required>
                              <?php
                              foreach ($roles as $r) {
                                $itemId = $r['itemId'];
                                $value = $r['itemValue'];
                                echo "<option value='$itemId'>$value</option>";
                              }
                              ?>
                            </select>
                          </div>

                        </div>
                        <div class="modal-footer">
                          <button type="submit" class="btn btn-success <?=$disabled?>">Crear Usuario</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        </div>
                      </form>
                    </div>

                  </div>
                </div>

              </div>

            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- MODAL for new users -->

        <!-- MODAL -->
        <div>
          <?php
          foreach ($users as $user)
          {
            $id = $user->id;

            $disabled = "";
            $readonly = "";
            ?>
            <div class="modal fade" id="myModal<?=$id?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
              <div class="modal-dialog">
                <div class="modal-content">

                  <div class="modal-header <?=$headerType?>">
                    <h4 class="modal-title" id="myModalLabel">Detalles del usuario</h4>
                  </div>

                  <div class="modal-body">
                    <div class="panel-body">
                      <!-- Nav tabs -->
                      <ul class="nav nav-pills">
                        <li class="active"><a href="#tab-process<?=$id?>" data-toggle="tab" aria-expanded="true">Detalles</a></li>
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
                                <label>Usuario</label>
                                <input class="form-control input-sm" type="text" id="newUser" name="newUser" value="<?=$user->user?>" required <?=$readonly?>>
                              </div>
                              <div class="form-group">
                                <label>Clave</label>
                                <input class="form-control input-sm <?=$disabled?>" type="password" id="newPassword" name="newPassword" value="<?=$user->pass?>" required>
                              </div>
                              <div class="form-group">
                                <label>Nombre</label>
                                <input class="form-control input-sm" type="text" id="newName" name="newName" value="<?=$user->name?>" required <?=$readonly?>>
                              </div>

                              <div class="form-group">
                                <!-- roles -->
                                <label>Rol</label>
                                <select class="form-control input-sm <?=$disabled?>" id="newRole" name="newRole" required>
                                  <?php
                                  foreach ($roles as $r) {
                                    $itemId = $r['itemId'];
                                    $value = $r['itemValue'];
                                    if($user->role == $itemId){
                                      echo "<option value='$itemId' selected>$value</option>";
                                    }else{
                                      echo "<option value='$itemId'>$value</option>";
                                    }
                                  }
                                  ?>
                                </select>
                              </div>

                            </div>
                            <div class="modal-footer">
                              <?php if ($account->checkPermission('SAMPLE_SAVE')){ ?>
                                <button type="submit" class="btn btn-success <?=$disabled?>">Guardar Cambios</button>
                              <?php }?>
                              <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            </div>
                          </form>
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