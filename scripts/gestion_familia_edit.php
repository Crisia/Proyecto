<?php
require_once ('../app/Startup.php');

$opcion = "";
if (isset($_REQUEST['opcion'])){
    $opcion = $_REQUEST['opcion'];    
    switch($opcion) {
        case 'setFamilia':
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
