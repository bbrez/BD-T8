-- Dados para tabela `UnidadeFederacao`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `UnidadeFederacao` (`siglaUF`, `nomeUF`) VALUES ('PR', 'Parana');
INSERT INTO `UnidadeFederacao` (`siglaUF`, `nomeUF`) VALUES ('SC', 'Santa Catarina');
INSERT INTO `UnidadeFederacao` (`siglaUF`, `nomeUF`) VALUES ('RS', 'Rio Grande do Sul');

COMMIT;

-- Dados para tabela `Cidade`
START TRANSACTION;
USE `TrabBD8`;

INSERT INTO `Cidade` (`idCidade`, `nomeCidade`, `UnidadeFederacao_siglaUF`) VALUES (1, 'Foz do Iguaçu', 'PR');
INSERT INTO `Cidade` (`idCidade`, `nomeCidade`, `UnidadeFederacao_siglaUF`) VALUES (2, 'Curitiba', 'PR');
INSERT INTO `Cidade` (`idCidade`, `nomeCidade`, `UnidadeFederacao_siglaUF`) VALUES (3, 'Blumenau', 'SC');
INSERT INTO `Cidade` (`idCidade`, `nomeCidade`, `UnidadeFederacao_siglaUF`) VALUES (4, 'Florianopolis', 'SC');
INSERT INTO `Cidade` (`idCidade`, `nomeCidade`, `UnidadeFederacao_siglaUF`) VALUES (5, 'Porto Alegre', 'RS');

COMMIT;

-- Dados para tabela `Bairro`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `Bairro` (`idBairro`, `nomeBairro`) VALUES (1, 'Vila Itajuba');
INSERT INTO `Bairro` (`idBairro`, `nomeBairro`) VALUES (2, 'Centro');
INSERT INTO `Bairro` (`idBairro`, `nomeBairro`) VALUES (3, 'Charrua');
INSERT INTO `Bairro` (`idBairro`, `nomeBairro`) VALUES (4, 'Boa Vista');
INSERT INTO `Bairro` (`idBairro`, `nomeBairro`) VALUES (5, 'Vila A');

COMMIT;


-- Dados para tabela `TipoLogradouro`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `TipoLogradouro` (`siglaLogradouro`, `nomeLogradouro`) VALUES ('R', 'Rua');
INSERT INTO `TipoLogradouro` (`siglaLogradouro`, `nomeLogradouro`) VALUES ('Av', 'Avenida');
INSERT INTO `TipoLogradouro` (`siglaLogradouro`, `nomeLogradouro`) VALUES ('Pq', 'Parque');

COMMIT;


-- Dados para tabela `Logradouro`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `Logradouro` (`idLogradouro`, `nomeLogradouro`, `TipoLogradouro_siglaLogradouro`) VALUES (1, 'Gilberto Rolon', 'R');
INSERT INTO `Logradouro` (`idLogradouro`, `nomeLogradouro`, `TipoLogradouro_siglaLogradouro`) VALUES (2, 'Brasil', 'Av');
INSERT INTO `Logradouro` (`idLogradouro`, `nomeLogradouro`, `TipoLogradouro_siglaLogradouro`) VALUES (3, 'Presidente Vargas', 'Av');
INSERT INTO `Logradouro` (`idLogradouro`, `nomeLogradouro`, `TipoLogradouro_siglaLogradouro`) VALUES (4, 'Jose Montaury', 'R');
INSERT INTO `Logradouro` (`idLogradouro`, `nomeLogradouro`, `TipoLogradouro_siglaLogradouro`) VALUES (5, 'Silva Jardim', 'Av');

COMMIT;


-- Dados para tabela `Endereco`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `Endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Logradouro_idLogradouro`, `Bairro_idBairro`) VALUES (1, '85852180', 1, 1, 1);
INSERT INTO `Endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Logradouro_idLogradouro`, `Bairro_idBairro`) VALUES (2, '23058421', 2, 5, 4);
INSERT INTO `Endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Logradouro_idLogradouro`, `Bairro_idBairro`) VALUES (3, '56322768', 5, 3, 3);
INSERT INTO `Endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Logradouro_idLogradouro`, `Bairro_idBairro`) VALUES (4, '47865687', 1, 2, 2);
INSERT INTO `Endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Logradouro_idLogradouro`, `Bairro_idBairro`) VALUES (5, '72135952', 4, 4, 2);
INSERT INTO `Endereco` (`idEndereco`, `CEP`, `Cidade_idCidade`, `Logradouro_idLogradouro`, `Bairro_idBairro`) VALUES (6, '35479287', 3, 2, 2);

COMMIT;


-- Dados para tabela `Cliente`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `Cliente` (`codCliente`, `nomeCliente`, `Endereco_idEndereco`, `nroCasa_endCliente`, `compl_endCliente`) VALUES (1, 'Leonardo Benitez de Freitas', 1, 137, NULL);
INSERT INTO `Cliente` (`codCliente`, `nomeCliente`, `Endereco_idEndereco`, `nroCasa_endCliente`, `compl_endCliente`) VALUES (2, 'Bruno de Castro Brezolin', 3, 1130, 'Apartamento 103');
INSERT INTO `Cliente` (`codCliente`, `nomeCliente`, `Endereco_idEndereco`, `nroCasa_endCliente`, `compl_endCliente`) VALUES (3, 'Victor Hugo Marques Turnes', 5, 423, NULL);

COMMIT;


-- Dados para tabela `PedidoVenda`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `PedidoVenda` (`nroPedido`, `dtPedido`, `totalPedido`, `Cliente_codCliente`, `Endereco_idEndereco`, `nroCasa_endEntrega`, `compl_endEntrega`, `PedidoVendacol`) VALUES (1, '2021-02-10', 26.00, 1, 1, 137, NULL, NULL);
INSERT INTO `PedidoVenda` (`nroPedido`, `dtPedido`, `totalPedido`, `Cliente_codCliente`, `Endereco_idEndereco`, `nroCasa_endEntrega`, `compl_endEntrega`, `PedidoVendacol`) VALUES (2, '2021-03-25', 37.50, 2, 2, 3251, 'Apartamento 305', NULL);
INSERT INTO `PedidoVenda` (`nroPedido`, `dtPedido`, `totalPedido`, `Cliente_codCliente`, `Endereco_idEndereco`, `nroCasa_endEntrega`, `compl_endEntrega`, `PedidoVendacol`) VALUES (3, '2021-04-07', 27.00, 3, 4, 2041, NULL, NULL);

COMMIT;

-- Dados para tabela `Produto`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `Produto` (`codProduto`, `nomeProduto`, `precoProduto`, `qtdeEstoque`) VALUES (1, 'Arroz', 2.50, 100);
INSERT INTO `Produto` (`codProduto`, `nomeProduto`, `precoProduto`, `qtdeEstoque`) VALUES (2, 'Feijao', 3.00, 200);
INSERT INTO `Produto` (`codProduto`, `nomeProduto`, `precoProduto`, `qtdeEstoque`) VALUES (3, 'Coca Cola 2 Litros', 7.50, 1);
INSERT INTO `Produto` (`codProduto`, `nomeProduto`, `precoProduto`, `qtdeEstoque`) VALUES (4, 'Macarrao', 3.00, 300);
INSERT INTO `Produto` (`codProduto`, `nomeProduto`, `precoProduto`, `qtdeEstoque`) VALUES (5, 'Azeite de Oliva', 15.00, 100);
INSERT INTO `Produto` (`codProduto`, `nomeProduto`, `precoProduto`, `qtdeEstoque`) VALUES (6, 'Papel Higienico 6 Unidades', 20.00, 150);

COMMIT;


-- Dados para tabela `ItemPedidoVenda`
START TRANSACTION;

USE `TrabBD8`;
INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (2, 4.00, 8.00, 1, 1);
INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (3, 5.00, 15.00, 2, 2);
INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (5, 4.50, 22.50, 4, 2);
INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (1, 27.00, 27.00, 6, 3);
INSERT INTO `ItemPedidoVenda` (`qtdeVenda`, `precoVenda`, `totalItemProduto`, `Produto_codProduto`, `PedidoVenda_nroPedido`) VALUES (2, 9.00, 18.00, 3, 1);

COMMIT;