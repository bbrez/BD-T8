CREATE SCHEMA IF NOT EXISTS `TrabBD8` DEFAULT CHARACTER SET utf8;
USE `TrabBD8`;

CREATE TABLE IF NOT EXISTS `UnidadeFederacao` (
    `siglaUF` CHAR(2) NOT NULL,
    `nomeUF` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`siglaUF`)
);

CREATE TABLE IF NOT EXISTS `Cidade` (
    `idCidade` INT NOT NULL AUTO_INCREMENT,
    `nomeCidade` VARCHAR(45) NOT NULL,
    `UnidadeFederacao_siglaUF` CHAR(2) NOT NULL,
    PRIMARY KEY (`idCidade`),
    FOREIGN KEY (`UnidadeFederacao_siglaUF`) REFERENCES `UnidadeFederacao`(`siglaUF`)
);

CREATE TABLE IF NOT EXISTS `Bairro` (
    `idBairro` INT NOT NULL AUTO_INCREMENT,
    `nomeBairro` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`idBairro`)
);

CREATE TABLE IF NOT EXISTS `TipoLogradouro` (
    `siglaLogradouro` VARCHAR(10) NOT NULL,
    `nomeLogradouro` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`siglaLogradouro`)
);

CREATE TABLE IF NOT EXISTS `Logradouro` (
    `idLogradouro` INT NOT NULL AUTO_INCREMENT,
    `nomeLogradouro` VARCHAR(45) NOT NULL,
    `TipoLogradouro_siglaLogradouro` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`idLogradouro`),
    FOREIGN KEY (`TipoLogradouro_siglaLogradouro`) REFERENCES `TipoLogradouro`(`siglaLogradouro`)
);

CREATE TABLE IF NOT EXISTS `Endereco` (
    `idEndereco` INT NOT NULL AUTO_INCREMENT,
    `CEP` VARCHAR(8) NOT NULL,
    `Cidade_idCidade` INT NOT NULL,
    `Logradouro_idLogradouro` INT NOT NULL,
    `Bairro_idBairro` INT NOT NULL,
    PRIMARY KEY (`idEndereco`),
    FOREIGN KEY (`Cidade_idCidade`) REFERENCES `Cidade`(`idCidade`),
    FOREIGN KEY (`Logradouro_idLogradouro`) REFERENCES `Logradouro`(`idLogradouro`),
    FOREIGN KEY (`Bairro_idBairro`) REFERENCES `Bairro`(`idBairro`)
);

CREATE TABLE IF NOT EXISTS `Cliente` (
    `codCliente` INT NOT NULL AUTO_INCREMENT,
    `nomeCliente` VARCHAR(45) NOT NULL,
    `Endereco_idEndereco` INT NOT NULL,
    `nroCasa_endCliente` INT NOT NULL,
    `compl_endCliente` VARCHAR(45) NULL,
    PRIMARY KEY (`codCliente`, `Endereco_idEndereco`),
    FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `Endereco`(`idEndereco`)
);

CREATE TABLE IF NOT EXISTS `PedidoVenda` (
    `nroPedido` INT NOT NULL AUTO_INCREMENT,
    `dtPedido` DATE NOT NULL,
    `totalPedido` DOUBLE NOT NULL,
    `Cliente_codCLiente` INT NOT NULL,
    `Endereco_idEndereco` INT NOT NULL,
    `nroCasa_endEntrega` INT NOT NULL,
    `compl_endEntrega` VARCHAR(45) NULL,
    `PedidoVendacol` VARCHAR(45) NULL,
    PRIMARY KEY (`nroPedido`, `Endereco_idEndereco`),
    FOREIGN KEY (`Cliente_codCLiente`) REFERENCES `Cliente`(`codCliente`),
    FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `Endereco`(`idEndereco`)
 );

CREATE TABLE IF NOT EXISTS `Produto` (
    `codProduto` INT NOT NULL AUTO_INCREMENT,
    `nomeProduto` VARCHAR(45) NOT NULL,
    `precoProduto` DOUBLE NOT NULL,
    PRIMARY KEY (`codProduto`)
);

CREATE TABLE IF NOT EXISTS `ItemPedidoVenda` (
    `qtdeVenda` INT NOT NULL,
    `PrecoVenda` DOUBLE NOT NULL,
    `totalItemProduto` DOUBLE NOT NULL,
    `Produto_codProduto` INT NOT NULL,
    `PedidoVenda_nroPedido` INT NOT NULL,
    PRIMARY KEY (`Produto_codProduto`, `PedidoVenda_nroPedido`),
    FOREIGN KEY (`Produto_codProduto`) REFERENCES `Produto`(`codProduto`),
    FOREIGN KEY (`PedidoVenda_nroPedido`) REFERENCES `PedidoVenda`(`nroPedido`)
);

CREATE TABLE IF NOT EXISTS `UnidadeFederacao` (
    `siglaUF` CHAR(2) NOT NULL,
    `nomeUF` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`siglaUF`)
);

CREATE TABLE IF NOT EXISTS `Cidade` (
    `idCidade` INT NOT NULL AUTO_INCREMENT,
    `nomeCidade` VARCHAR(45) NOT NULL,
    `UnidadeFederacao_siglaUF` CHAR(2) NOT NULL,
    PRIMARY KEY (`idCidade`),
    FOREIGN KEY (`UnidadeFederacao_siglaUF`) REFERENCES `UnidadeFederacao`(`siglaUF`)
);

CREATE TABLE IF NOT EXISTS `Bairro` (
    `idBairro` INT NOT NULL AUTO_INCREMENT,
    `nomeBairro` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`idBairro`)
);

CREATE TABLE IF NOT EXISTS `TipoLogradouro` (
    `siglaLogradouro` VARCHAR(10) NOT NULL,
    `nomeLogradouro` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`siglaLogradouro`)
);

CREATE TABLE IF NOT EXISTS `Logradouro` (
    `idLogradouro` INT NOT NULL AUTO_INCREMENT,
    `nomeLogradouro` VARCHAR(45) NOT NULL,
    `TipoLogradouro_siglaLogradouro` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`idLogradouro`),
    FOREIGN KEY (`TipoLogradouro_siglaLogradouro`) REFERENCES `TipoLogradouro`(`siglaLogradouro`)
);

CREATE TABLE IF NOT EXISTS `Endereco` (
    `idEndereco` INT NOT NULL AUTO_INCREMENT,
    `CEP` VARCHAR(8) NOT NULL,
    `Cidade_idCidade` INT NOT NULL,
    `Logradouro_idLogradouro` INT NOT NULL,
    `Bairro_idBairro` INT NOT NULL,
    PRIMARY KEY (`idEndereco`),
    FOREIGN KEY (`Cidade_idCidade`) REFERENCES `Cidade`(`idCidade`),
    FOREIGN KEY (`Logradouro_idLogradouro`) REFERENCES `Logradouro`(`idLogradouro`),
    FOREIGN KEY (`Bairro_idBairro`) REFERENCES `Bairro`(`idBairro`)
);

CREATE TABLE IF NOT EXISTS `Cliente` (
    `codCliente` INT NOT NULL AUTO_INCREMENT,
    `nomeCliente` VARCHAR(45) NOT NULL,
    `Endereco_idEndereco` INT NOT NULL,
    `nroCasa_endCliente` INT NOT NULL,
    `compl_endCliente` VARCHAR(45) NULL,
    PRIMARY KEY (`codCliente`, `Endereco_idEndereco`),
    FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `Endereco`(`idEndereco`)
);

CREATE TABLE IF NOT EXISTS `PedidoVenda` (
    `nroPedido` INT NOT NULL AUTO_INCREMENT,
    `dtPedido` DATE NOT NULL,
    `totalPedido` DOUBLE NOT NULL,
    `Cliente_codCLiente` INT NOT NULL,
    `Endereco_idEndereco` INT NOT NULL,
    `nroCasa_endEntrega` INT NOT NULL,
    `compl_endEntrega` VARCHAR(45) NULL,
    `PedidoVendacol` VARCHAR(45) NULL,
    PRIMARY KEY (`nroPedido`, `Endereco_idEndereco`),
    FOREIGN KEY (`Cliente_codCLiente`) REFERENCES `Cliente`(`codCliente`),
    FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `Endereco`(`idEndereco`)
 );

CREATE TABLE IF NOT EXISTS `Produto` (
    `codProduto` INT NOT NULL AUTO_INCREMENT,
    `nomeProduto` VARCHAR(45) NOT NULL,
    `precoProduto` DOUBLE NOT NULL,
    PRIMARY KEY (`codProduto`)
);

CREATE TABLE IF NOT EXISTS `ItemPedidoVenda` (
    `qtdeVenda` INT NOT NULL,
    `PrecoVenda` DOUBLE NOT NULL,
    `totalItemProduto` DOUBLE NOT NULL,
    `Produto_codProduto` INT NOT NULL,
    `PedidoVenda_nroPedido` INT NOT NULL,
    PRIMARY KEY (`Produto_codProduto`, `PedidoVenda_nroPedido`),
    FOREIGN KEY (`Produto_codProduto`) REFERENCES `Produto`(`codProduto`),
    FOREIGN KEY (`PedidoVenda_nroPedido`) REFERENCES `PedidoVenda`(`nroPedido`)
)