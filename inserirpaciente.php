<?php //inserirpaciente.php

include('conexao/conexao.php');


$cpf = $_POST['cpf'];
$paciente = $_POST['paciente'];
$tel = $_POST['tel'];


$sql = "insert into tblpaciente(cpf,nome,telf) values('$cpf','$paciente','$tel')";

$qry = mysqli_query($con, $sql);

if ($sql) {

	echo "<script>alert('Paciente cadastrado com sucesso!');</script>";
	$var = "<script>javascript:history.back(-1)</script>";
	echo $var;
}
	//header('location: cadpaciente.php');
	
	