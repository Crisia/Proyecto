<?php 
include 'modelo.php';
function getbuscarFamiliaController(){
	$resultado = getbuscarFamilia();
	$json = json_encode($resultado);
	return $json;
}
function getbuscarGeneroController($nombreFamilia){
	$resultado = getbuscarGenero($nombreFamilia);
	$json = json_encode($resultado);
	return $json;
}
function getbuscarEspecieController($nombreFamilia, $nombreGenero){
	$resultado = getbuscarEspecie($nombreFamilia,$nombreGenero);
	$json = json_encode($resultado);
	return $json;
}
function getbuscarCodigoController($nombreFamilia, $nombreGenero,$nombreEspecie){
	$resultado = getbuscarCodigo($nombreFamilia,$nombreGenero,$nombreEspecie);
	$json = json_encode($resultado);
	return $json;
}
function getmostrarMuestraController($nombreFamilia, $nombreGenero,$nombreEspecie,$nombreCodigo){
	$resultado = getmostrarMuestra($nombreFamilia,$nombreGenero,$nombreEspecie,$nombreCodigo);
	$json = json_encode($resultado);
	return $json;
}




?>