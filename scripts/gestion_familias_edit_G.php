<?php
require_once ('../app/Startup.php');
$opcion = "";
$salida ="";
if (isset($_REQUEST['opcion'])){
    $opcion = $_REQUEST['opcion'];       
    switch($opcion) { 
        case 'setGenero':{
            if ((isset($_REQUEST['generoNue'])) && (isset($_REQUEST['generoAnt']))  && (isset($_REQUEST['familia'])) ){
                $generoNue = $_REQUEST['generoNue'];
                $generoAnt = $_REQUEST['generoAnt'];
                $familia = $_REQUEST['familia'];
                //echo $familia;generoNue
                $db = DB::getInstance();
                $data = $db->getData("guardarFamiliaGenero('".$generoNue."','".$generoAnt."','".$familia."')");
                $salida = $data[0]['Nombre'];                                                   
            }
            break;  
        }     
        case 'deleteFamilia_genero':{
            //echo "estoy aqui3";
            if (isset($_REQUEST['familia'])){
                $familia = $_REQUEST['familia'];
                $genero = $_REQUEST['genero'];
                //echo $familia;
                $db = DB::getInstance();
                $data = $db->getData("borrarFamilia_genero('".$genero."')");
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

