<?php
require_once ('../app/Startup.php');
$opcion = "";
if (isset($_REQUEST['opcion'])){
    $opcion = $_REQUEST['opcion'];     
    switch($opcion) {
        case 'setFamilia': {
            //echo "estoy aqui3";
            if ((isset($_REQUEST['familiaNue'])) && (isset($_REQUEST['familiaAnt'])) ){
                $familiaNue = $_REQUEST['familiaNue'];
                $familiaAnt = $_REQUEST['familiaAnt'];
                //echo $familia;
                $db = DB::getInstance();
                $data = $db->getData("guardarFamilia('".$familiaNue."','".$familiaAnt."')");
                $salida = "";
                foreach($data as $d)
                {                    
                    $value = $d['Nombre'];                    
                }
                echo $salida;                
            }
            break;  
        }      
        case 'deleteFamilia':{
            //echo "estoy aqui3";
            if (isset($_REQUEST['familia'])){
                $familia = $_REQUEST['familia'];
                //echo $familia;
                $db = DB::getInstance();
                $data = $db->getData("borrarFamilia('".$familia."')");
                $salida = "";
                foreach($data as $d)
                {                    
                    $salida = $d['Nombre'];                    
                }
                echo $salida;                
            }
            break;
        }
        case 'setGenero':{
            if ((isset($_REQUEST['generoNue'])) && (isset($_REQUEST['generoAnt']))  && (isset($_REQUEST['familia'])) ){
                $generoNue = $_REQUEST['generoNue'];
                $generoAnt = $_REQUEST['generoAnt'];
                $familia = $_REQUEST['familia'];
                //echo $familia;generoNue
                $db = DB::getInstance();
                $data = $db->getData("guardarFamiliaGenero('".$generoNue."','".$generoAnt."','".$familia."')");
                $salida = $data[0]['Nombre'];  
                echo $salida;                                                 
            }            
            break;  
        }          
    }  
}

