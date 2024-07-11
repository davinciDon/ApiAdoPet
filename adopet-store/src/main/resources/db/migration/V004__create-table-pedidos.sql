CREATE TABLE pedidos(
    id BIGINT NOT NULL ,
    usuario_id BIGINT NOT NULL,
    data DATE NOT NULL,

    PRIMARY KEY(id),
    CONSTRAINT PEDIDOS_FK_USUARIO FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE itens_pedidos(
    id BIGINT NOT NULL AUTO_INCREMENT,
    pedido_id BIGINT NOT NULL,
    produto_id BIGINT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,

    PRIMARY KEY(id),
    CONSTRAINT ITENS_PEDIDOS_FK_PRODUTO FOREIGN KEY(produto_id) REFERENCES produtos(id),
    CONSTRAINT ITENS_PEDIDOS_FK_PEDIDO FOREIGN KEY(pedido_id) REFERENCES pedidos(id)
);