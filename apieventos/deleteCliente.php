<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');

$json=file_get_contents('php://input');//captura el parametro en json {'id':118}
$params=json_decode($json);//paramteros

include('conexion.php');


$respuesta['codigo']='-1';
$respuesta['mensaje']='Error';
if ($_SERVER["REQUEST_METHOD"] != "DELETE")
{
    $respuesta['mensaje']='Error, acceso denegado por el uso del metodo '.$_SERVER["REQUEST_METHOD"];
    echo json_encode($respuesta);
    exit(1);
}



if (isset($params))
{
    $id=$params->id;
    $sql = "DELETE FROM CLIENTES WHERE id = ".$id;
}


$result = $mysqli->query($sql);
if ($mysqli->affected_rows>0)
{
    $respuesta['codigo']='1';
    $respuesta['mensaje']='REGISTRO ELIMINADO CORRECTAMENTE';
    echo json_encode($respuesta);
}
else
{
    $respuesta['mensaje']='REGISTRO NO SE PUDO ELIMINAR';
    echo json_encode($respuesta);   
}





?>