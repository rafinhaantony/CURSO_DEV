-- DESAFIOS DML
CREATE DATABASE IF NOT EXISTS SMARTCOFFEE_DML_RAFAEL;
USE SMARTCOFFEE_DML_RAFAEL;

-- PARTE A
-- 1: CADASTRE DOIS NOVOS CLIENTES
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
('Ronaldo Alves','ronaldo@email.com','19999999920','Limeira',TRUE),
('James Silva','james@email.com','19999999910','Limeira',TRUE);

-- 2: CADASTRE UMA NOVA CATEGORIA CHAMADA ESPECIAIS DA CASA
INSERT INTO categoria (nome) VALUES
("Especiais da Casa");

-- 3: CADASTRE TRÊS NOVOS PRODUTOS NA NOVA CATEGORIA
INSERT INTO produto (nome, preco, ativo, id_categoria) VALUES
("Porções", 49.99, TRUE, 13),
("Lanche de Hamburguer", 34.99, TRUE, 13),
("Pizza", 59.99, TRUE, 13);
