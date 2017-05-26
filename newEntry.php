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
    
    load_familia();
  $("#familia").change(function(){load_genero();});
  $("#genero").change(function(){load_especie();});
    $("#genero").attr("disabled",true);
    $("#especie").attr("disabled",true);
});

function load_provincias()
{
	startSpinner();
	$.get("/scripts/load-provincias.php", function(result){
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
  var id = document.getElementById("provincia");
  var nombre = id.options[id.selectedIndex].text;
	$.get("/scripts/load-cantones.php", { nombre: nombre },
		function(result)
		{
			if(result == false)
			{
				alert("Error");
			}
			else
			{
        alert(result);
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
    var id = document.getElementById("provincia");
    var nombreP = id.options[id.selectedIndex].text;
    var id2 = document.getElementById("canton");
    var nombreC = id2.options[id.selectedIndex].text;
    $.get("/scripts/load-distritos.php", { nombreP: nombreP, nombreC: nombreC },
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
function load_familia()
{
	startSpinner();
	$.get("/scripts/load-familia.php", function(result){
		if(result == false)
		{
			alert("Error");
		}
		else
		{
			$('#familia').append(result);
		}
		stopSpinner();
  
	});	
}
function load_genero()
{
  alert("holaaaa");
	startSpinner();
  var id = document.getElementById("familia");
  var nombre = id.options[id.selectedIndex].text;
  alert(nombre);
	$.get("/scripts/load-generos.php", { nombre: nombre },
		function(result)
		{
			if(result == false)
			{
				alert("Error");
			}
			else
			{
        alert(result);
				$("#genero").attr("disabled",false);
				document.getElementById("genero").options.length=1;
				$('#genero').append(result);
			}
			stopSpinner();
		}

	);
}
function load_especie()
{
    startSpinner();
    var id = document.getElementById("familia");
    var nombreF = id.options[id.selectedIndex].text;
    var id2 = document.getElementById("genero");
    var nombreG = id2.options[id.selectedIndex].text;

    alert(nombreF);
    alert(nombreG);
    $.get("/scripts/load-especies.php", { nombreF: nombreF, nombreG: nombreG },
        function(result)
        {
            if(result == false)
            {
                alert("Error");
            }
            else
            {
                $("#especie").attr("disabled",false);
                document.getElementById("especie").options.length=1;
                $('#especie').append(result);
            }
            stopSpinner();
        }

    );
}


function habilitar(value)
{
			if(value=="Flores" || value=="Frutos") 
			{
				// habilitamos
				document.getElementById("Muestra").disabled=true;
			}
      //else 
      //{
				// deshabilitamos
				//document.getElementById("Frutos").disabled=true;
        //document.getElementById("Flores").disabled=true;
			//}
      
    
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
                              
      		                </select>
                <select class="form-control input-sm" tabindex="1" name="genero" id="genero" required>
                              <option value="">Genero</option>
                              <option value="1">Uno</option>
      		                  <option value="2">Dos</option>
      		                </select>
              <select class="form-control input-sm" tabindex="1" name="especie" id="especie" required>
                              <option value="">Especie</option>
                              <option value="1">Uno</option>
      		                  <option value="2">Dos</option>
      		                </select>
              
                <fieldset>
        <div class="panel-heading">
              <strong>Caracteristicas de la Muestra</strong>
        </div>
      <form>
        <div>
        <input type="radio" name="caract" value="Flores" id="Flores" onchange="habilitar(this.value);" > Flores
        </div>
        <div>
        <input type="radio" name="caract" value="Frutos" id="Frutos" onchange="habilitar(this.value);" > Frutos
        </div>
        <div>
        <input type="radio" name="caract" value="Muestra" id="Muestra" onchange="habilitar(this.value);" > Muestra Esteril
        </div>
        </form>
          

    </fieldset>
    <br>
    <select class="form-control input-sm" tabindex="1" name="colector" id="colector" required>
                              <option value="">Colector</option>
                              <option value="1">Uno</option>
      		                  <option value="2">Dos</option>
      		                </select>
<select class="form-control input-sm" tabindex="1" name="validador" id="validador" required>
                              <option value="">Validador</option>
                              <option value="1">Uno</option>
      		                  <option value="2">Dos</option>
      		                </select>
<input id="localidad" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Localidad" name="localidad" required>
<input id="latitud" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Latitud" name="latitud" required>
<input id="logitud" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Longitud" name="longitud" required>
<input id="altitud" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Altitud" name="altitud" required> 

      		                <input id="estado_muestra" class="form-control input-sm" type="text" tabindex="7" autocomplete="off" placeholder="Estado de la muestra" name="estado_muestra" data-error="el texto ingresado es invalido" required>

      		                <!-- Provincia -->
      		                <select class="form-control input-sm" tabindex="8" id="provincia" name="provincia" required>
      		                    <option value="0">Provincia</option>
      		                </select>                
      		                <!-- Canton -->
      		                <select class="form-control input-sm" tabindex="9" id="canton" name="canton" required>
      		                    <option value="0">Canton</option>
      		                </select>
      		                <!-- Distrito -->
      		                <select class="form-control input-sm" tabindex="10" name="distrito" id="distrito" required>
      		                    <option value="0">Distrito</option>
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
