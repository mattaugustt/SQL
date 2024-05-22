CREATE DATABASE IF NOT EXISTS Banco; 
USE Banco;


CREATE TABLE banco(
    cod_banco INT NOT NULL PRIMARY KEY,
    nome VARCHAR(40)
); 

CREATE TABLE agencia(
    num_agencia INT NOT NULL PRIMARY KEY,
    cod_banco INT NOT NULL,
    endereco VARCHAR(40),
    FOREIGN KEY(cod_banco) REFERENCES banco(cod_banco)
); 

CREATE TABLE cliente(
    cpf INT NOT NULL PRIMARY KEY,
    nome VARCHAR(40),
    sexo VARCHAR(20),
    endereco_cliente VARCHAR(40)
); 

CREATE TABLE conta(
    num_conta INT NOT NULL PRIMARY KEY,
    saldo INT NOT NULL,
    tipo_conta VARCHAR(20),
    num_agencia INT NOT NULL,
    FOREIGN KEY(num_agencia) REFERENCES agencia(num_agencia)
); 

CREATE TABLE historico(
    cpf_cliente INT NOT NULL,
    num_conta INT NOT NULL,
    data_inicio DATE,
    FOREIGN KEY(cpf_cliente) REFERENCES cliente(cpf),
    FOREIGN KEY(num_conta) REFERENCES conta(num_conta)
); 

CREATE TABLE telefone_cliente(
    cpf_cliente INT NOT NULL,
    telefone VARCHAR(20),
    FOREIGN KEY(cpf_cliente) REFERENCES cliente(cpf)
);
