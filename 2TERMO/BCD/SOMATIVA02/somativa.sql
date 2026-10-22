-- Active: 1788435085055@@127.0.0.1@3306@biblioteca_som2
-- FASE 1 — DDL: CRIAÇÃO E ESTRUTURA

CREATE DATABASE biblioteca_som2;
USE biblioteca_som2;

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(120) NOT NULL,
    isbn CHAR(13) NOT NULL UNIQUE,
    ano_publicacao INT,
    quantidade_disponivel INT DEFAULT 0,
    id_categoria INT,

    CONSTRAINT fk_categoria_livro FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
    CONSTRAINT quantidade CHECK (quantidade_disponivel >= 0)
);

CREATE TABLE IF NOT EXISTS emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_prevista DATE NOT NULL,
    data_devolucao DATE,
    id_livro INT,
    id_usuario INT,
    status_emprestimo VARCHAR(20) DEFAULT 'ABERTO',
    
    CONSTRAINT fk_livro_emprestimo FOREIGN KEY (id_livro) REFERENCES livro (id_livro),    
    CONSTRAINT fk_usuario_emprestimo FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

CREATE TABLE IF NOT EXISTS pedido_encomenda (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_livro_pedido INT NOT NULL,
    id_usuario INT NOT NULL,

    CONSTRAINT fk_usuario_pedido FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    CONSTRAINT fk_livro_pedido FOREIGN KEY (id_livro_pedido) REFERENCES livro (id_livro)
);

ALTER TABLE livro
ADD COLUMN editora VARCHAR(100);

-- FASE 2 — DML: MANIPULAÇÃO DE DADOS

INSERT categoria (nome_categoria) VALUES
('Romance'),
('Fabula'),
('Fantasia'),
('Ficção'),
('Comédia'),
('Drama');

INSERT INTO usuario (nome, email, telefone, ativo) VALUES
('Rafael Antony', 'rafael.antony@email.com', 19999999999, TRUE),
('Mateus Oliveira', 'mateus.oliveira@email.com', 19999999998, TRUE),
('Tiago Vieira', 'tiago.vieira@email.com', 19999999997, TRUE),
('Fabio Marcelo', 'fabio.marcelo@email.com', NULL, TRUE);

SELECT * FROM usuario;

INSERT INTO livro (titulo, autor, isbn, ano_publicacao, quantidade_disponivel, editora, id_categoria) VALUES
('O Alquimista', 'Paulo Coelho', '978-8575427583', 1988, 15, 'Sextante', 'Romance'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', '978-8520937679', 1943, 18, 'HarperCollins Brasil', 'Fabula'),
('Harry Potter e a Pedra Filosofal', 'J.K Rowling', '978-8532530783', 1997, 50, 'Rocco', 'Fantasia'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J. R. R. Tolkien', '978-8595084759', 1954, 17, 'HarperCollins Brasil', 'Ficção'),
('Diário de um Banana', 'Jeff Kinney', '978-8561246013', 2007, 40, 'V&R Editoras', 'Comédia'),
('A Culpa é das Estrelas', 'John Green', '978-8580572261', 2012, 25, 'Intríseca', 'Drama');

SELECT * FROM livro;

-- Cadastre pelo menos 3 empréstimos ABERTOS para usuários e livros existentes.
INSERT INTO emprestimo (data_emprestimo, data_prevista, data_devolucao, id_livro, id_usuario, status_emprestimo) VALUES
('2026-04-11 13:51:32', '2026-05-05', '2026-05-05', 1, 1, 'ABERTO'),
('2026-04-18 16:48:41', '2026-05-18', '2026-05-18', 2, 3, 'ABERTO'),
('2026-04-22 10:35:55', '2026-05-11', '2026-05-11', 4, 2, 'ABERTO');

SELECT * FROM emprestimo;

-- Localize um usuário com SELECT e depois altere seu telefone com UPDATE.
SELECT * FROM usuario
WHERE id_usuario = 2;

UPDATE usuario
SET telefone = 19999999996
WHERE id_usuario = 4

-- Acrescente 2 exemplares a todos os livros publicados a partir de 2020.
UPDATE livro
SET quantidade_disponivel = quantidade_disponivel + 2
WHERE ano_publicacao > 2010;

SELECT * FROM livro;

-- Crie e exclua um usuário sem empréstimos. Depois tente excluir um usuário que possua empréstimo e explique o resultado.
INSERT INTO usuario (nome, email, telefone, ativo) VALUES
('José Carlos', 'jose.carlos@email.com', 19999999995, TRUE);

DELETE FROM usuario
WHERE nome = 'José Carlos'

DELETE FROM usuario
WHERE id_usuario = 3

-- FASE 3 — DQL: CONSULTAS E ANÁLISE

-- Liste título, autor e quantidade disponível de todos os livros.
SELECT titulo, autor, quantidade_disponivel
FROM livro;

-- Liste livros com quantidade maior que 2, do maior para o menor estoque.
SELECT titulo, autor, quantidade_disponivel
FROM livro
WHERE quantidade_disponivel > 2;

-- Pesquise livros cujo título contenha uma palavra escolhida por você.
SELECT titulo, autor, quantidade_disponivel
FROM livro
WHERE titulo LIKE '%de%';

-- Liste livros publicados entre 2015 e 2025.
SELECT titulo, autor, quantidade_disponivel
FROM livro
WHERE ano_publicacao BETWEEN 2015 ADD 2025;

-- Mostre COUNT, SUM, AVG, MIN e MAX sobre a quantidade disponível.
SELECT COUNT(quantidade_disponivel) AS quantidade_livros,
SUM(quantidade_disponivel) AS soma_quantidades,
ROUND(AVG(quantidade_disponivel)) AS media_quantidades,
MIN(quantidade_disponivel) AS menor_valor,
MAX(quantidade_disponivel) AS maior_valor
FROM livro;

-- Liste ID do empréstimo, usuário, livro, data e status.
SELECT EM.id_emprestimo, US.nome AS usuario, LI.titulo AS livro, EM.data_emprestimo AS data, EM.status_emprestimo AS status
FROM emprestimo AS EM
INNER JOIN usuario AS US
ON US.id_usuario = EM.id_usuario
INNER JOIN livro AS LI
ON LI.id_livro = EM.id_livro;

-- Mostre apenas os empréstimos ABERTOS.
SELECT EM.id_emprestimo, US.nome AS usuario, LI.titulo AS livro, EM.data_emprestimo AS data, EM.status_emprestimo AS status
FROM emprestimo AS EM
INNER JOIN usuario AS US
ON US.id_usuario = EM.id_usuario
INNER JOIN livro AS LI
ON LI.id_livro = EM.id_livro
WHERE EM.status_emprestimo = 'ABERTO';

-- Mostre cada usuário e sua quantidade de empréstimos, do maior para o menor.
SELECT US.nome, US.email, US.telefone, COUNT(*) AS quantidade_emprestimos
FROM emprestimo AS EM
INNER JOIN usuario AS US
ON US.id_usuario = EM.id_usuario
GROUP BY EM.id_usuario
ORDER BY quantidade_emprestimos DESC;

-- Liste todos os usuários, inclusive os que nunca fizeram empréstimo, com a quantidade de empréstimos de cada um.
SELECT US.nome, US.email, US.telefone, COUNT(*) AS quantidade_emprestimos
FROM emprestimo AS EM
INNER JOIN usuario AS US
ON US.id_usuario = EM.id_usuario
GROUP BY EM.id_usuario
ORDER BY quantidade_emprestimos DESC;

-- FASE 4 — TCL, TRANSAÇÕES E INTEGRIDADE

-- Transação de empréstimo
START TRANSACTION;

INSERT INTO emprestimo (data_emprestimo, data_prevista, data_devolucao, id_livro, id_usuario, status_emprestimo) VALUES
('2026-04-11 13:51:32', '2026-05-05', '2026-05-05', 1, 1, 'ABERTO');

UPDATE livro
SET quantidade_disponivel = quantidade_disponivel = 1
WHERE id_livro = 15;

SELECT * FROM livro
WHERE id_livro = 1;

COMMIT;

-- ROLLBACK
START TRANSACTION;

UPDATE livro
SET quantidade_disponivel = 20
WHERE id_livro = 3;

SELECT * FROM livro
WHERE id_livro = 3;

ROLLBACK;

SELECT * FROM livro
WHERE id_livro = 3;

-- SAVEPOINT
START TRANSACTION;

UPDATE livro
SET quantidade_disponivel = 12
WHERE id_livro = 2;

SAVEPOINT modificacao01;

UPDATE livro
SET quantidade_disponivel = 15
WHERE id_livro = 3

SELECT * FROM livro
WHERE id_livro = 3;

ROLLBACK TO SAVEPOINT modificacao01;

COMMIT;