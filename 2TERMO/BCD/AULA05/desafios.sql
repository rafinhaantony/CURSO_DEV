-- DESAFIOS DML
CREATE DATABASE IF NOT EXISTS SMARTCOFFEE_DML_RAFAEL;
USE SMARTCOFFEE_DML_RAFAEL;

-- PARTE A - INSERT

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

-- 4: Insira um cliente sem telefone e observe o uso do NULL
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
("Rodrigo Santos", "rodrigo@gmail.com", NULL, "Campinas", TRUE);

-- 5. Crie um novo pedido para um dos clientes cadastrados.
INSERT INTO pedido (data_pedido, status_pedido, valor_total, id_cliente) VALUES
('2026-10-02 13:15:00', 'FINALIZADO', 20.99, 2);

-- 6. Use LAST_INSERT_ID() para guardar o id do pedido em @pedido_atividade e insira pelo menos dois itens nesse pedido.
INSERT INTO pedido (data_pedido, status_pedido, valor_total, id_cliente) VALUES
('2026-11-04 12:25:00', 'FINALIZADO', 25.99, 3),
('2026-11-05 13:55:00', 'FINALIZADO', 35.99, 1);

SET @pedido = LAST_INSERT_ID();
INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario, observacao) VALUES
(@pedido, 3, 2, 15.00, "Entregar Quente"),
(@pedido, 5, 3, 30.00, "Entregar Quente");

-- PARTE B - UPDATE

-- 7. Corrija o telefone de um dos clientes criados.
-- SELECT de validação:
-- UPDATE:
-- SELECT final:
UPDATE cliente
SET telefone = "19999998888"
WHERE id_cliente = 2;

-- 8. Altere cidade e telefone de outro cliente em um único UPDATE
UPDATE cliente
SET telefone = "19999998887",
cidade = "Campinas"
WHERE id_cliente = 5;

-- 9. Aumente em 8% o preço dos produtos da categoria 'Especiais da Casa'
UPDATE produto
SET preco = produto * 1.08;

-- 10. Altere o status do pedido criado para 'PREPARANDO'
UPDATE pedido
SET status_pedido = "PREPARANDO"
WHERE id_pedido = 2;

-- 12. Escolha um dos produtos criados e faça uma exclusão lógica (ativo = FALSE)
UPDATE produto
SET status_produto = FALSE
WHERE id_produto = 4

-- PARTE C - DELETE

-- 13. Crie um cliente de teste sem pedidos. Depois localize e exclua apenas esse cliente
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
("Lucas Santos", "lucas@gmail.com", "19998887766", "Limeira", TRUE);
DELETE FROM cliente
WHERE nome = "Lucas Santos";

-- 14. Tente excluir um cliente da base original que possua pedidos.
--     Deixe o DELETE comentado após o teste e descreva o erro abaixo.
-- Resultado observado:

-- DELETE FROM cliente
-- WHERE id_cliente = 1;

-- ERRO: Cannot delete or update a parent row: a foreign key constraint fails (`smartcoffee_dml_rafael`.`pedido`, CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`id_cliente`)REFERENCES `cliente` (`id_cliente`))

-- 15. Explique em comentário por que a FK bloqueou a exclusão.
-- Resposta: Não foi possivel excluir o cliente , pois ele possui uma chave entrageira relacionando ele com um item da tabela pedidos

-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a

INSERT INTO categoria (nome) VALUES
("Excluir Depois");

DELETE FROM categoria WHERE
nome = "Excluir Depois";

-- PARTE D - INTEGRIDADE E ERROS CONTROLADOS
-- Execute uma tentativa por vez. Depois deixe o comando problemático comentado.

-- 17. Tente inserir um produto com id_categoria = 9999.
-- Qual restrição impediu a operação?
INSERT INTO produto (nome, preco, ativo, id_categoria) VALUES
("Café Espresso", 7.99, TRUE, 9999);
-- Deu erro pois o programa não encontrou uma chave estrangeira id_categoria com valor 9999 na tabela categoria