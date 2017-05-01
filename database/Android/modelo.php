<?php

	function conexion($sql)
	{
	 	$user="root";
		$pass="1234";
		$server="localhost";
		$db = "proyecto";
		$conexion = @mysql_connect($server,$user,$pass);
		mysql_select_db($db,$conexion) or die('No se pudo seleccionar la base de datos');
		$result = mysql_query($sql);
		$final= array();
		while ($row = mysql_fetch_assoc($result)) 
		{
    		array_push($final,$row);
		}	
		mysql_close($conexion);
		return $final;
	} 
	function getbuscarFamilia(){
		$result = conexion("call buscarFamilia()");
		return $result;
	}
	function getbuscarGenero($nombreFamilia){
		$result = conexion("call buscarFamilia_Genero('".$nombreFamilia."')");
		return $result;
	}
	function getbuscarEspecie($nombreFamilia,$nombreGenero){
		$result = conexion("call buscarFamilia_Genero_Especie('".$nombreFamilia."','".$nombreGenero."')");
		return $result;
	}
	function getbuscarCodigo($nombreFamilia,$nombreGenero,$nombreEspecie){
		$result = conexion("call buscarFamilia_Genero_Especie_Codigo('".$nombreFamilia."','".$nombreGenero."','".$nombreEspecie."')");
		return $result;
	}
	function getmostrarMuestra($nombreFamilia,$nombreGenero,$nombreEspecie,$nombreCodigo){
		$result = conexion("call mostrarMuestra('".$nombreFamilia."','".$nombreGenero."','".$nombreEspecie."','".$nombreCodigo."')");
		return $result;
	}
	

?>