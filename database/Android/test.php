<?php 
include 'webService.php';
/*function mostrar_Curso(){
	$json=mostrarCursosModeloController();
	$array = json_decode($json);

	for($i=0;$i<count($array);$i++){ 
	    $nombre_curso = $array[$i]->nombre;
	    echo $nombre_curso;
	    echo "  ";
	}
}
function agregarCurso($nombre,$profesor,$horario)
{
	$json=agregarCursosModeloController($nombre,$profesor,$horario);
	$array = json_decode($json);
	return ($array[0]->resultado);
		
}
$var=agregarCurso("PruebaCurso2","Jose Castro","Lunes-Jueves");
echo($var);*/
//$procedimiento = "buscarFamilia_Genero_Especie_Codigo";
$procedimiento = $_REQUEST['procedimiento'];
if ($procedimiento ==='buscarFamilia')
{
	$json=getbuscarFamiliaController();
	echo $json;
}elseif ($procedimiento ==='buscarFamilia_Genero')
{
	$familia = $_REQUEST['familia'];
	//$familia = "Asteraceae";
	$json=getbuscarGeneroController($familia);
	echo $json;

}elseif ($procedimiento ==='buscarFamilia_Genero_Especie')
{
	$familia = $_REQUEST['familia'];
	$genero = $_REQUEST['genero'];
	//$familia = "Asteraceae";
	$json=getbuscarEspecieController($familia,$genero);
	echo $json;
}elseif ($procedimiento ==='buscarFamiliaCodigo')
{
	$familia = $_REQUEST['familia'];
	$genero = $_REQUEST['genero'];
	$especie = $_REQUEST['especie'];
	//$familia = "Asteraceae";
	//$genero = "Cichorium";
	//$especie = "Cichorium endivia L";
	$json=getbuscarCodigoController($familia,$genero,$especie);
	echo $json;
}
elseif ($procedimiento ==='buscarMuestra')
{
	$familia = $_REQUEST['familia'];
	$genero = $_REQUEST['genero'];
	$especie = $_REQUEST['especie'];
	$codigo = $_REQUEST['codigo'];
	//$familia = "Asteraceae";
	//$genero = "Cichorium";
	//$especie = "Cichorium endivia L";
	$json=getmostrarMuestraController($familia,$genero,$especie,$codigo);
	echo $json;
}

else
{
	echo "Error";
}
?>