truncate ItemPedidoVenda;


SELECT * FROM Produto;

START TRANSACTION;
INSERT INTO `TrabBD8`.`ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (2, 9.00, 18.00, 3, 1);
UPDATE Produto SET qtdeEstoque = qtdeEstoque - 2 WHERE codProduto = 3;
SELECT nomeProduto, qtdeEstoque AS 'Estoque Restante',  'Estoque negativo,  executando cancelamento da operacao' AS 'Erro' FROM Produto WHERE codProduto = 3;
ROLLBACK;

START TRANSACTION;
INSERT INTO `TrabBD8`.`ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (2, 9.00, 18.00, 3, 1);
INSERT INTO `TrabBD8`.`ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (5, 4.50, 22.50, 4, 2);
UPDATE Produto SET qtdeEstoque = qtdeEstoque - 5 WHERE codProduto = 4;
SELECT * from Produto where codProduto=4;
COMMIT;

SELECT * FROM Produto;