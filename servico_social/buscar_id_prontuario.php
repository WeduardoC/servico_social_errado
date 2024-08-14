<?php

session_start();
require_once 'Conexao.php';

$input = $_GET['prontuario'];
$conexao = new Conexao();
$pdo = $conexao->conectar(); 
$query = $pdo->prepare("SELECT id_paciente FROM entrevistas WHERE prontuario LIKE :input");
$query->bindValue(':input', $input);
$query->execute();
$result = $query->fetch(PDO::FETCH_ASSOC);
$_SESSION['id_paciente'] = $result['id_paciente'];

?>
