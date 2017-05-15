<?php
require_once ('../app/Startup.php');

$opcion = "";
if (isset($_REQUEST['opcion'])){
    $opcion = $_REQUEST['opcion'];    
    switch($opcion) {
        case 'getFamiliaGeneros':
            //echo "estoy aqui3";
            if (isset($_REQUEST['familia'])){
                $familia = $_REQUEST['familia'];
                //echo $familia;
                $db = DB::getInstance();
                $data = $db->getData("buscarFamilia_Genero('".$familia."')");
                $salida = "";
                foreach($data as $d)
                {                    
                    $value = $d['Nombre'];                    
                    $salida = $salida."<li data-value = ".$value." onclick=\"selectGenero('".$value."')\"><a href=\"#\">".$value."</a></li>";
                }
                echo $salida;                
            }
            break;        
        case 'getFamiliaGeneroEspecies':
            if ( (isset($_REQUEST['familia'])) && (isset($_REQUEST['genero'])) ) {
                $familia = $_REQUEST['familia'];
                $genero = $_REQUEST['genero'];
                $db = DB::getInstance();
                $data = $db->getData("buscarFamilia_Genero_Especie('".$familia."','".$genero."')");
                $salida = "";
                foreach($data as $d)
                {                    
                    $value = $d['Nombre'];                    
                    $salida = $salida."<li data-value = ".$value." onclick=\"selectEspecie('".$value."')\"><a href=\"#\">".$value."</a></li>";
                }
                echo $salida;                
            }
            break;        
    }
}