create table clientes(
	id serial primary key,
	nome varchar(255),
	cpf char(14),
	rg char(12),
	bairro varchar(255),
	complemento varchar(255),
	estado varchar(255),
	cidade varchar(255),
	numero int,
	logradouro varchar(255)
)