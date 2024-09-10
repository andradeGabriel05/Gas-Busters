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
nome				VARCHAR(10) NOT NULL,
porcentagem 		FLOAT NOT NULL,
data_coleta			DATETIME NOT NULL,
valorsensor			DECIMAL(10,2) NOT NULL,
saidadegasinstalada VARCHAR(30) NOT NULL,
datadeinstalação 	DATETIME DEFAULT CURRENT_TIMESTAMP,
estaativo 			VARCHAR (10),
PorcentagemGás 		VARCHAR (60),
Sinal 				VARCHAR(60),
constraint chkativo check (estaativo in ("ligado","desligado"))
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
nome_fantasia VARCHAR(50),
usuario_id INT,
endereco_id INT
);