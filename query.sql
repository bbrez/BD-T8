truncate PedidoVenda;
truncate ItemPedidoVenda;

SELECT nomeProduto, qtdeEstoque from Produto;

START TRANSACTION;
INSERT INTO `PedidoVenda` (`nroPedido`, `dtPedido`, `totalPedido`, `Cliente_codCliente`, `Endereco_idEndereco`, `nroCasa_endEntrega`, `compl_endEntrega`, `PedidoVendacol`) VALUES (1, '2021-02-10', 26.00, 1, 1, 137, NULL, NULL);

INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (2, 4.00, 8.00, 1, 1);
UPDATE Produto SET qtdeEstoque = qtdeEstoque - 2 WHERE codProduto = 1;

INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (2, 9.00, 18.00, 3, 1);
UPDATE Produto SET qtdeEstoque = qtdeEstoque - 2 WHERE codProduto = 3;
SELECT nomeProduto, qtdeEstoque from Produto;
SELECT nomeProduto, qtdeEstoque AS 'Estoque Restante',  'Estoque negativo,  executando cancelamento da operacao' AS 'Erro' FROM Produto WHERE codProduto = 3;
ROLLBACK;


START TRANSACTION;
INSERT INTO `PedidoVenda` (`nroPedido`, `dtPedido`, `totalPedido`, `Cliente_codCliente`, `Endereco_idEndereco`, `nroCasa_endEntrega`, `compl_endEntrega`, `PedidoVendacol`) VALUES (2, '2021-03-25', 37.50, 2, 2, 3251, 'Apartamento 305', NULL);

INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (5, 4.50, 22.50, 4, 2);
UPDATE Produto SET qtdeEstoque = qtdeEstoque - 5 WHERE codProduto = 4;

INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (3, 5.00, 15.00, 2, 2);
UPDATE Produto SET qtdeEstoque = qtdeEstoque - 3 WHERE codProduto = 2;

COMMIT;

SELECT nomeProduto, qtdeEstoque from Produto;
