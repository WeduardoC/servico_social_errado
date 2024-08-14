<?php

require_once 'Conexao.php';

$input = $_GET['input'];
$conexao = new Conexao();
$pdo = $conexao->conectar();

$query = $pdo->prepare("
    SELECT prontuario, nome_paciente, data_nascimento 
    FROM entrevistas 
    WHERE prontuario LIKE :input
");

$query->bindValue(':input', '%' . $input . '%', PDO::PARAM_STR);

$query->execute();

$results = $query->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($results);

?>
