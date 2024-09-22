CREATE DATABASE bancoatv2;

USE bancoatv2;

CREATE TABLE funcionario(
    id_funcionario int NOT NULL,
    nome varchar(45),
    departamento_id int NOT NULL,
    numero_mesa int,
    carga_horaria_semanal int,
    PRIMARY KEY(id_funcionario)
);

CREATE TABLE departamento(
    id_departamento int NOT NULL,
    nome varchar(45),
    ramal int,
    PRIMARY KEY(id_departamento)
);

CREATE USER 'Gerente' IDENTIFIED BY 'G3r3Nt3';
GRANT SELECT, INSERT, UPDATE, DELETE ON bancoatv1.* TO 'Gerente';

CREATE USER 'Logistica' IDENTIFIED BY 'L0g1sT1c2';

CREATE VIEW vw_funcionario_Logistica AS SELECT nome, numero_mesa, carga_horaria_semanal FROM bancoatv2.funcionario;

-- Inserção dos departamentos
INSERT INTO departamento(id_departamento, nome, ramal) 
VALUES (6985, 'Comercial', 96);
INSERT INTO departamento(id_departamento, nome, ramal) 
VALUES (8596, 'RH', 52);
INSERT INTO departamento(id_departamento, nome, ramal) 
VALUES (7452, 'Marketing', 85);

-- Inserção dos funcionários
INSERT INTO funcionario(id_funcionario, nome, departamento_id, numero_mesa, carga_horaria_semanal) 
VALUES (1452, 'Carlos Silva', 6985, 52, 44);
INSERT INTO funcionario(id_funcionario, nome, departamento_id, numero_mesa, carga_horaria_semanal) 
VALUES (1486, 'João Souza', 6985, 45, 44);
INSERT INTO funcionario(id_funcionario, nome, departamento_id, numero_mesa, carga_horaria_semanal) 
VALUES (1856, 'Paulo Santos', 6985, 56, 44);
