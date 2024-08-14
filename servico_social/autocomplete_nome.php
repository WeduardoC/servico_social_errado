<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "servico_social";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Verificar se há um parâmetro de consulta
if (isset($_GET['query'])) {
    $query = $conn->real_escape_string($_GET['query']);
    $sql = "SELECT nome_paciente FROM entrevistas WHERE nome_paciente LIKE '$query%' LIMIT 10";
    $result = $conn->query($sql);

    $names = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $names[] = $row['nome_paciente'];
        }
    }

    // Retornar os resultados como JSON
    echo json_encode($names);
}

$conn->close();
?>