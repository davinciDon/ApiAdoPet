CREATE TABLE estoques(
    id BIGINT NOT NULL ,
    produto_id BIGINT NOT NULL,
    quantidade INT NOT NULL DEFAULT 0,

    PRIMARY KEY(id),
    CONSTRAINT ESTOQUES_FK_PRODUTO FOREIGN KEY(produto_id) REFERENCES produtos(id)
);