<?php

require_once 'Conexao.php';

try {
    $input = isset($_GET['input']) ? $_GET['input'] : '';

    $conexao = new Conexao();
    $pdo = $conexao->conectar();

    $query = $pdo->prepare("
        SELECT prontuario, nome_paciente, data_nascimento 
        FROM entrevistas 
        WHERE nome_paciente LIKE :input
    ");

    $query->bindValue(':input', '%' . $input . '%', PDO::PARAM_STR);

    $query->execute();

    $results = $query->fetchAll(PDO::FETCH_ASSOC);

    header('Content-Type: application/json');
    echo json_encode($results);

} catch (Exception $e) {
    echo json_encode(['error' => $e->getMessage()]);
}

?>
