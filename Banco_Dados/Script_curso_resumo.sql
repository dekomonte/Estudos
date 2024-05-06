-- Criar Banco de Dados
CREATE DATABASE PROJETO;

-- Usar Banco de Dados
USE PROJETO;

-- Criar Tabelas
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);

-- Mostrar Bancos
SHOW DATABASES;

-- Mostrar Tabelas
SHOW TABLES;

-- Descobrir Como é a Estrutura de Uma Tabela
DESC CLIENTE;

-- Inserir Dados na Tabela
INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ'); --Sem especificar os campos
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999); --Especificando os campos

-- Insert Sintaxe
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- Comando SELECT
SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE; -- Com ALIAS
SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;
SELECT NOME, SEXO FROM CLIENTE WHERE SEXO = 'M';
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE '%CENTRO%';