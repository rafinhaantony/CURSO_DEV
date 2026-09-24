-- BANCO DE DADOS - SMARTCOFFEE - DML;
-- RECURSO DE RESET DE BANCO DE DADOS;
-- DROP DATABASE IF EXISTS SMARCOFFEE_DML_RAFAEL;
DROP DATABASE IF EXISTS SMARTCOFFEE_DML_RAFAEL;
CREATE DATABASE IF NOT EXISTS SMARTCOFFEE_DML_RAFAEL;
USE SMARTCOFFEE_DML_RAFAEL;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    telefone VARCHAR(15),
    cidade VARCHAR(60) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    id_categoria INT NOT NULL,
    CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria)
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL,
    status_pedido ENUM('ABERTO','PREPARANDO','FINALIZADO','CANCELADO') NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    id_cliente INT NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE item_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    observacao VARCHAR(150),
    CONSTRAINT fk_item_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    CONSTRAINT fk_item_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
);

CREATE TABLE forma_pagamento (
    id_forma_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_forma_pagamento INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME,
    CONSTRAINT fk_pagamento_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    CONSTRAINT fk_pagamento_forma_pagamento FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento (id_forma_pagamento)
);

-- INSERINDO DADOS NO BD
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
('Rafael Antony','rafael@email.com','19999999901','Limeira',TRUE),
('Luis Felipe','luis@email.com','19999999902','Limeira',TRUE),
('Mateus Silva','mateus@email.com','19999999903','Limeira',TRUE),
('Matheus Oricolli','matheusc@email.com','19999999904','Limeira',TRUE),
('Nicolas Filipe','nicolas@email.com','19999999905','Limeira',TRUE),
('Otavio Correia','otavio@email.com','19999999906','Limeira',TRUE);

SELECT * FROM cliente;

INSERT INTO categoria (nome) VALUES
('Café'),
('Bebidas Quentes'),
('Bebidas Geladas'),
('Doces'),
('Salgados'),
('Combo');

SELECT * FROM categoria;

INSERT INTO produto (nome, preco, ativo, id_categoria) VALUES
('Café', 5.99, TRUE, 1),
('Capuccino', 8.99, TRUE, 2),
('Chocolate Quente', 12.99, TRUE, 2),
('Chá Gelado', 10.99, TRUE, 3),
('Suco Natural', 9.99, TRUE, 3),
('Bolo de Chocolate', 15.99, TRUE, 4),
('Torta de Limão', 13.99, TRUE, 4),
('Esfirra', 10.99, TRUE, 5),
('Coxinha', 10.99, TRUE, 5),
('Combo Café da Manhã', 22.99, TRUE, 6)

SELECT * FROM produto;

INSERT INTO pedido (data_pedido, status_pedido, valor_total, id_cliente) VALUES
(NOW(),'ABERTO',0.00,1),
('2026-09-24 08:30:00','FINALIZADO',0.00,1),
(NOW(),'ABERTO',0.00,1);

SELECT * FROM pedido;

INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario, observacao)VALUES
(1, 1, 2, 5.99, "Entregar Quente"),
(2, 1, 2, 5.99, "Entregar Quente"),
(3, 5, 1, 5.99, "Deixar Macio"),
(4, 5, 2, 5.99, NULL),
(5, 6, 3, 5.99, NULL);

SELECT * FROM item_pedido;

INSERT INTO forma_pagamento (descricao) VALUES
('Dinheiro'),
('Débito'),
('Crédito'),
('PIX');

INSERT INTO pagamento (id_pedido, id_forma_pagamento, valor, data_pagamento) VALUES
(2, 2, 19.50, '2026-10-02 08:45:00'),
(2, 4, 0.00, NOW()),
(3, 4, 15.00, NULL);

-- EXEMPLO NOVO DE INSERÇÃO DE DADOS PORÉM COM RECUPERAÇÃO DO ÚLTIMO ID
INSERT INTO pedido (data_pedido, status_pedido, valor_total, id_cliente) VALUES (NOW(), 'ABERTO','0.00',1);
SET @pedido = LAST_INSERT_ID();
SELECT @pedido;

-- ATUALIZAÇÕES E MODIFICAÇÕES DE DADOS
-- EX01
UPDATE cliente
SET telefone = '19998888801'
WHERE id_cliente = 5;

-- EX02
UPDATE produto
SET preco = 1.00;
-- NUNCA REALIZAR UM UPDATE SEM --- WHERE😡

-- EX03
UPDATE cliente
SET telefone = '19997776601',
    cidade = 'Valinhos'
WHERE id_cliente = 6;

-- EX04: AJUSTES DE VALORES
UPDATE produto
SET preco = preco * 1.05
WHERE id_categoria = 1;

-- EX05: AJUSTES DE ATUALIZAÇÕES CONDICIONAIS
UPDATE produto
SET preco = CASE 
    WHEN preco < 10 THEN preco * 1.20 
    ELSE preco * 1.05
END
WHERE ativo = TRUE;

-- APAGAR DADOS DO BD

-- EX01: APAGAR CLIENTE ESPECÍFICO
DELETE FROM cliente
WHERE id_cliente = 6

-- EX02: APAGAR TODOS OS CLIENTES INATIVOS
DELETE FROM cliente
WHERE ativo = FALSE;

-- EX03: APAGAR TODOS OS CLIENTES DE UMA CIDADE ESPECÍFICA
DELETE FROM cliente
WHERE cidade = 'Valinhos';

-- EX04: EXCLUSÃO LÓGICA
UPDATE cliente
SET ativo = FALSE
WHERE id_cliente = 2