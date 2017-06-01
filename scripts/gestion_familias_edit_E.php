<?php
require_once ('../app/Startup.php');
$opcion = "";
$salida ="";
if (isset($_REQUEST['opcion'])){
    $opcion = $_REQUEST['opcion'];       
    switch($opcion) { 
        case 'setEspecie':{
            if ((isset($_REQUEST['especieNue'])) && (isset($_REQUEST['especieAnt']))  && (isset($_REQUEST['familia'])) && (isset($_REQUEST['genero'])) ){
                $especieNue = $_REQUEST['especieNue'];
                $especieAnt = $_REQUEST['especieAnt'];
                $familia = $_REQUEST['familia'];
                $genero = $_REQUEST['genero'];
                //echo $familia;generoNue
                $db = DB::getInstance();
                $data = $db->getData("guardarFamiliaGeneroEspecie('".$especieNue."','".$especieAnt."','".$familia."','".$genero."')");
                $salida = $data[0]['Nombre'];                                                   
            }
            break;  
        }     
    case 'deleteFamilia_genero_especie':{
            //echo "estoy aqui3";
            if (isset($_REQUEST['familia'])){
                $familia = $_REQUEST['familia'];
                $genero = $_REQUEST['genero'];
                $genero = $_REQUEST['especie'];
                //echo $familia;
                $db = DB::getInstance();
                $data = $db->getData("borrarFamilia_genero_especie('".$especie."')");
                $salida = "";
                foreach($data as $d)
                {                    
                    $salida = $d['Nombre'];                    
                }
                echo $salida;                
            }
            break;
        }
    }  
}
echo ($salida); 

