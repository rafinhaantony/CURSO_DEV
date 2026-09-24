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
