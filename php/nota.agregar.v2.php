<?php
	include "conexion_bd.php";
	$link = mysqli_connect($var_host, $var_user, $var_password, $var_baseDatos);
	
	$fec = $_POST['fecha_creacion'];
	mysqli_query($link,"INSERT INTO nota (fecha_creacion)
	VALUES ('".$fec."')");		
	$sql2 = 'SELECT * FROM nota ORDER BY id_nota DESC LIMIT 1';

    $result2 = mysqli_query($link,$sql2)or die(mysqli_error());

    $cont = 0;
    //recorrido de los datos de la tabla
    while($row = mysqli_fetch_array($result2)) {
		$json_grid[$cont]['id_nota'] = $row['id_nota'];
		$json_grid[$cont]['fecha_creacion'] = $row['fecha_creacion'];
    }
    header('Content-type: application/json; charset=utf-8');
	echo json_encode($json_grid);


	//echo json_encode($var);;
	mysqli_close($link);
?>