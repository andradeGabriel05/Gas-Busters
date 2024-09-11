-- Criação do banco de dados
CREATE DATABASE gasbusters;

-- Usar o banco
USE gasbusters;

-- Criação da tabela usuario/cadastro
CREATE TABLE cadastro(
id			INT PRIMARY KEY AUTO_INCREMENT, 
nome		VARCHAR(50) NOT NULL, 
email		VARCHAR(60) NOT NULL, 
telefone	VARCHAR(15) NOT NULL, 
senha		VARCHAR(20) NOT NULL,
cpf			VARCHAR(15) NOT NULL,
dtdata		DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela do Sensor de gás MQ2
CREATE TABLE sensor(
id					INT PRIMARY KEY AUTO_INCREMENT,
id_empresa			INT,
porcentagem			FLOAT,
data_coleta			DATETIME
);

-- Criação da tabela Cozinha endereço 
CREATE TABLE cozinhaEnd(
id		INT PRIMARY KEY AUTO_INCREMENT,
rua		VARCHAR(100),
bairro	VARCHAR(50),
estado	VARCHAR(30),
pais	VARCHAR(30),
cidade	VARCHAR(50),
numero	VARCHAR(15),
cep		VARCHAR(9)
);

-- Criação da tabela Empresa
CREATE TABLE empresa (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_empresa 	VARCHAR(100),
id_usuario		INT,
id_empresa		INT,
id_sensor		INT,
instalacao		DATETIME
);