--Cliente Teste
insert into usuarios (usr_id, usr_email, usr_senha, usr_tipo, usr_ativo)
values (1, 'userexample@gmail.com', 'eb99f5951ac9d0bab4c6806198e6a696c63321e3de4ab1cb87aadfd0399fc2a1170c3c98f3a1372a9ed5287aaa5e4bc85be18047e67e83770ace301b2d20cadf', 'CLIENTE', true);

insert into carrinhos(car_cli_usr_id) values
    (1);

insert into clientes (cli_usr_id, cli_car_id, cli_nome, cli_sobrenome, cli_cpf, cli_dt_nasc, cli_genero, cli_telefone_num, cli_telefone_ddd, cli_telefone_tp)
values (1,1,'Ruan', 'Campos', '876.160.110-12', '2000-06-14','Masculino','98909-1345','11','Celular');

insert into enderecos (end_cli_usr_id, end_tp, end_nome, end_tp_logradouro, end_logradouro, end_num, end_bairro, end_cep, end_cidade, end_estado, end_pais)
values (1,'COBRANCA_ENTREGA', 'Minha Casa', 'Rua', 'Onze', '5115', 'São Francisco', '29273-746', 'Vitória', 'Espírito Santo', 'Brasil');

--Administrador Teste
insert into usuarios (usr_email, usr_senha, usr_tipo, usr_ativo)
values ('admexample@gmail.com', 'eb99f5951ac9d0bab4c6806198e6a696c63321e3de4ab1cb87aadfd0399fc2a1170c3c98f3a1372a9ed5287aaa5e4bc85be18047e67e83770ace301b2d20cadf', 'ADMINISTRADOR', true);
--Teste123!

--Categorias
INSERT INTO categorias (ctg_nome) VALUES
    ('Nendoiroid'),
    ('Pelúcia'),
    ('Action figure'),
    ('Poster'),
    ('Chaveiro');

-- Produtos Status
INSERT INTO produtos_status(pst_tipo, pst_categoria) VALUES
    ('ATIVADO', 'DENTRO DE MERCADO'),
    ('INATIVADO', 'FORA DE MERCADO');

-- Grupos precificação
INSERT INTO grupos_precificacao (grp_nome, grp_margem_lucro) VALUES
    ('A', 0.3),
    ('B', 0.25),
    ('C', 0.2),
    ('D', 0.15),
    ('E', 0.1),
    ('F', 0.5);

--Fabricantes
INSERT INTO fabricantes (fab_nome) VALUES
    ('Vitae Aliquet Nec Ltd'),
    ('Ornare Sagittis Industries'),
    ('Sit Amet LLC'),
    ('Enim Suspendisse Corporation'),
    ('Dolor Nulla Corp.'),
    ('Dolor Associates'),
    ('Cras Sed Industries'),
    ('Etiam Limited'),
    ('Facilisis Vitae Orci Corp.'),
    ('Dictum Associates'),
    ('Lectus PC'),
    ('Sem Mollis Dui Corp.'),
    ('Magna Sed Corporation'),
    ('Lacinia Foundation'),
    ('Phasellus At PC'),
    ('Dictum Placerat Institute'),
    ('Pellentesque Eget Inc.'),
    ('Est Inc.'),
    ('Eget Magna Suspendisse Corp.'),
    ('Pede Ultrices Industries'),
    ('Nisl Consulting'),
    ('In Molestie Corp.'),
    ('Venenatis Limited'),
    ('Augue Id Corp.'),
    ('Et Associates'),
    ('Donec Egestas Aliquam PC'),
    ('Elit Dictum Inc.'),
    ('Quam Elementum LLC'),
    ('Purus In Consulting'),
    ('Pellentesque Massa Corporation'),
    ('Mollis Duis Institute'),
    ('Dapibus Ligula Foundation'),
    ('Gravida Molestie PC'),
    ('Sit Amet Metus Associates'),
    ('Volutpat Nulla LLC');

-- Produtos
INSERT INTO produtos (pro_fab_id, pro_grp_id, pro_pst_id, pro_nome, pro_valor_compra, pro_valor_venda, pro_quant_estoque, pro_limite_venda, pro_descricao, pro_material, pro_cod_barras, pro_link, pro_dt_entrada_estoque, pro_limitado) VALUES
    (30, 2, 1, 'Hatsune Miku Vocaloid', 90.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0010-Z', '/link', CURRENT_DATE, false),
    (5, 4, 1, 'Rei Neon Genesis Evangelion', 100.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0020-Z', '/link', CURRENT_DATE, false),
    (16, 5, 1, 'Levi Ackerman Shingeki no Kyojin', 180.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0030-Z', '/link', CURRENT_DATE, false),
    (16, 1, 1, 'Katsuki Bakugou Tiger My Hero Academia', 0.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0040-Z', '/link', CURRENT_DATE, false),
    (7, 4, 1, 'pro_nome', 0.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0050-Z', '/link', CURRENT_DATE, false),
    (25, 5, 1, 'pro_nome', 0.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0060-Z', '/link', CURRENT_DATE, false),
    (19, 3, 1, 'pro_nome', 0.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0070-Z', '/link', CURRENT_DATE, false),
    (19, 3, 1, 'pro_nome', 0.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0080-Z', '/link', CURRENT_DATE, false),
    (19, 3, 1, 'pro_nome', 0.0, 300., 100, 90, 'pro_descricao', 'pro_material', 'A-0090-Z', '/link', CURRENT_DATE, false);
