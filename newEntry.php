<?php
//all script need to have this include except login.
include("header.php"); 

$wsRequest = new WSRequest($_REQUEST);

try
{
	$btnNew = $wsRequest->getParam('btnNew');
	if ($btnNew)
	{
	  $account = $_SESSION['account'];
	  $manager = new Manager($account);
	  
      $r = $manager->saveNewEntry($wsRequest);

      if(!$r)
      {
        $userMessage = '<div class="alert alert-danger">No se pudo generar el nuevo registro!</div>';
      }
      else
      {
        $userMessage = '<div class="alert alert-success">Por favor revisar la información suministrada</div>';
      }
	}
	else 
	{
		$userMessage = 'Nuevo Registro';
	}
}
catch (Exception $ex)
{
	ExceptionManager::handleException($ex);
	$userMessage = $ex->getMessage();
	$userMessage = '<div class="alert alert-danger">'.$userMessage.'</div>';
}
?>

<script type="text/javascript">
$(document).ready(function(){
    load_provincias();
	$("#provincia").change(function(){load_cantones();});
    $("#canton").change(function(){load_distritos();});
	$("#canton").attr("disabled",true);
    $("#distrito").attr("disabled",true);
});

function load_provincias()
{
	startSpinner();
	$.get("scripts/load-provincias.php", function(result){
		if(result == false)
		{
			alert("Error");
		}
		else
		{
			$('#provincia').append(result);
		}
		stopSpinner();
	});	
}
function load_cantones()
{
	startSpinner();
	var id = $("#provincia").val();
	$.get("scripts/load-cantones.php", { id: id },
		function(result)
		{
			if(result == false)
			{
				alert("Error");
			}
			else
			{
				$("#canton").attr("disabled",false);
				document.getElementById("canton").options.length=1;
				$('#canton').append(result);
			}
			stopSpinner();
		}

	);
}
function load_distritos()
{
    startSpinner();
    var id = $("#canton").val();
    $.get("scripts/load-distritos.php", { id: id },
        function(result)
        {
            if(result == false)
            {
                alert("Error");
            }
            else
            {
                $("#distrito").attr("disabled",false);
                document.getElementById("distrito").options.length=1;
                $('#distrito').append(result);
            }
            stopSpinner();
        }

    );
}
</script>

  <div id="page-wrapper">
  
    <div class="row">
      <div class="col-lg-12">
        <h3 class="page-header"><?=$userMessage?></h3>
      </div>
    </div>
    
    <!-- Result -->
    <?php if ($newEntry && $newEntry->getId()){ ?>
      <div class="row">
        <div class="col-lg-6">
          <div class="panel panel-default">
          
            <div class="panel-heading">
              <strong>Información</strong>
            </div>
            
            <div class="panel-body">
              <div class="row">
              	<div class="col-lg-12">           	
                  <table class="table">
                    <tbody>
                        <tr><td>Familia</td><td><?=$newEntry->getFamilia()?></td></tr>
                        <tr><td>Género</td><td><?=$newEntry->getGenero()?></td></tr>
                        <tr><td>Especie</td><td><?=$newEntry->getEspecie()?></td></tr>
                        <tr><td>Localización</td><td><?=$newEntry->getLocalizacion()?></td></tr>
                        <tr><td>Colector</td><td><?=$newEntry->getColector()?></td></tr>
                        <tr><td>Provincia</td><td><?=$newEntry->getProvincia()?></td></tr>
                        <tr><td>Canton</td><td><?=$newEntry->getCanton()?></td></tr>
                        <tr><td>Distrito</td><td><?=$newEntry->getDistrito()?></td></tr>
                    </tbody>
                  </table>
                </div>           
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <!-- Result -->
  	<?php } else { ?>
      <!-- New Entry -->
      <div class="row">
        <div class="col-lg-6">
          <div class="panel panel-default">
          
            <div class="panel-heading">
              <strong>Nueva Muestra</strong>
            </div>
            
            <div class="panel-body">
              <div class="row">
              	<div class="col-lg-12">
              	
                  <form role="form" data-toggle="validator" method="post" action="newEntry.php">
                    <fieldset>
                            <div class="form-group">
      						<select class="form-control input-sm" tabindex="1" name="familia" id="familia" required>
                              <option value="">Familia</option>
                              <option value="1">Uno</option>
      		                  <option value="2">Dos</option>
      		                </select>
      		                <input id="genero" name="genero" type="number" step="any" min="1" class="form-control input-sm" tabindex="2" autocomplete="off" placeholder="Género" required>
      		                <input id="especie" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Especie" name="especie" required>
      		                <input id="localizacion" class="form-control input-sm" type="text" tabindex="4" autocomplete="off" placeholder="Localización" name="localizacion" required>
      		                <input id="colector" class="form-control input-sm" type="text" tabindex="5" autocomplete="off" placeholder="Colector" name="colector" required>
      		                <input id="validador" class="form-control input-sm" type="text" tabindex="6" autocomplete="off" placeholder="Validador" name="validador" required>
      		                <input id="estado_muestra" class="form-control input-sm" type="text" tabindex="7" autocomplete="off" placeholder="Estado de la muestra" name="estado_muestra" data-error="el texto ingresado es invalido" required>

      		                <!-- Provincia -->
      		                <select class="form-control input-sm" tabindex="8" id="provincia" name="provincia" required>
      		                    <option value="">Provincia</option>
      		                </select>                
      		                <!-- Canton -->
      		                <select class="form-control input-sm" tabindex="9" id="canton" name="canton" required>
      		                    <option value="">Canton</option>
      		                </select>
      		                <!-- Distrito -->
      		                <select class="form-control input-sm" tabindex="10" name="distrito" id="distrito" required>
      		                    <option value="">Distrito</option>
      		                </select>
                            <button name="btnNewTransaction" type="submit" tabindex="11" value="true" class="btn btn-lg btn-primary btn-block">Crear nueva muestra</button>
      	                </div>
                      </fieldset>
                    </form>
                    
                  </div>           
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <!-- New Transaction -->
    <?php } ?>

  </div>

<!-- FOOTER -->
<?php include("footer.php"); ?>
