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
	load_country();
	$("#country").change(function(){load_state();});
	$("#state").attr("disabled",true);
});

function load_country()
{
	startSpinner();
	$.get("scripts/load-country.php", function(result){
		if(result == false)
		{
			alert("Error");
		}
		else
		{
			$('#country').append(result);			
		}
		stopSpinner();
	});	
}
function load_state()
{
	startSpinner();
	var code = $("#country").val();
	$.get("scripts/load-state.php", { code: code },
		function(result)
		{
			if(result == false)
			{
				alert("Error");
			}
			else
			{
				$("#state").attr("disabled",false);
				document.getElementById("state").options.length=1;
				$('#state').append(result);			
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
    
    <!--  -->
    <?php if ($transaction && $transaction->getTransactionId()){ ?>
        <!-- Sender/Receiver -->
      <div class="row">
        <div class="col-lg-6">
          <div class="panel panel-default">
          
            <div class="panel-heading">
              <strong><?=($transaction->getTransactionTypeId()==Transaction::TYPE_RECEIVER)?'Receiver':'Sender'?> Information</strong>
            </div>
            
            <div class="panel-body">
              <div class="row">
              	<div class="col-lg-12">           	
                  <table class="table">
  									<tbody>
  										<tr><td>Familia</td><td><?=$person->getName()?></td></tr>
  										<tr><td>Género</td><td><?=$person->getTypeId()?></td></tr>
  										<tr><td>Especie</td><td><?=$person->getPersonalId()?></td></tr>
  										<tr><td>Localización</td><td><?=$person->getExpirationDateId()?></td></tr>
  										<tr><td>Colector</td><td><?=$person->getAddress()?></td></tr>
  										<tr><td>Provincia</td><td><?=$person->getCity()?></td></tr>
  										<tr><td>Canton</td><td><?=$person->getFrom()?></td></tr>
  										<tr><td>Distrito</td><td><?=$person->getBirthDate()?></td></tr>
  									</tbody>
                  </table>
                </div>           
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <!-- Sender/Receiver -->
  	<?php } else { ?>
      <!-- New Transaction -->
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
      						<select class="form-control input-sm" tabindex="1" name="transactionTypeId" id="transactionTypeId" required>
                              <option value="">Familia</option>
                              <option value="1">Uno</option>
      		                  <option value="2">Dos</option>
      		                </select>
      		                <input id="amount" name="amount" type="number" step="any" min="1" class="form-control input-sm" tabindex="2" autocomplete="off" placeholder="Género" required>
      		                <input id="uid" class="form-control input-sm" type="text" tabindex="3" autocomplete="off" placeholder="Especie" name="uid" required>
      		                <input id="first_name" class="form-control input-sm" type="text" tabindex="4" autocomplete="off" placeholder="Localización" name="first_name" required>
      		                <input id="last_name" class="form-control input-sm" type="text" tabindex="5" autocomplete="off" placeholder="Colector" name="last_name" required>
      		                <input id="phone" class="form-control input-sm" type="text" tabindex="6" autocomplete="off" placeholder="Provincia" name="phone" required>
      		                <input id="email" class="form-control input-sm" type="email" tabindex="7" autocomplete="off" placeholder="Canton" name="email" data-error="That email address is invalid" required>
      		                <!-- Country -->
      		                <select class="form-control input-sm" tabindex="8" id="country" name="country" required>
      		                    <option value="">Provincia</option>
      		                </select>                
      		                <!-- State -->  
      		                <select class="form-control input-sm" tabindex="9" id="state" name="state" required>
      		                    <option value="">Canton</option>
      		                </select>
      		                <!-- Type -->  
      		                <select class="form-control input-sm" tabindex="10" name="type" id="type" required>
      		                    <option value="">Distrito</option>
      		                    <option value="2">Uno</option>
                                <option value="2">Dos</option>
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
