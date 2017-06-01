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
    //cargarDatos_provincia();
    load_caracteristicas();
    load_familia();
    cargarDatos_colector();
    cargarDatos_validador();

    
  //$("#familia").change(function(){load_genero();});
  //$("#genero").change(function(){load_especie();});
    //$("#genero").attr("disabled",true);
  //$("#especie").attr("disabled",true);
});
 

function load_provincias()
{
	startSpinner();
	$.get("/scripts/load-provincias.php", function(result){
		if(result == false)
		{
			//alert("Error");
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
				//alert("Error");
			}
			else
			{
        //alert(result);
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
                //alert("Error");
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
			//alert("Error");
		}
		else
		{
			$('#familia').append(result);
		}
		stopSpinner();
    //load_genero();
  
	});	
}

function load_caracteristicas()
{

  
	startSpinner();
	$.get("/scripts/load-caracteristicas.php", function(result){
		if(result == false)
		{
			//alert("Error");
		}
		else
		{
      
			$('#checkbox').append(result);
		}
		stopSpinner();
    //load_genero();
  
	});	
}





function habilitar(value)
{
  
			if(document.getElementById("Flores").checked ||  document.getElementById("Frutos").checked) 
			{ 
				document.getElementById("Muestra Esteril").checked=false;
			}
      else if( document.getElementById("Muestra Esteril").checked) 
      {
				// deshabilitamos
				document.getElementById("Flores").checked=false;
        document.getElementById("Frutos").checked=false;
			}
      else if(document.getElementById("Muestra Esteril").checked==false || document.getElementById("Frutos").checked || document.getElementById("Flores").checked )
      {
        document.getElementById("Frutos").checked=false;
        document.getElementById("Flores").checked=false;
        document.getElementById("Muestra Esteril").checked=true;

      }
      
      
    
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
              	
                  <form role="form" data-toggle="validator" method="post">
                    <fieldset>
                            <div class="form-group">
                            <Label>Familia</label>
      						<select class="form-control input-sm" tabindex="1" name="familia" id="familia" onchange="cargarDatos_genero()" required>
                              
                              
      		                </select>
                          <Label>Género</label>
                <select class="form-control input-sm" tabindex="1" name="genero" id="genero" onchange= "cargarDatos_especie()"  required>
                              <option value="">Genero</option>
              
      		                </select>
                          <Label>Especie</label>
              <select class="form-control input-sm" tabindex="1" name="especie" id="especie" required>
                              <option value="">Especie</option>
      		                </select>
              
                          
        <div class="panel-heading">
              <strong>Caracteristicas de la Muestra</strong>
        </div>
     <div class="checkbox" id="checkbox" onclick="habilitar(this.value)">
    </div>
    
    </div>
    <label>Colector</label>
    <select class="form-control input-sm" tabindex="1" name="colector" id="colector" required>
                              <option value="">Colector</option>
                              
      		                </select>
<label>Validador</label>
<select class="form-control input-sm" tabindex="1" name="validador" id="validador" required>
                              <option value="">Validador</option>
                              
      		                </select>
<label>Fecha</label>                          
<input class="form-control input-sm" tabindex="1" id="fecha" type="date" required>
<label>Notas</label>   

<textarea class="form-control" rows="5" id="nota"></textarea>

<label>Localidad</label>
<textarea class="form-control" rows="5" id="localidad"></textarea>
<label>Latitud</label>
<input id="latitud" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Latitud" name="latitud" required>
<label>Longitud</label>
<input id="logitud" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Longitud" name="longitud" required>
<label>Altutud</label>
<input id="altitud" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Altitud" name="altitud" required> 

      		                

      		                <!-- Provincia -->
      		                <select class="form-control input-sm" tabindex="8" id="provincia" name="provincia" onchange="cargarDatos_canton()"  required>
      		                    
      		                </select>                
      		                <!-- Canton -->
      		                <select class="form-control input-sm" tabindex="9" id="canton" name="canton" onchange="cargarDatos_distrito()" required>
      		                    <option value="">Canton</option>
      		                </select>
      		                <!-- Distrito -->
      		                <select class="form-control input-sm" tabindex="10" name="distrito" id="distrito" required>
      		                    <option value="">Distrito</option>
      		                </select>
                            <button name="btnNewTransaction" type="button" tabindex="11" value="true" class="btn btn-lg btn-primary btn-block" onclick="enviarDatos_Muestra()" >Crear nueva muestra</button>
                            
														</div>
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
  <script type="text/javascript" src="../../js/muestra.js"></script>

<!-- FOOTER -->
<?php include("footer.php"); ?>
