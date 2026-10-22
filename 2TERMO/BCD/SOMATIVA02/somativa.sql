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

INSERT INTO usuario (nome, email, telefone, ativo) VALUES
('Rafael Antony', 'rafael.antony@email.com', 19999999999, TRUE),
('Mateus Oliveira', 'mateus.oliveira@email.com', 19999999998, TRUE),
('Tiago Vieira', 'tiago.vieira@email.com', 19999999997, TRUE),
('Fabio Marcelo', 'fabio.marcelo@email.com', NULL, TRUE);

SELECT * FROM usuario;

INSERT INTO livro (titulo, autor, isbn, ano_publicacao, quantidade_disponivel, editora) VALUES
('O Alquimista', 'Paulo Coelho', '978-8575427583', 1988, 15, 'Sextante'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', '978-8520937679', 1943, 18, 'HarperCollins Brasil'),
('Harry Potter e a Pedra Filosofal', 'J.K Rowling', '978-8532530783', 1997, 50, 'Rocco'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J. R. R. Tolkien', '978-8595084759', 1954, 17, 'HarperCollins Brasil'),
('Diário de um Banana', 'Jeff Kinney', '978-8561246013', 2007, 40, 'V&R Editoras'),
('A Culpa é das Estrelas', 'John Green', '978-8580572261', 2012, 25, 'Intríseca');

SELECT * FROM livro;

-- Cadastre pelo menos 3 empréstimos ABERTOS para usuários e livros existentes.
INSERT INTO emprestimo (data_emprestimo, data_prevista, data_devolucao, id_livro, id_usuario, status_emprestimo) VALUES
('2026-04-11 13:51:32', '2026-05-05', '2026-05-05', 1, 1, 'ABERTO'),
('2026-04-18 16:48:41', '2026-05-18', '2026-05-18', 2, 5, 'ABERTO'),
('2026-04-22 10:35:55', '2026-05-11', '2026-05-11', 4, 2, 'ABERTO');
