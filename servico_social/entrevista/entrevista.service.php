<?php
session_start();

class EntrevistaService{
    private $conexao;
    private $paciente;
    private $entrevista;

    public function __construct(Conexao $conexao, Entrevista $entrevista, Paciente $paciente){
        $this->conexao = $conexao->conectar();
        $this->paciente = $paciente;
        $this->entrevista = $entrevista;
    }

    public function inserir(){
        $query = 'INSERT INTO entrevistas (
            data_entrevista, prontuario, nome_paciente, 
            nome_social, sexo, cpf, rg, cartao_sus, naturalidade, data_nascimento,
            pai, mae, logradouro, bairro, complemento, cep, cidade, uf, 
            ponto_referencia, telefone, logradouro_origem, bairro_origem, complemento_origem, 
            cep_origem, cidade_origem, uf_origem, ponto_referencia_origem, 
            nome_responsavel, grau_parentesco_responsavel, telefone_responsavel, 
            observacao_responsavel, cuidador, telefone_cuidador, observacao_cuidador
        ) VALUES (
            :data_entrevista, :prontuario, :nome_paciente, 
            :nome_social, :sexo, :cpf, :rg, :cartao_sus, :naturalidade, :data_nascimento,
            :pai, :mae, :logradouro, :bairro, :complemento, :cep, :cidade, :uf, 
            :ponto_referencia, :telefone, :logradouro_origem, :bairro_origem, :complemento_origem, 
            :cep_origem, :cidade_origem, :uf_origem, :ponto_referencia_origem, 
            :nome_responsavel, :grau_parentesco_responsavel, :telefone_responsavel, 
            :observacao_responsavel, :cuidador, :telefone_cuidador, :observacao_cuidador
        )';
        
        $query2 = 'INSERT INTO pacientes(nome_paciente) VALUES(:nome_paciente)';
        $stmt2 = $this->conexao->prepare($query2);
        $stmt2->bindValue(':nome_paciente', $this->paciente->__get('nome_paciente'));
        $stmt2->execute();

        $stmt = $this->conexao->prepare($query);

        $stmt->bindValue(':data_entrevista', $this->entrevista->__get('data_entrevista'));
        $stmt->bindValue(':prontuario', $this->entrevista->__get('prontuario'));
        $stmt->bindValue(':nome_paciente', $this->entrevista->__get('nome_paciente'));
        $stmt->bindValue(':nome_social', $this->entrevista->__get('nome_social'));
        $stmt->bindValue(':sexo', $this->entrevista->__get('sexo'));
        $stmt->bindValue(':cpf', $this->entrevista->__get('cpf'));
        $stmt->bindValue(':rg', $this->entrevista->__get('rg'));
        $stmt->bindValue(':cartao_sus', $this->entrevista->__get('cartao_sus'));
        $stmt->bindValue(':naturalidade', $this->entrevista->__get('naturalidade'));
        $stmt->bindValue(':data_nascimento', $this->entrevista->__get('data_nascimento'));
        $stmt->bindValue(':pai', $this->entrevista->__get('pai'));
        $stmt->bindValue(':mae', $this->entrevista->__get('mae'));
        $stmt->bindValue(':logradouro', $this->entrevista->__get('logradouro'));
        $stmt->bindValue(':bairro', $this->entrevista->__get('bairro'));
        $stmt->bindValue(':complemento', $this->entrevista->__get('complemento'));
        $stmt->bindValue(':cep', $this->entrevista->__get('cep'));
        $stmt->bindValue(':cidade', $this->entrevista->__get('cidade'));
        $stmt->bindValue(':uf', $this->entrevista->__get('uf'));
        $stmt->bindValue(':ponto_referencia', $this->entrevista->__get('ponto_referencia'));
        $stmt->bindValue(':telefone', $this->entrevista->__get('telefone'));
        $stmt->bindValue(':logradouro_origem', $this->entrevista->__get('logradouro_origem'));
        $stmt->bindValue(':bairro_origem', $this->entrevista->__get('bairro_origem'));
        $stmt->bindValue(':complemento_origem', $this->entrevista->__get('complemento_origem'));
        $stmt->bindValue(':cep_origem', $this->entrevista->__get('cep_origem'));
        $stmt->bindValue(':cidade_origem', $this->entrevista->__get('cidade_origem'));
        $stmt->bindValue(':uf_origem', $this->entrevista->__get('uf_origem'));
        $stmt->bindValue(':ponto_referencia_origem', $this->entrevista->__get('ponto_referencia_origem'));
        $stmt->bindValue(':nome_responsavel', $this->entrevista->__get('nome_responsavel'));
        $stmt->bindValue(':grau_parentesco_responsavel', $this->entrevista->__get('grau_parentesco_responsavel'));
        $stmt->bindValue(':telefone_responsavel', $this->entrevista->__get('telefone_responsavel'));
        $stmt->bindValue(':observacao_responsavel', $this->entrevista->__get('observacao_responsavel'));
        $stmt->bindValue(':cuidador', $this->entrevista->__get('cuidador'));
        $stmt->bindValue(':telefone_cuidador', $this->entrevista->__get('telefone_cuidador'));
        $stmt->bindValue(':observacao_cuidador', $this->entrevista->__get('observacao_cuidador'));
    
        $stmt->execute();

        $query3 = "SELECT id_paciente FROM pacientes WHERE nome_paciente=:nome_paciente";
        $stmt3=$this->conexao->prepare($query3);
        $stmt3->bindValue(':nome_paciente', $this->entrevista->__get('nome_paciente'));
        $stmt3->execute();
        $_SESSION['nome_paciente']=$this->entrevista->__get('nome_paciente');

        $query4 = "UPDATE entrevistas SET id_paciente=:id_paciente WHERE nome_paciente=:nome_paciente";
        $stmt4 = $this->conexao->prepare($query4);
        $stmt4->bindValue(':id_paciente', $stmt3->fetch()[0]);
        $stmt4->bindValue(':nome_paciente', $this->entrevista->__get('nome_paciente'));
        $stmt4->execute();

    }

    public function nova_entrevista() {
        $query2 = 'DELETE FROM entrevistas WHERE id_paciente = :id_paciente';
        $stmt2 = $this->conexao->prepare($query2);
        $stmt2->bindValue(':id_paciente', $_SESSION['id_paciente']);
        $stmt2->execute();

        $query3 = "SELECT nome_paciente FROM pacientes WHERE id_paciente=:id_paciente";
        $stmt3=$this->conexao->prepare($query3);
        $stmt3->bindValue(':id_paciente', $_SESSION['id_paciente']);
        $stmt3->execute();

        $query = 'INSERT INTO entrevistas (
            id_paciente, data_entrevista, prontuario, nome_paciente, 
            nome_social, sexo, cpf, rg, cartao_sus, naturalidade, data_nascimento,
            pai, mae, logradouro, bairro, complemento, cep, cidade, uf, 
            ponto_referencia, telefone, logradouro_origem, bairro_origem, complemento_origem, 
            cep_origem, cidade_origem, uf_origem, ponto_referencia_origem, 
            nome_responsavel, grau_parentesco_responsavel, telefone_responsavel, 
            observacao_responsavel, cuidador, telefone_cuidador, observacao_cuidador
        ) VALUES (
            :id_paciente, :data_entrevista, :prontuario, :nome_paciente, 
            :nome_social, :sexo, :cpf, :rg, :cartao_sus, :naturalidade, :data_nascimento,
            :pai, :mae, :logradouro, :bairro, :complemento, :cep, :cidade, :uf, 
            :ponto_referencia, :telefone, :logradouro_origem, :bairro_origem, :complemento_origem, 
            :cep_origem, :cidade_origem, :uf_origem, :ponto_referencia_origem, 
            :nome_responsavel, :grau_parentesco_responsavel, :telefone_responsavel, 
            :observacao_responsavel, :cuidador, :telefone_cuidador, :observacao_cuidador
        )';

        $stmt = $this->conexao->prepare($query);

        $stmt->bindValue(':id_paciente', $_SESSION['id_paciente']);
        $stmt->bindValue(':data_entrevista', $this->entrevista->__get('data_entrevista'));
        $stmt->bindValue(':prontuario', $this->entrevista->__get('prontuario'));
        $stmt->bindValue(':nome_paciente', $stmt3->fetch()[0]);
        $stmt->bindValue(':nome_social', $this->entrevista->__get('nome_social'));
        $stmt->bindValue(':sexo', $this->entrevista->__get('sexo'));
        $stmt->bindValue(':cpf', $this->entrevista->__get('cpf'));
        $stmt->bindValue(':rg', $this->entrevista->__get('rg'));
        $stmt->bindValue(':cartao_sus', $this->entrevista->__get('cartao_sus'));
        $stmt->bindValue(':naturalidade', $this->entrevista->__get('naturalidade'));
        $stmt->bindValue(':data_nascimento', $this->entrevista->__get('data_nascimento'));
        $stmt->bindValue(':pai', $this->entrevista->__get('pai'));
        $stmt->bindValue(':mae', $this->entrevista->__get('mae'));
        $stmt->bindValue(':logradouro', $this->entrevista->__get('logradouro'));
        $stmt->bindValue(':bairro', $this->entrevista->__get('bairro'));
        $stmt->bindValue(':complemento', $this->entrevista->__get('complemento'));
        $stmt->bindValue(':cep', $this->entrevista->__get('cep'));
        $stmt->bindValue(':cidade', $this->entrevista->__get('cidade'));
        $stmt->bindValue(':uf', $this->entrevista->__get('uf'));
        $stmt->bindValue(':ponto_referencia', $this->entrevista->__get('ponto_referencia'));
        $stmt->bindValue(':telefone', $this->entrevista->__get('telefone'));
        $stmt->bindValue(':logradouro_origem', $this->entrevista->__get('logradouro_origem'));
        $stmt->bindValue(':bairro_origem', $this->entrevista->__get('bairro_origem'));
        $stmt->bindValue(':complemento_origem', $this->entrevista->__get('complemento_origem'));
        $stmt->bindValue(':cep_origem', $this->entrevista->__get('cep_origem'));
        $stmt->bindValue(':cidade_origem', $this->entrevista->__get('cidade_origem'));
        $stmt->bindValue(':uf_origem', $this->entrevista->__get('uf_origem'));
        $stmt->bindValue(':ponto_referencia_origem', $this->entrevista->__get('ponto_referencia_origem'));
        $stmt->bindValue(':nome_responsavel', $this->entrevista->__get('nome_responsavel'));
        $stmt->bindValue(':grau_parentesco_responsavel', $this->entrevista->__get('grau_parentesco_responsavel'));
        $stmt->bindValue(':telefone_responsavel', $this->entrevista->__get('telefone_responsavel'));
        $stmt->bindValue(':observacao_responsavel', $this->entrevista->__get('observacao_responsavel'));
        $stmt->bindValue(':cuidador', $this->entrevista->__get('cuidador'));
        $stmt->bindValue(':telefone_cuidador', $this->entrevista->__get('telefone_cuidador'));
        $stmt->bindValue(':observacao_cuidador', $this->entrevista->__get('observacao_cuidador'));
    
        $stmt->execute();

    }

    public function recuperar(){
        $query = "SELECT id_entrevista,id_paciente,data_entrevista,prontuario,nome_paciente,nome_social,sexo,cpf,rg,cartao_sus,naturalidade,data_nascimento,pai,mae,logradouro,bairro,complemento,cep,cidade,uf,ponto_referencia,telefone,logradouro_origem,bairro_origem,complemento_origem,cep_origem,cidade_origem,uf_origem,ponto_referencia_origem,nome_responsavel,grau_parentesco_responsavel,telefone_responsavel,observacao_responsavel,cuidador,telefone_cuidador,observacao_cuidador FROM entrevistas
        WHERE id_paciente=:id_paciente";
        $stmt=$this->conexao->prepare($query);
        $stmt->bindValue(':id_paciente', $_SESSION['id_paciente']);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_OBJ);
    }


    public function atualizar() {
        $query = 'UPDATE entrevistas SET ';
        $updates = [];
        $params = [];
    
        $attributes = [
            'data_entrevista', 'prontuario', 'nome_paciente', 
            'nome_social', 'sexo', 'cpf', 'rg', 'cartao_sus', 'naturalidade', 
            'data_nascimento', 'pai', 'mae', 'logradouro', 'bairro', 'complemento', 
            'cep', 'cidade', 'uf', 'ponto_referencia', 'telefone', 'logradouro_origem', 
            'bairro_origem', 'complemento_origem', 'cep_origem', 'cidade_origem', 
            'uf_origem', 'ponto_referencia_origem', 'nome_responsavel', 
            'grau_parentesco_responsavel', 'telefone_responsavel', 'observacao_responsavel', 
            'cuidador', 'telefone_cuidador', 'observacao_cuidador'
        ];
    
        foreach ($attributes as $attribute) {
            if ($this->entrevista->__get($attribute) !== null) {
                $updates[] = "$attribute = :$attribute";
                $params[":$attribute"] = $this->entrevista->__get($attribute);
            }
        }

        $query2 = 'UPDATE pacientes SET nome_paciente=:nome_paciente WHERE id_paciente=:id_paciente';
        $stmt2 = $this->conexao->prepare($query2);
        $stmt2->bindValue(':nome_paciente', $this->paciente->__get('nome_paciente'));
        $stmt2->bindValue(':id_paciente', $_SESSION['id_paciente']);
        $stmt2->execute();
    
        if (!empty($updates)) {
            $query .= implode(', ', $updates) . ' WHERE id_paciente = :id_paciente';
            $params[':id_paciente'] = $_SESSION['id_paciente'];
            $stmt = $this->conexao->prepare($query);
            foreach ($params as $param => $value) {
                $stmt->bindValue($param, $value);
            }
            return $stmt->execute();
        } else {
            return false;
        }
    }
    
}

?>