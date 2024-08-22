CREATE database NOVATEC;
USE NOVATEC;
-- Criando a tabela de Departamentos
CREATE TABLE Departamentos (
    departamento_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100)
);

-- Criando a tabela de Funcionários
CREATE TABLE Funcionarios (
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    departamento_id INT,
    data_contratacao DATE,
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Inserindo dados na tabela de Departamentos
INSERT INTO Departamentos (nome, localizacao) VALUES ('Recursos Humanos', 'São Paulo');
INSERT INTO Departamentos (nome, localizacao) VALUES ('TI', 'Rio de Janeiro');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Financeiro', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Logistica', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Vendas', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Ti', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Ti', 'São Paulo');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Financeiro', 'Belo Horizonte');

-- Inserindo dados na tabela de Funcionários
INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('João Silva', 'Analista de Sistemas', 4500.00, 2, '2022-01-15');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Maria Souza', 'Gerente de RH', 7000.00, 1, '2021-06-10');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Carlos Pereira', 'Analista Financeiro', 5300.00, 3, '2023-03-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Jokina Franscesca', 'Analista Logistica', 5000.00, 4, '2016-02-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Cassio Fernando', 'Gerente vendas', 16300.00, 5, '2000-02-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Paulo José', 'Gerente de Ti', 16500.00, 2, '2002-02-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Otavio Santos', 'Analista de Hardware', 2300.00, 2, '2022-06-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Felipa Silva', 'Estagio Financeiro', 1300.00, 3, '2024-02-12');

-- Selects
select * from funcionarios;
select * from departamentos;
select nome, cargo, salario from funcionarios;
select * from funcionarios where salario > 10000;
select * from funcionarios where salario < 10000;
select * from funcionarios where salario <> 10000;
select * from funcionarios where salario = 10000;

select f.nome as Funcionario, f.cargo as Cargo, d.nome as Departamento, d.localizacao as Localizacao 
from funcionarios f -- apelida a tabela "funcionarios" de 'f'
join departamentos d on f.departamento_id = d.departamento_id; 
-- junta a tabela funcionarios à departamentos onde o departamento_id de F seja igual ao de D

select count(*) as nome from funcionarios; -- Conta quantos dados
select sum(salario) from funcionarios; -- Soma todos os dados
select avg(salario) from funcionarios; -- Média dos dados
select max(salario) from funcionarios; -- Maior valor
select min(salario) from funcionarios; -- Menor valor
select min(salario) + 1000 from funcionarios; -- max/Min com operadores

select salario, sum(salario) from funcionarios group by salario having sum(salario) > 2000;
select salario, sum(salario) from funcionarios group by salario having sum(salario) < 2000;
select salario, sum(salario) from funcionarios group by salario having sum(salario) <> 2000;
select salario, sum(salario) from funcionarios group by salario having sum(salario) = 2000;

select distinct nome, salario from funcionarios;
select * from funcionarios limit 5; -- limita os 5 primeiros dados