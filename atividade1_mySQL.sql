-- Criação do banco de dados
CREATE DATABASE escola;

-- Seleciona o banco de dados
USE escola;

-- Criação da tabela estudantes
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(20),
    nota_final DECIMAL(4,2),
    data_matricula DATE
);

-- Inserção de 8 registros
INSERT INTO estudantes (nome, idade, serie, nota_final, data_matricula) VALUES
('Amanda Lima', 14, '8º Ano', 8.5, '2023-02-01'),
('Lucas Mendes', 15, '9º Ano', 6.8, '2023-02-01'),
('Carla Silva', 13, '7º Ano', 9.2, '2023-02-01'),
('Rafael Souza', 14, '8º Ano', 5.7, '2023-02-01'),
('Beatriz Costa', 12, '6º Ano', 7.5, '2023-02-01'),
('Pedro Henrique', 16, '1º Ano EM', 4.9, '2023-02-01'),
('Juliana Castro', 15, '9º Ano', 8.0, '2023-02-01'),
('Thiago Rocha', 13, '7º Ano', 6.5, '2023-02-01');

-- SELECT - estudantes com nota maior que 7.0
SELECT * FROM estudantes WHERE nota_final > 7.0;

-- SELECT - estudantes com nota menor que 7.0
SELECT * FROM estudantes WHERE nota_final < 7.0;

-- Atualização de um registro (Exemplo: Atualizar nota do estudante com id = 4)
UPDATE estudantes SET nota_final = 7.2 WHERE id = 4;
