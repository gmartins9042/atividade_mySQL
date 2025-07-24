-- Criação do banco de dados --
CREATE DATABASE ecommerce;

-- Seleciona o banco de dados --
USE ecommerce;

-- Criação da tabela de produtos --
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    data_cadastro DATE
);

-- Inserção de 8 registros --
INSERT INTO produtos (nome, categoria, preco, estoque, data_cadastro) VALUES
('Notebook Dell Inspiron', 'Informática', 3500.00, 10, '2024-05-01'),
('Smartphone Samsung Galaxy S21', 'Celulares', 2900.00, 20, '2024-06-15'),
('Teclado Mecânico RGB', 'Acessórios', 280.00, 50, '2024-07-01'),
('Cadeira Gamer', 'Móveis', 870.00, 15, '2024-03-20'),
('Monitor LG 24"', 'Informática', 720.00, 12, '2024-04-18'),
('Mouse Sem Fio Logitech', 'Acessórios', 140.00, 40, '2024-05-10'),
('Fone de Ouvido JBL', 'Áudio', 450.00, 25, '2024-05-15'),
('Impressora HP DeskJet', 'Periféricos', 650.00, 8, '2024-06-01');

-- SELECT - produtos com valor maior que 500 --
SELECT * FROM produtos WHERE preco > 500;

-- SELECT - produtos com valor menor que 500 --
SELECT * FROM produtos WHERE preco < 500;

-- Atualização de um registro (Exemplo: Atualizar preço do 'Teclado Mecânico RGB') --
UPDATE produtos SET preco = 300.00 WHERE id = 3;
