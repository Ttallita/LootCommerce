CREATE TABLE usuarios (
    usr_id serial NOT NULL,
    usr_prim_nome varchar(15) NOT NULL,
	usr_ult_nome varchar(45) NOT NULL,
    usr_email varchar(255) NOT NULL,
    usr_senha varchar(255) NOT NULL,
    usr_tipo varchar(255) NOT NULL

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

    PRIMARY KEY (cli_usr_id)
);

CREATE TABLE cupons (
    cpm_id serial NOT NULL,
    cpm_tp varchar(11) NOT NULl,
    cpm_descricao varchar(255),
    cpm_valor numeric(8, 2) NOT NULl,

    PRIMARY KEY (cpm_id)
);


CREATE TABLE cartoes(
	crt_id serial NOT NULL,
    crt_cli_usr_id int NOT NULL,
	crt_numero varchar(19) NOT NULL,
	crt_dt_validade date NOT NULL,
	crt_cod_seg varchar(3) NOT NULL,

    PRIMARY KEY (crt_id),
    CONSTRAINT fk_crt_cli FOREIGN KEY (crt_cli_usr_id) REFERENCES clientes (cli_usr_id)
);


CREATE TABLE enderecos (
    end_id serial NOT NULL,
    end_tp varchar(8) NOT NULL,
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

    PRIMARY KEY (end_id)
);


CREATE TABLE enderecos_cliente(
    ecl_id serial NOT NULL,
    ecl_end_id int NOT NULL,
    ecl_cli_id int NOT NULL,

    PRIMARY KEY (ecl_id),
    FOREIGN KEY (ecl_end_id) REFERENCES enderecos (end_id),
    FOREIGN KEY (ecl_cli_id) REFERENCES clientes (cli_usr_id)
);

CREATE TABLE cupons_cliente(
    ccl_id serial NOT NULL,
    ccl_cpm_id int NOT NULL,
    ccl_cli_id int NOT NULL,

    PRIMARY KEY (ccl_id),
    FOREIGN KEY (ccl_cpm_id) REFERENCES cupons (cpm_id),
    FOREIGN KEY (ccl_cli_id) REFERENCES clientes (cli_usr_id)
);

CREATE TABLE produtos(
	/*pro_id
	pro_nome
	pro_preço
	pro_descrição
	pro_fabricante
	pro_material
	pro_categoria
	pro_avaliação
	pro_link*/
);


CREATE TABLE carrinhos(
    car_id,
	/*car_preco_total
	car_quant_por item
	car_cupom*/
);

CREATE TABLE estoques (
    est_id
    /*
    est_pro_id
    est_quant
    est_categoria
    est_fabricante
    */
);

CREATE TABLE vendas (
/*
	id
	quantidade
	preço total
	frete
	data
	hora
	itens
	data envio
	data de entrega
	forma de pagamento
	status de pagamento
	status de envio
*/
);