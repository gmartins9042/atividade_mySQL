-- Criação do banco de dados--
CREATE DATABASE rh_Empresa;

-- Seleciona o banco de dados--
USE rh_Empresa;

-- Criação da tabela de colaboradores--
CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    data_admissao DATE,
    salario DECIMAL(10,2)
);

-- Inserção de 5 registros
INSERT INTO colaboradores (nome, cargo, departamento, data_admissao, salario) VALUES
('Ana Silva', 'Analista de RH', 'Recursos Humanos', '2021-03-15', 2500.00),
('Carlos Oliveira', 'Auxiliar Administrativo', 'Administrativo', '2022-07-01', 1800.00),
('Mariana Souza', 'Gerente de Projetos', 'TI', '2020-01-10', 4500.00),
('João Santos', 'Estagiário', 'Marketing', '2023-02-20', 1200.00),
('Beatriz Lima', 'Contadora', 'Financeiro', '2019-05-05', 3000.00);

-- SELECT colaboradores com salário maior que 2000--
SELECT * FROM colaboradores WHERE salario > 2000;

-- SELECT colaboradores com salário menor que 2000--
SELECT * FROM colaboradores WHERE salario < 2000;

-- Atualização de um registro ( Atualizar salário do João Santos)--

UPDATE colaboradores SET salario = 1500.00 WHERE id = 4;
