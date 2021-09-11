--Cliente Teste
insert into usuarios (usr_email, usr_senha, usr_tipo, usr_ativo)
values ('userexample@gmail.com', 'Teste123!', 'CLIENTE', true);

insert into clientes (cli_usr_id, cli_prim_nome, cli_ult_nome, cli_cpf, cli_dt_nasc, cli_genero, cli_telefone_num, cli_telefone_ddd, cli_telefone_tp)
values (4,'Ruan', 'Campos', '876.160.110-12', '2000-06-14','Masculino','98909-1345','11','Celular');

insert into enderecos (end_cli_usr_id, end_tp, end_nome, end_tp_logradouro, end_logradouro, end_num, end_bairro, end_cep, end_cidade, end_estado, end_pais)
values (4,'COBRANCA_ENTREGA', 'Minha Casa', 'Rua', 'Onze', '5115', 'São Francisco', '29273-746', 'Vitória', 'Espírito Santo', 'Brasil')
