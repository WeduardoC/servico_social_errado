-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/08/2024 às 18:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `servico_social`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_previdenciarios`
--

CREATE TABLE `dados_previdenciarios` (
  `id_beneficio` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `vinculo_previdenciario` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `beneficios` varchar(255) DEFAULT NULL,
  `recebe_beneficio_assistencial` char(3) DEFAULT NULL,
  `tipo_beneficio_assistencial` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_previdenciarios`
--

INSERT INTO `dados_previdenciarios` (`id_beneficio`, `id_paciente`, `vinculo_previdenciario`, `categoria`, `status`, `beneficios`, `recebe_beneficio_assistencial`, `tipo_beneficio_assistencial`) VALUES
(1, NULL, 'INSS', 'Empregado doméstico', 'Dependente', 'Auxílio-acidente', 'Sim', 'Benefício Assistencial ao deficiente'),
(2, NULL, 'INSS', 'Empregado doméstico', 'Dependente', 'Auxílio-acidente', 'Sim', 'Benefício Assistencial ao deficiente'),
(3, 79, 'INSS', 'Empregado doméstico', 'Pensionista', 'Auxílio-acidente', 'Sim', 'Benefício Assistencial ao deficiente'),
(5, 82, 'Previdência Privada', 'Empregado', 'Ativo', '', 'Sim', 'Benefício Assistencial ao idoso'),
(6, 83, 'Municipal', 'Empregado doméstico', 'Pensionista', 'Incapacidade Temporária (Auxílio Doença),Auxílio-reclusão', 'Sim', 'Benefício Assistencial ao idoso'),
(8, 86, 'INSS', 'Empregado doméstico', 'Ativo', 'Incapacidade Temporária (Auxílio Doença),Salário-maternidade', 'Sim', NULL),
(9, 87, 'Estadual', NULL, NULL, 'Auxílio-acidente', 'Não', NULL),
(10, 88, 'Estadual', NULL, NULL, 'Auxílio-acidente,Auxílio-reclusão', 'Não', NULL),
(13, 101, 'INSS', 'Trabalhador avulso', 'Pensionista', 'Auxílio-acidente,Auxílio-reclusão', 'Sim', 'Benefício Assistencial ao idoso'),
(14, 102, 'INSS', 'Trabalhador avulso', 'Desempregado', 'Auxílio-acidente,Auxílio-reclusão', 'Não', NULL),
(15, 103, 'Estadual', NULL, NULL, 'Incapacidade Temporária (Auxílio Doença),Auxílio-acidente', 'Não', NULL),
(16, 104, 'Sem Vínculo', NULL, NULL, 'Incapacidade Temporária (Auxílio Doença),Auxílio-acidente', 'Sim', 'Benefício Assistencial ao deficiente'),
(17, 96, 'Federal', 'Empregado doméstico', 'Aposentado', 'Auxílio-acidente', 'Não', NULL),
(18, 85, 'Federal', 'Empregado', NULL, 'Incapacidade Temporária (Auxílio Doença),Auxílio-acidente', NULL, NULL),
(19, NULL, 'INSS', 'Empregado doméstico', 'Pensionista', '', NULL, NULL),
(20, 105, 'INSS', 'Empregado doméstico', NULL, 'Incapacidade Temporária (Auxílio Doença)', NULL, NULL),
(21, NULL, NULL, NULL, NULL, '', 'Sim', 'Benefício Assistencial ao deficiente'),
(22, 95, 'Federal', 'Trabalhador avulso', NULL, 'Incapacidade Temporária (Auxílio Doença),Auxílio-reclusão', 'Sim', 'Benefício Assistencial ao idoso'),
(37, 111, 'INSS', 'Empregado', 'Ativo', 'Incapacidade Temporária (Auxílio Doença)', 'Sim', 'Benefício Assistencial ao idoso'),
(39, 112, 'INSS', 'Empregado doméstico', 'Pensionista', 'Incapacidade Temporária (Auxílio Doença),Salário-maternidade', 'Não', NULL),
(40, 113, 'Sem Vínculo', NULL, NULL, 'Incapacidade Temporária (Auxílio Doença),Auxílio-acidente', 'Sim', 'Benefício Assistencial ao deficiente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_socioeconomicos`
--

CREATE TABLE `dados_socioeconomicos` (
  `id_dados_socioeconomicos` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `estado_civil` varchar(30) DEFAULT NULL,
  `grupo_etnico` varchar(30) DEFAULT NULL,
  `religiosidade` varchar(40) DEFAULT NULL,
  `escolaridade` varchar(255) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `ocupacao` varchar(255) DEFAULT NULL,
  `habitacao` varchar(25) DEFAULT NULL,
  `habitacao_outro` varchar(255) DEFAULT NULL,
  `condicao_ocupacao` varchar(30) DEFAULT NULL,
  `condicao_ocupacao_outro` varchar(255) DEFAULT NULL,
  `numero_comodos` varchar(20) DEFAULT NULL,
  `paredes` varchar(20) DEFAULT NULL,
  `paredes_outro` varchar(255) DEFAULT NULL,
  `cobertura` varchar(25) DEFAULT NULL,
  `cobertura_outro` varchar(255) DEFAULT NULL,
  `piso` char(16) DEFAULT NULL,
  `eletricidade` char(3) DEFAULT NULL,
  `abastecimento_agua` varchar(20) DEFAULT NULL,
  `abastecimento_agua_outro` varchar(255) DEFAULT NULL,
  `condicao_agua` varchar(30) DEFAULT NULL,
  `destino_lixo` varchar(30) DEFAULT NULL,
  `destino_dejetos` varchar(30) DEFAULT NULL,
  `integrantes` varchar(255) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `renda_rs` float(10,2) DEFAULT NULL,
  `renda_sm` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_socioeconomicos`
--

INSERT INTO `dados_socioeconomicos` (`id_dados_socioeconomicos`, `id_paciente`, `estado_civil`, `grupo_etnico`, `religiosidade`, `escolaridade`, `profissao`, `ocupacao`, `habitacao`, `habitacao_outro`, `condicao_ocupacao`, `condicao_ocupacao_outro`, `numero_comodos`, `paredes`, `paredes_outro`, `cobertura`, `cobertura_outro`, `piso`, `eletricidade`, `abastecimento_agua`, `abastecimento_agua_outro`, `condicao_agua`, `destino_lixo`, `destino_dejetos`, `integrantes`, `qtde`, `renda_rs`, `renda_sm`) VALUES
(1, 65, 'Casado(a)', 'Preto(a)', NULL, NULL, NULL, NULL, 'Quarto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Com Revestimento', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 65, 'Solteiro(a)', 'Indígena(a)', NULL, 'Ensino Fundamental incompleto (5º a 9º ano)', 'erffvgfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sem Revestimento', NULL, NULL, NULL, NULL, 'Céu aberto', NULL, NULL, NULL, NULL, NULL),
(3, 65, NULL, 'Branco(a)', NULL, NULL, 'eng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 65, NULL, NULL, 'Espírita', 'Alfabetizado', 'enf', NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 66, NULL, NULL, NULL, 'Ensino Fundamental incompleto (1º a 4º ano)', 'sddds', 'dzzdsd', NULL, NULL, 'Outro', 'rffff', NULL, NULL, NULL, NULL, NULL, 'Sem Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 68, NULL, NULL, NULL, NULL, 'dff', NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'parede', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 69, 'Solteiro(a)', NULL, NULL, NULL, NULL, 'fcfgbfb', 'Outro', 'ttg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 72, 'União Estável', 'Sem declaração', NULL, 'Ensino Fundamental incompleto (1º a 4º ano)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Com Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 73, 'Viúvo(a)', 'Indígena(a)', 'Espírita', 'Alfabetizado', 'eng', NULL, 'Apartamento', NULL, 'Próprio', 'teste', 'De 4 a 6', 'Tábua', 'par', 'Telha com forro', NULL, 'Sem Revestimento', 'Não', 'Rio', 'eee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 74, NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'tyt', 'Outro', 'tttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 45, 'Viúvo(a)', NULL, NULL, NULL, 'eng', 'edf', NULL, NULL, 'Outro', 'lçkkk', 'De 1 a 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 76, 'Outro', NULL, 'Evangélica', NULL, 'comp', NULL, 'Quarto', NULL, 'Próprio', NULL, 'Mais que 9', 'Taipa', NULL, 'Outro', NULL, 'Com Revestimento', 'Sim', 'Outro', NULL, 'Fervida', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 77, 'Solteiro(a)', NULL, NULL, NULL, 'eng', 'eee', 'Outro', 'eee', 'Próprio em Aquisição', NULL, 'De 7 a 9', 'Outro', 'eeeeeee', 'Laje', NULL, 'Com Revestimento', 'Não', NULL, NULL, NULL, NULL, 'Esgoto', NULL, NULL, NULL, NULL),
(17, 77, 'Solteiro(a)', NULL, NULL, NULL, 'eng', 'eee', 'Outro', 'eee', 'Próprio em Aquisição', NULL, 'De 7 a 9', 'Outro', 'eeeeeee', 'Laje', NULL, 'Com Revestimento', 'Não', NULL, NULL, NULL, NULL, 'Esgoto', NULL, NULL, NULL, NULL),
(18, 78, 'Casado(a)', 'Branco(a)', NULL, NULL, NULL, 'tuyyyu', 'Outro', 'yy7yy', 'Cedido', NULL, NULL, NULL, NULL, NULL, NULL, 'Sem Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 79, NULL, NULL, NULL, NULL, 'ddd', 'srrr', 'Apartamento', NULL, 'Outro', 'eee', 'Mais que 9', NULL, NULL, NULL, NULL, 'Com Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 80, 'União Estável', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palha', NULL, 'Com Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 81, 'Divorciado(a)', 'Preto(a)', NULL, NULL, NULL, NULL, 'Casa', NULL, 'Outro', 'p-pp', NULL, NULL, NULL, NULL, NULL, 'Sem Revestimento', 'Sim', 'Outro', '][][]', 'Fervida', 'Queimado', NULL, NULL, NULL, NULL, NULL),
(22, 82, NULL, NULL, NULL, NULL, 'ee', NULL, NULL, NULL, 'Próprio em Aquisição', NULL, 'De 7 a 9', 'Outro', NULL, NULL, NULL, 'Sem Revestimento', NULL, NULL, NULL, NULL, 'Queimado', NULL, NULL, NULL, NULL, NULL),
(23, 83, 'Outro', 'Preto(a)', NULL, NULL, NULL, NULL, 'Quarto', NULL, 'Outro', 're', 'De 1 a 3', NULL, NULL, NULL, NULL, 'Com Revestimento', 'Não', 'Poço', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 87, NULL, NULL, NULL, NULL, 'eng', NULL, NULL, NULL, 'Outro', NULL, 'De 1 a 3', NULL, NULL, NULL, NULL, 'Com Revestimento', 'Sim', NULL, NULL, NULL, NULL, 'Fossa negra/seca', NULL, NULL, NULL, NULL),
(28, 95, NULL, NULL, NULL, NULL, 'tyhh', NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'eeeeeee', NULL, NULL, 'Sem Revestimento', 'Sim', 'Outro', 'eeee', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 97, NULL, NULL, NULL, NULL, 'rrrrr', NULL, NULL, NULL, 'Outro', 'rrrrrr', NULL, 'Outro', 'yhjuujuj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 98, NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'eerrr', 'Outro', 'rrrrr', 'De 7 a 9', 'Outro', 'mjkmkll', NULL, NULL, NULL, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 99, NULL, NULL, NULL, NULL, NULL, NULL, 'Casa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'yhyyh', NULL, 'Outro', 'yyyyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 101, 'Divorciado(a)', NULL, NULL, NULL, 'gggg', NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'eeee', NULL, NULL, 'Sem Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 102, NULL, NULL, 'Espírita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Com Revestimento', NULL, 'Outro', 'rrrr', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Próprio', NULL, 'De 1 a 3', 'Tábua', NULL, NULL, NULL, 'Com Revestimento', 'Não', 'Outro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 104, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Outro', NULL, 'Patrões', NULL, NULL, NULL, NULL, NULL, NULL, 'Sem Revestimento', NULL, 'Chafariz', NULL, 'Sem cuidado prévio', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Com Revestimento', 'Não', 'Outro', 'njfjhojh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'De 7 a 9', 'Outro', 'gcgcc', NULL, NULL, 'Com Revestimento', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 86, NULL, NULL, 'Espírita', NULL, NULL, NULL, 'Outro', 'llll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Com Revestimento', 'Sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 88, 'Casado(a)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'De 7 a 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 106, 'Divorciado(a)', 'Indígena(a)', NULL, 'Não alfabetizado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Outro', 'ffff', NULL, NULL, 'Com Revestimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 108, 'Casado(a)', 'Amarelo(a)', 'Católica', 'Não se aplica', NULL, NULL, 'Outro', NULL, 'Outro', NULL, 'De 1 a 3', 'Outro', NULL, 'Palha', NULL, 'Com Revestimento', 'Sim', 'Poço', NULL, 'Filtrada', 'Coleta pública', 'Esgoto', NULL, NULL, NULL, NULL),
(48, NULL, 'Casado(a)', 'Preto(a)', 'Católica', 'Alfabetizado', NULL, NULL, 'Outro', 'sssss', 'Próprio', NULL, 'De 1 a 3', 'Outro', 'wwwww', 'Telha', NULL, 'Sem Revestimento', 'Não', 'Poço', NULL, 'Fervida', 'Coleta pública', 'Esgoto', NULL, NULL, NULL, NULL),
(55, 111, 'Solteiro(a)', 'Indígena(a)', 'Espírita', 'Alfabetizado', NULL, NULL, 'Outro', NULL, 'Próprio em Aquisição', NULL, 'De 1 a 3', 'Tijolo', NULL, 'Telha com forro', NULL, 'Com Revestimento', 'Sim', 'Poço', NULL, 'Filtrada', 'Queimado', 'Esgoto', NULL, NULL, NULL, NULL),
(57, 112, 'Solteiro(a)', 'Amarelo(a)', 'Espírita', 'Não alfabetizado', NULL, NULL, 'Outro', 'hj', 'Próprio em Aquisição', 'kkkkk', 'De 1 a 3', 'Taipa', NULL, 'Telha com forro', NULL, 'Com Revestimento', 'Sim', 'Rio', NULL, 'Filtrada', 'Coleta pública', 'Esgoto', NULL, NULL, NULL, NULL),
(58, 113, 'Viúvo(a)', 'Amarelo(a)', 'Católica', 'Alfabetizado', NULL, NULL, 'Apartamento', NULL, 'Próprio', 'outro', 'De 7 a 9', 'Taipa', NULL, 'Telha', NULL, 'Com Revestimento', 'Sim', 'Poço', NULL, 'Mineral', 'Coleta pública', 'Esgoto', NULL, NULL, NULL, NULL),
(59, 114, 'Casado(a)', 'Amarelo(a)', 'Evangélica', 'Não alfabetizado', NULL, NULL, 'Apartamento', NULL, 'Próprio', NULL, 'De 4 a 6', 'Tijolo', NULL, 'Telha com forro', NULL, 'Com Revestimento', 'Sim', 'Rio', NULL, 'Filtrada', 'Céu aberto', 'Esgoto', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `entrevistas`
--

CREATE TABLE `entrevistas` (
  `id_entrevista` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `data_entrevista` date DEFAULT NULL,
  `prontuario` varchar(30) DEFAULT NULL,
  `nome_paciente` varchar(255) DEFAULT NULL,
  `nome_social` varchar(255) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `cpf` char(14) DEFAULT NULL,
  `rg` char(20) DEFAULT NULL,
  `cartao_sus` char(20) DEFAULT NULL,
  `naturalidade` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `pai` varchar(255) DEFAULT NULL,
  `mae` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `ponto_referencia` varchar(255) DEFAULT NULL,
  `telefone` char(16) DEFAULT NULL,
  `logradouro_origem` varchar(255) DEFAULT NULL,
  `bairro_origem` varchar(50) DEFAULT NULL,
  `complemento_origem` varchar(255) DEFAULT NULL,
  `cep_origem` char(9) DEFAULT NULL,
  `cidade_origem` varchar(50) DEFAULT NULL,
  `uf_origem` char(2) DEFAULT NULL,
  `ponto_referencia_origem` varchar(255) DEFAULT NULL,
  `nome_responsavel` varchar(255) DEFAULT NULL,
  `grau_parentesco_responsavel` varchar(50) DEFAULT NULL,
  `telefone_responsavel` char(16) DEFAULT NULL,
  `observacao_responsavel` text DEFAULT NULL,
  `cuidador` varchar(255) DEFAULT NULL,
  `telefone_cuidador` char(16) DEFAULT NULL,
  `observacao_cuidador` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `entrevistas`
--

INSERT INTO `entrevistas` (`id_entrevista`, `id_paciente`, `data_entrevista`, `prontuario`, `nome_paciente`, `nome_social`, `sexo`, `cpf`, `rg`, `cartao_sus`, `naturalidade`, `data_nascimento`, `pai`, `mae`, `logradouro`, `bairro`, `complemento`, `cep`, `cidade`, `uf`, `ponto_referencia`, `telefone`, `logradouro_origem`, `bairro_origem`, `complemento_origem`, `cep_origem`, `cidade_origem`, `uf_origem`, `ponto_referencia_origem`, `nome_responsavel`, `grau_parentesco_responsavel`, `telefone_responsavel`, `observacao_responsavel`, `cuidador`, `telefone_cuidador`, `observacao_cuidador`) VALUES
(3, 9, '2024-08-12', '54054', 'João Silva', 'João Silva', 'M', '02189773000', '1256789034', '444444555', 'Brasileiro', '2001-06-13', 'José da Silva', 'Maria Costa', 'logradouro', 'Olho D\'água', 'nenhum', '65065111', 'São Luís', 'MA', 'nenhum', '(98) 99911-8500', 'logradouro', 'Olho D\'água', 'nenhum', '33065111', 'São Luís', 'MA', 'nenhum', 'José da Silva', 'pai', '(98) 98811-8500', 'nenhuma', 'Julia Carvalho', '(98) 98811-7600', 'nenhuma'),
(4, 6, '2024-07-01', '80008', 'Beltrano Costa', 'type=\"text\"', 'M', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', '2001-07-15', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"'),
(5, 2, NULL, '44444', 'Fulano Silva', NULL, NULL, NULL, NULL, NULL, NULL, '2004-07-31', NULL, NULL, NULL, 'Olho D\'Água', NULL, '65065100', 'São Luís', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 39, '2024-07-01', '12121', 'Hugo', 'type=\"text\"', 't', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'tfbkp', '2000-10-20', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"'),
(17, 51, NULL, '34343', 'paulo', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 53, NULL, '90909', 'gus', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 57, NULL, '67890', 'kj', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 58, NULL, '8765', 'bidu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 60, NULL, '55555', 'carlos', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 61, NULL, '55555', 'df', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 62, NULL, '123489', 'dj', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 63, NULL, '67890', 'Leo', NULL, NULL, NULL, NULL, 'edfg', NULL, '2024-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yyuhyuuu', 'yuyuyuyu'),
(30, 64, NULL, '332445', 'tfgh', NULL, NULL, NULL, '5555', NULL, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 65, NULL, '67890', 'gggg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 66, NULL, '45678', 'fff', NULL, NULL, NULL, 'ttt', NULL, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 67, NULL, '123987', 'feu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 68, NULL, '87890', 'edu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 69, NULL, '67890', 'hj', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 70, '2024-07-18', '54567', 'luis', 'type=\"text\"', 't', '00001222', 'type=\"text\"', 'type=\"text\"', 'brasilll', '2024-07-01', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'eee', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"'),
(38, 72, NULL, '578976', 'alice', NULL, NULL, NULL, NULL, 'eeee', NULL, '2000-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 73, '2024-07-18', '320329', 'bob', 'type=\"text\"', 't', '12345', 'type=\"text\"', 'type=\"text\"', 'brasil', '1989-07-21', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'MA', 'type=\"text\"', '890766556', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"'),
(40, 74, NULL, '567890999', 'carl', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 45, NULL, '123', 'dada', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 76, '2024-07-19', '1209876', 'EDUARDO', 'EDUARDO', 't', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', '2002-06-17', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'Olho', 'type=\"text\"', '65065100', 'São', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"'),
(43, 77, '2024-07-02', '12345987', 'Gilvan', 'Gilvan', NULL, NULL, NULL, NULL, NULL, '2024-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 78, '2024-07-16', NULL, 'Heitor', NULL, NULL, NULL, NULL, NULL, 'brasilll', '2024-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 79, '2024-07-16', '1234890', 'ian', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 80, NULL, '12', 'edff', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 81, '2024-07-09', '345678', 'kalil', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 82, '2024-07-01', '567832', 'lara', 'type=\"text\"', 't', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', '2024-07-05', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'type=\"text\"', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"te', 'oi', 'ty', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"', 'type=\"text\"'),
(49, 83, '2024-07-16', '4567832', 'Matheus Nascimento', 'type=', 'm', 'type=', 'type=', '4567', 'type=', '2024-07-03', 'type=', 'type=', 'type=', 'type=', 'type=', 'type=', 'type=', 'ty', 'type=', 'type=', 'type=', 'type=', 'type=', 'type=', 'type=', 'ty', 'type=', 'type=', 'type=', 'type=', 'type=', 'type=', 'type=', 'type='),
(50, 84, '2024-07-23', '123890', 'silvio', 'silvinho', NULL, NULL, NULL, NULL, NULL, '2024-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 87, '2024-07-23', '12345', 'yago silva', 'yaguin', NULL, NULL, NULL, NULL, NULL, '2014-07-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 88, '2024-07-23', '67678', 'Beto Silva', 'betin dj', 'm', '456789000', '77765654343', '123345666', 'brasilll', '2002-07-03', 'sxçsl', 'mae', 't55t5t', 'Olho D\'água', 'yyyy', '65065100', 'São Luís', 'ma', 'r4rrrrr', '234567788', 'eftfrrf', 'Olho Dfogo', 'errrr', '65065100', 'São Luís', 'ma', 'eeeeee', 'iuyt', 'eeeee', '19273263', 'ijohmx', 'vmk,j', '1638945875', '8hmdgtwp,dpk.dbiekg-dbhhdihk.'),
(56, 90, '2024-07-26', '444444', 'yuri', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 91, '2024-07-30', '6789', 'luisao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 92, '2024-07-30', '12390', 'duiliu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 93, '2024-07-30', '3456', 'kiui', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 94, '2024-07-31', '1234', 'edy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 95, '2024-07-31', '456789', 'biu', NULL, NULL, '12345', NULL, NULL, NULL, '2024-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 97, '2024-08-01', '234555', 'oliver noronha', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 98, '2024-08-01', '676878', 'hyoran', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 99, '2024-08-01', '2345', 'nui', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 100, '2024-08-01', '34556', 'dare', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gggg', '1233455', 'fffgg'),
(72, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gggg', '3456', NULL),
(73, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hnhnhn', NULL, NULL),
(75, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hju', NULL, NULL),
(76, NULL, '2024-08-06', '678905', NULL, 'atu', NULL, NULL, NULL, NULL, NULL, '2024-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, '2024-08-06', '123487989', NULL, 'teste', NULL, NULL, NULL, NULL, NULL, '2024-08-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 101, '2024-08-06', '234545677', NULL, 'jaylin', NULL, NULL, NULL, NULL, NULL, '2024-08-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 102, '2024-08-06', '45678', 'hyui', 'yui', NULL, NULL, NULL, NULL, NULL, '2024-07-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 106, '2024-08-06', '5677', 'tadeu', 'ffff', NULL, NULL, NULL, NULL, NULL, '2024-08-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frfr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 107, '2024-08-06', '123343', 'ffff', 'fjufjf', 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 108, '2024-08-07', '7899', 'gui', 'guizin', 'm', '021.892.773-88', '77765654343', 'rlkmmrçlr', 'tfbkp', '2024-07-30', 'sxçsl', 'cfghh', 't55t5t', 'Olho D\'água', 'yyyy', '65065100', 'São Luís', 'dd', 'r4rrrrr', 'lonççn', 'ffggggg', 'Olho D\'água', 'errrr', '65065100', 'São Luís', 'ma', 'eeeeee', 'EDUARDO C CARVALHO', 'eeeee', '19273263', 'ijohmx', 'hnhnhn', '1638945875', '8hmdgtwp,dpk.dbiekg-dbhhdihk.'),
(85, 109, '2024-08-08', '5656777887', 'talles', 'tallinho', 'm', 'dç,ldçl,d', '77765654343', 'kkkkkkk', 'tfbkp', '2024-07-31', 'pai', 'mae', 't55t5t', 'Olho D\'água', 'yyyy', '65065100', 'São Luís', 'dd', 'r4rrrrr', '(98) 99911-8525', 'eftfrrf', 'Olho D\'água', 'errrr', '65065100', 'São Luís', 'ma', 'eeeeee', 'EDUARDO C CARVALHO', 'eeeee', '19273263', 'eererer', 'yhyrhyryrh', 'yhyhyh', 'hhhh'),
(87, 110, '2024-08-08', '67890', 'beto', 'betin', 'm', 'dç,ldçl,d', '77765654343', 'kkkkkkk', 'brasilll', '2024-08-06', 'sxçsl', 'cfghh', 'ytyr', 'Olho D\'água', 'y', '65065100', 'São Luís', 'dd', 'r4rrrrr', '0000', '00000', 'Olho D\'água', '-p0008', '65065100', 'São Luís', 'mj', '000', 'EDUARDO C CARVALHO', 'iii', 'gt6ii', 'ttrft', '4hbhthbh', 'hhhhh', 'hhyhy5yh5'),
(94, 111, '2024-08-01', '45678', 'edusao', 'EDUARDO C CARVALHO', 'd', '021.892.773-88', '77765654343', 'rlkmmrçlr', 'brasilll', '2024-08-07', 'paulo', 'mae', 'atum', 'Olho D\'água', 'yyyy', '65065100', 'São Luís', 'MA', 'r4rrrrr', 'lonççn', 'ffggggg', 'Olho D\'água', '-p0008', '65065100', 'São Luís', 'ma', 'eeeeee', 'EDUARDO C CARVALHO', 'iii', '19273263', 'ijohmx', 'wer', 'yyuhyuuu', 'gojjggvmg'),
(96, 112, '2024-08-09', '45678', 'tati costa', 'EDUARDO C CARVALHO', 'd', '021.892.773-88', 'peixe', 'd.dçdç', 'brasilll', '2024-08-01', 'paulo', 'cfghh', 'atum', 'Olho D\'água', 'yyyy', '65065100', 'São Luís', 'dd', 'sssksjl', '0000', 'ffggggg', 'Olho D\'água', 'errrr', '65065100', 'São Luís', 'mj', 'eeeeee', 'EDUARDO C CARVALHO', 'eeeee', '19273263', 'ijohmx', 'juju', '1638945875', '8hmdgtwp,dpk.dbiekg-dbhhdihk.'),
(97, 113, '2024-08-12', '44444789', 'Marcos Silva', 'nome social atualizado', 'm', '02189773012', '77765654343', '45674567', 'brasileiro', '2000-01-08', 'José Silva', 'Maria Costa', 'logradouro', 'Olho D\'água', 'nenhum', '65065111', 'São Luís', 'ma', 'nenhum', '(98) 99911-4525', 'logradouro', 'Olho D\'água', 'nenhum', '98065100', 'São Luís', 'ma', 'nenhum', 'José Silva', 'pai', '(98) 99761-4525', 'nenhum', 'Júlia Carvalho', '(98) 94561-4525', 'nenhum'),
(98, 114, '2024-08-12', '45678', 'EDUARDO C CARVALHu', 'EDUARDO C CARVALHO', 'm', 'dç,ldçl,d', 'kmfkflf', 'rlkmmrçlr', 'brasilll', '2024-08-01', 'sxçsl', 'kdfd', 'ytyr', 'Olho D\'água', 'sss', '65065100', 'São Luís', 'ma', 'r4rrrrr', '0000', 'eftfrrf', 'Olho D\'água', '-p0008', '65065100', 'São Luís', 'ma', '000', 'EDUARDO C CARVALHO', 'pai', 'gt6ii', 'ttrft', 'vmk,j', 'yyuhyuuu', 'hu89zaemhpmpfs');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estilo_vida`
--

CREATE TABLE `estilo_vida` (
  `id_estilo_vida` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `elitismo` varchar(50) DEFAULT NULL,
  `atividade_fisica` varchar(50) DEFAULT NULL,
  `tabagismo` varchar(30) DEFAULT NULL,
  `tempo_cigarro` varchar(50) DEFAULT NULL,
  `cigarros_por_dia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estilo_vida`
--

INSERT INTO `estilo_vida` (`id_estilo_vida`, `id_paciente`, `elitismo`, `atividade_fisica`, `tabagismo`, `tempo_cigarro`, `cigarros_por_dia`) VALUES
(24, 1, 'Não se aplica', 'Esporádico', 'Sim', 'Até 30 minutos', 'Mais de 25'),
(38, 6, 'Não etilista', 'Esporádico', 'Sim', NULL, NULL),
(41, NULL, 'Não etilista', 'Semanal', 'Não', NULL, NULL),
(42, 79, 'Ex alcoolista', 'Nenhum', 'Sim', 'Mais de 30 minutos', 'Até 15'),
(43, 82, 'Etilista Social', NULL, 'Sim', 'Até 30 minutos', NULL),
(44, 83, NULL, 'Não se aplica', 'Sim', 'Até 30 minutos', NULL),
(46, 86, 'Não etilista', 'Esporádico', 'Não', NULL, NULL),
(47, 87, 'Ex alcoolista', 'Nenhum', 'Sim', NULL, 'Mais de 25'),
(48, 88, 'Etilista Social', 'Esporádico', 'Não se aplica', NULL, NULL),
(49, 95, 'Etilista Social', NULL, 'Não', NULL, NULL),
(55, NULL, 'Etilista Social', 'Nenhum', 'Não se aplica', NULL, NULL),
(56, NULL, 'Não etilista', 'Nenhum', 'Não', NULL, NULL),
(59, 101, 'Etilista Social', 'Esporádico', 'Sim', 'Até 30 minutos', 'De 16 a 25'),
(61, 96, 'Etilista Social', 'Nenhum', 'Não', NULL, NULL),
(62, 85, 'Alcoolista', 'Esporádico', 'Não', NULL, NULL),
(63, NULL, 'Ex alcoolista', 'Nenhum', NULL, NULL, NULL),
(64, 105, NULL, 'Semanal', 'Sim', NULL, NULL),
(65, NULL, NULL, 'Nenhum', 'Não', NULL, NULL),
(66, 9, 'Não se aplica', 'Não se aplica', 'Não se aplica', NULL, NULL),
(67, 106, 'Não se aplica', 'Esporádico', NULL, NULL, NULL),
(68, 108, 'Não etilista', 'Nenhum', 'Sim', NULL, NULL),
(69, 108, 'Etilista Social', 'Semanal', 'Sim', 'Até 30 minutos', 'Até 15'),
(74, 111, 'Etilista Social', 'Semanal', 'Sim', 'Mais de 30 minutos', 'Até 15'),
(76, 112, 'Não etilista', 'Esporádico', 'Sim', 'Mais de 30 minutos', 'De 16 a 25'),
(77, 113, 'Ex alcoolista', 'Semanal', 'Sim', 'Até 30 minutos', 'Até 15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `integrantes`
--

CREATE TABLE `integrantes` (
  `id_integrante` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `nome_integrante` varchar(255) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `renda_rs` float(10,2) DEFAULT NULL,
  `renda_sm` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `integrantes`
--

INSERT INTO `integrantes` (`id_integrante`, `id_paciente`, `nome_integrante`, `qtde`, `renda_rs`, `renda_sm`) VALUES
(1, 97, NULL, NULL, NULL, NULL),
(2, 98, '', NULL, NULL, NULL),
(3, 98, '', NULL, NULL, NULL),
(4, 98, '', NULL, NULL, NULL),
(5, 99, '', NULL, NULL, NULL),
(6, 100, 'Paciente', 2, 2222.00, 2222.00),
(7, 100, 'Pai', 2, 2222.00, 22222.00),
(8, 101, 'Companheiro(a)', 1, 2333.00, 222.00),
(9, 101, 'Filho(a)', 1, 222.00, 890.00),
(10, 102, 'Pai', 2, 3333.00, 789.00),
(11, 102, 'Mãe', 1, 111.00, 22244.00),
(12, 103, 'Mãe', 2, 333.00, 678.00),
(13, 103, 'Companheiro(a)', 1, 3333.00, 333.00),
(14, 103, 'Cunhado(a)', 1, 111.00, 23.00),
(20, 86, 'Pai', 2, 222.00, 4567.00),
(21, 86, 'Padrasto', 2, 3333.00, 678.00),
(24, 105, 'Mãe', 3, 567.00, 56556.00),
(25, 105, 'Madrasta', 3, 333.00, 333.00),
(26, 104, 'Paciente', 1, 1111.00, 1111.00),
(27, 104, 'Irmão(ã)', 1, 222.00, 222.00),
(28, 106, 'Madrasta', 1, 3333.00, 3333.00),
(29, 106, 'Companheiro(a)', 2, 2222.00, 2333.00),
(33, 108, 'Pai', 8, 8.00, 8.00),
(34, 108, 'Irmão(ã)', 9, 676.00, 666.00),
(46, 111, 'Mãe', 1, 111.00, 1111.00),
(47, 111, 'Madrasta', 2, 0.00, 2222.00),
(50, 112, 'Neto(a)', 3, 9000.00, 3443.00),
(51, 112, 'Avô', 4, 22.00, 22.00),
(52, 113, 'Pai', 1, 6000.00, 5.00),
(53, 113, 'Mãe', 1, 5000.00, 4.00),
(54, 113, 'Irmão(ã)', 2, 3000.00, 2.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `nome_paciente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `nome_paciente`) VALUES
(1, 'José da Silva'),
(2, 'Fulano Silva'),
(3, 'Maria Costa'),
(4, 'Töby Bezerra'),
(5, 'Jubileu'),
(6, 'Beltrano Wallace'),
(7, 'tulio maravilha'),
(9, 'João Silva'),
(10, 'Maria Oliveira'),
(11, 'Carlos Souza'),
(13, 'Lucas Pereira'),
(14, 'Mariana Costa'),
(15, 'Rafael Mendes'),
(16, 'Fernanda Duarte'),
(17, 'Gustavo Rocha'),
(18, 'Juliana Farias'),
(19, 'Bruno Alves'),
(20, 'Patrícia Ribeiro'),
(21, 'Vinícius Carvalho'),
(22, 'Tatiana Monteiro'),
(23, 'Felipe Martins'),
(24, 'Camila Batista'),
(25, 'Rodrigo Fernandes'),
(26, 'Daniela Souza'),
(27, 'Renato Barros'),
(28, 'Isabela Nunes'),
(29, 'Leandro Araújo'),
(30, 'Larissa Gomes'),
(31, 'Thiago Correia'),
(32, 'Letícia Melo'),
(33, 'Eduardo Teixeira'),
(34, 'Natália Freitas'),
(35, 'André Lima'),
(36, 'Vanessa Barbosa'),
(37, 'Pedro Antunes'),
(38, 'Sabrina Matos'),
(39, 'Hugo Moura'),
(40, 'Leandro Gomes'),
(41, 'Marcelo Alves'),
(42, 'Alan '),
(43, 'Felipe'),
(44, 'Danilo'),
(45, 'dada'),
(46, 'dada'),
(47, 'dada'),
(48, 'dada'),
(49, 'dada'),
(50, 'Fuliu'),
(51, 'paulo'),
(52, 'paulo'),
(53, 'gus'),
(54, 'amaro'),
(55, 'dede'),
(56, 'adk'),
(57, 'kj'),
(58, 'bidu'),
(59, 'bidu'),
(60, 'carlos'),
(61, 'df'),
(62, 'dj'),
(63, 'Leo'),
(64, 'tfgh'),
(65, 'gggg'),
(66, 'fff'),
(67, 'feu'),
(68, 'edu'),
(69, 'hj'),
(70, 'luis'),
(72, 'alice'),
(73, 'bob'),
(74, 'carl'),
(75, 'dada'),
(76, 'EDUARDO C CARVALHO'),
(77, 'Gilvan'),
(78, 'Heitor'),
(79, 'ian'),
(80, 'edff'),
(81, 'kalil'),
(82, 'lara'),
(83, 'markimho'),
(84, 'silvio'),
(85, 'renato'),
(86, 'zuza'),
(87, 'yago silva'),
(88, 'beto silva'),
(90, 'yuri'),
(91, 'luisao'),
(92, 'duiliu'),
(93, 'kiui'),
(94, 'edy'),
(95, 'biu'),
(96, 'savio'),
(97, 'oliver noronha'),
(98, 'hyoran'),
(99, 'nui'),
(100, 'dare'),
(101, 'jalen'),
(102, 'hyui'),
(103, 'renan'),
(104, 'queiroz'),
(105, 'ruan'),
(106, 'fdffgf'),
(107, 'ffff'),
(108, 'gui'),
(109, 'talles'),
(110, 'beto'),
(111, 'edusao'),
(112, 'tati costa'),
(113, 'Marcos Silva'),
(114, 'EDUARDO C CARVALHu');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `dados_previdenciarios`
--
ALTER TABLE `dados_previdenciarios`
  ADD PRIMARY KEY (`id_beneficio`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `dados_socioeconomicos`
--
ALTER TABLE `dados_socioeconomicos`
  ADD PRIMARY KEY (`id_dados_socioeconomicos`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD PRIMARY KEY (`id_entrevista`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `estilo_vida`
--
ALTER TABLE `estilo_vida`
  ADD PRIMARY KEY (`id_estilo_vida`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `integrantes`
--
ALTER TABLE `integrantes`
  ADD PRIMARY KEY (`id_integrante`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dados_previdenciarios`
--
ALTER TABLE `dados_previdenciarios`
  MODIFY `id_beneficio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `dados_socioeconomicos`
--
ALTER TABLE `dados_socioeconomicos`
  MODIFY `id_dados_socioeconomicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `entrevistas`
--
ALTER TABLE `entrevistas`
  MODIFY `id_entrevista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de tabela `estilo_vida`
--
ALTER TABLE `estilo_vida`
  MODIFY `id_estilo_vida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de tabela `integrantes`
--
ALTER TABLE `integrantes`
  MODIFY `id_integrante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `dados_previdenciarios`
--
ALTER TABLE `dados_previdenciarios`
  ADD CONSTRAINT `dados_previdenciarios_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Restrições para tabelas `dados_socioeconomicos`
--
ALTER TABLE `dados_socioeconomicos`
  ADD CONSTRAINT `dados_socioeconomicos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Restrições para tabelas `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD CONSTRAINT `entrevistas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Restrições para tabelas `estilo_vida`
--
ALTER TABLE `estilo_vida`
  ADD CONSTRAINT `estilo_vida_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Restrições para tabelas `integrantes`
--
ALTER TABLE `integrantes`
  ADD CONSTRAINT `integrantes_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
