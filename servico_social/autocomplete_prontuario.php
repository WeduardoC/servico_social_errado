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
    $sql = "SELECT prontuario FROM entrevistas WHERE prontuario LIKE '$query%' LIMIT 10";
    $result = $conn->query($sql);

    $prontuarios = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $prontuarios[] = $row['prontuario'];
        }
    }

    // Retornar os resultados como JSON
    echo json_encode($prontuarios);
}

$conn->close();
?>