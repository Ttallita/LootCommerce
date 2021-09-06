CREATE TABLE usuarios (
    usr_id serial NOT NULL,
    usr_prim_nome varchar(15) NOT NULL,
	usr_ult_nome varchar(45) NOT NULL,
    usr_email varchar(255) NOT NULL,
    usr_senha varchar(20) NOT NULL,
    usr_tipo varchar(255) NOT NULL,
    usr_ativo boolean NOT NULL,

    PRIMARY KEY (usr_id)
);

CREATE TABLE clientes (
    cli_usr_id serial NOT NULL,
    cli_cpf varchar(14) NOT NULL,
    cli_dt_nasc date NOT NULL,
    cli_genero varchar(10) NOT NULL,
    cli_telefone_num varchar(10) NOT NULL,
    cli_telefone_ddd varchar(2) NOT NULL,
    cli_telefone_tp varchar(11) NOT NULL,
    cli_rank int,

    PRIMARY KEY (cli_usr_id),
    CONSTRAINT fk_cli_usr FOREIGN KEY (cli_usr_id) REFERENCES usuarios (usr_id)
);

CREATE TABLE cartoes(
	crt_id serial NOT NULL,
    crt_cli_usr_id int NOT NULL,
	crt_numero varchar(19) NOT NULL,
	crt_bandeira varchar(255) NOT NULL,
	crt_nome_impresso varchar(255) NOT NULL,
	crt_dt_validade date NOT NULL,
	crt_cod_seg varchar(3) NOT NULL,

    PRIMARY KEY (crt_id),
    CONSTRAINT fk_crt_cli FOREIGN KEY (crt_cli_usr_id) REFERENCES clientes (cli_usr_id)
);

CREATE TABLE cupons (
    cpm_id serial NOT NULL,
    cpm_tp varchar(11) NOT NULL,
    cpm_valor numeric(8, 2) NOT NULL,
    cpm_descricao varchar(255),

    PRIMARY KEY (cpm_id)
);

CREATE TABLE enderecos (
    end_id serial NOT NULL,
    end_cli_usr_id int NOT NULL,
    end_tp varchar(20) NOT NULL,
    end_nome varchar(255) NOT NULL,
    end_tp_logradouro varchar(255) NOT NULL,
    end_logradouro varchar(255) NOT NULL,
    end_num varchar(10) NOT NULL,
    end_bairro varchar(255) NOT NULL,
    end_cep varchar(9) NOT NULL,
	end_cidade varchar(255) NOT NULL,
	end_estado varchar(255) NOT NULL,
	end_pais varchar(255) NOT NULL,
	end_observacao varchar(255),

    PRIMARY KEY (end_id),
    CONSTRAINT fk_end_cli FOREIGN KEY (end_cli_usr_id) REFERENCES clientes (cli_usr_id)

);
CREATE TABLE categorias(
    ctg_id serial NOT NULL,
    ctg_nome varchar(255) NOT NULL,

    PRIMARY KEY (ctg_id)
);

CREATE TABLE fabricantes(
    fab_id serial NOT NULL,
    fab_nome varchar(255) NOT NULL,

    PRIMARY KEY (fab_id)
);

CREATE TABLE grupos_precificacao(
    grp_id serial NOT NULL,
    grp_nome varchar(255) NOT NULL,
    grp_porcentagem numeric(8,2) NOT NULL,

    PRIMARY KEY(grp_id)
);

CREATE TABLE produtos(
--Todo produto que for inativado manualmente deve ter uma justificativa e uma categoria de inativação associada.
	pro_id serial NOT NULL,
    pro_ctg_id int NOT NULL,
    pro_fab_id int NOT NULL,
    pro_grp_id int NOT NULL,
	pro_nome varchar(255) NOT NULL,
	pro_valor_compra numeric(8, 2) NOT NULL, --NOT NULL??????????
	pro_valor_venda numeric(8, 2) NOT NULL,
    pro_quant_estoque int NOT NULL,
	pro_descricao varchar(255) NOT NULL,
	pro_material varchar(255) NOT NULL,
    pro_cod_barras varchar(255) NOT NULL,
    pro_link varchar(255) NOT NULL,

    PRIMARY KEY (pro_id),
    CONSTRAINT fk_pro_fab FOREIGN KEY (pro_fab_id) REFERENCES fabricantes (fab_id),
    CONSTRAINT fk_pro_grp FOREIGN KEY (pro_grp_id) REFERENCES grupos_precificacao (grp_id)
);

CREATE TABLE categorias_produtos(
    ctp_pro_id int NOT NULL,
    ctp_ctg_id int NOT NULL,

    PRIMARY KEY (ctp_pro_id, ctp_ctg_id),
    CONSTRAINT fk_ctp_pro FOREIGN KEY (ctp_pro_id) REFERENCES produtos (pro_id),
    CONSTRAINT fk_ctp_ctg FOREIGN KEY (ctp_ctg_id) REFERENCES categorias (ctg_id)
);

CREATE TABLE categorias_inativacao(
    cti_id serial NOT NULL,
    cti_nome varchar(255),
    cti_justific varchar(255),

    PRIMARY KEY (cti_id)
);

CREATE TABLE categorias_ativacao(
    cta_id serial NOT NULL,
    cta_nome varchar(255),

    PRIMARY KEY (cta_id)
);


CREATE TABLE carrinhos(
    car_cli_id serial NOT NULL,
    car_entrega_end_id int NOT NULL,
    car_preco_total numeric(8, 2) NOT NULL,
    car_frete numeric(8, 2) NOT NULL,

    PRIMARY KEY (car_cli_id),
    CONSTRAINT fk_car_cli FOREIGN KEY (car_cli_id) REFERENCES clientes (cli_usr_id)
);

CREATE TABLE produtos_em_carrinho(
    prc_pro_id int NOT NULL,
    prc_car_cli_id int NOT NULL,
    prc_quant int NOT NULL,
    -- MARGEM DE LUCRO

    PRIMARY KEY (prc_pro_id, prc_car_cli_id),
    CONSTRAINT fk_prc_pro FOREIGN KEY (prc_pro_id) REFERENCES produtos (pro_id),
    CONSTRAINT fk_prc_car FOREIGN KEY (prc_car_cli_id) REFERENCES carrinhos (car_cli_id)
);

CREATE TABLE vendas (
	vnd_id serial NOT NULL,
    vnd_cli_usr_id int NOT NULL,
    vnd_crt_id int NOT NULL,
    vnd_entrega_end_id int NOT NULL,
	vnd_preco_total numeric(8,2) NOT NULL,
	vnd_frete numeric(8,2) NOT NULL,
	vnd_dt_compra timestamp NOT NULL,
    vnd_dt_envio timestamp,
    vnd_dt_entrega timestamp,
	vnd_pagamento_aprovado boolean NOT NULL,
	vnd_status_compra varchar(16) NOT NULL,

    PRIMARY KEY (vnd_id),
    CONSTRAINT fk_vnd_cli FOREIGN KEY (vnd_cli_usr_id) REFERENCES clientes (cli_usr_id),
    CONSTRAINT fk_vnd_crt FOREIGN KEY (vnd_crt_id) REFERENCES cartoes (crt_id),
    CONSTRAINT fk_vnd_end_entrega FOREIGN KEY (vnd_entrega_end_id) REFERENCES enderecos (end_id)
);

CREATE TABLE produtos_em_venda(
    prv_pro_id int NOT NULL,
    prv_vnd_id int NOT NULL,
    prv_quant int NOT NULL,

    PRIMARY KEY (prv_pro_id, prv_vnd_id),
    CONSTRAINT fk_prv_pro FOREIGN KEY (prv_pro_id) REFERENCES produtos (pro_id),
    CONSTRAINT fk_prv_vnd FOREIGN KEY (prv_vnd_id) REFERENCES vendas (vnd_id)
);