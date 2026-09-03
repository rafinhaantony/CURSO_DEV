create database if not exists oficina_rafael;
use oficina_rafael;

create table clientes (
ID_Cliente int auto_increment primary key,
Nome_Cliente varchar(60) not null,
CPF varchar(14) not null unique,
Telefone_Cliente varchar(20),
Email_Cliente varchar(200),
Endereco_Cliente varchar(200) not null
);

create table veiculos (
ID_Veiculo int auto_increment primary key,
Placa_Veiculo varchar(10) not null unique,
Tempo_na_Oficina timestamp default current_timestamp,
Dono_Veiculo varchar(60) not null unique,
Cor_Veiculo varchar(20),
Tipo_Veiculo enum('Carro', 'Moto', 'Caminhao') default 'Carro'
);

create table marcas (
ID_Marca int auto_increment primary key,
Origem_Marca varchar(30),
Tipo_Marca varchar(30),
Descricao varchar (200),
Data_Criacao timestamp default current_timestamp,
Nome_Marca varchar(30) not null unique
);

create table modelos (
ID_Modelo int auto_increment primary key,
Origem_Modelo varchar(30),
Categoria varchar(30) not null unique,
Carros_Modelo varchar(30) not null,
Nome_Modelo varchar(30) not null unique,
Data_Criacao timestamp default current_timestamp
);

create table funcionarios (
ID_Funcionarios int auto_increment primary key,
Endereco_Funcionario varchar(200) not null,
Email_Funcionario varchar(200),
CPF_Funcionario varchar(14) not null unique,
Nome_Funcionario varchar(60) not null,
Telefone_Funcionario varchar(20)
);

create table pagamentos (
ID_Pagamento int auto_increment primary key,
Forma_Pagamento enum('PIX', 'Credito', 'Debito') default 'Debito',
Data_Pagamento datetime,
Valor_Pagamento decimal(10,2),
Prazo_pagamento datetime,
Status_Pagamento enum('Pagamento_Finalizado', 'Pagamento_Pendente', 'Pagamento_Cancelado') default 'Pagamento_Finalizado'
);

create table fornecedores (
ID_Fornecedor int auto_increment primary key,
CNPJ varchar(14) not null unique,
Email_Fornecedor varchar(200),
Endereco_Funcionario varchar(200) not null,
Nome_Fornecedor varchar(60) not null,
Telefone_Fornecedor varchar(20)
);

create table pecas (
ID_Peca int auto_increment primary key,
Criacao_Peca datetime,
Nome_Peca varchar(60) not null,
Descricao_Peca varchar(200),
Tipo_Peca varchar(30),
Garantia_Peca enum('Ativo', 'Inativo') default 'Ativo'
);

create table servicos (
ID_Servico int auto_increment primary key,
Tipo_Servico varchar(30),
Garantia_Servico enum('Ativo', 'Inativo') default 'Ativo',
Data_Servico timestamp default current_timestamp,
Valor_Servico decimal(10,2),
Status_Servico enum('Ativo', 'Inativo') default 'Ativo'
);

create table ordem_servico (
ID_Ordem_Servico int auto_increment primary key,
Descricao_Ordem_Servico varchar(200),
Servico_da_Ordem varchar(50),
Data_Criacao_Ordem datetime,
Status_Ordem_Servico enum('Ativo', 'Inativo') default 'Ativo',
Prazo_Ordem_Servico datetime
);

alter table clientes add column idade_cliente int;
alter table marcas add column nacionalidade_marca varchar(50);
alter table modelos add column tamanho int;
alter table funcionarios add column nacionalidade_funcionario varchar(30);
alter table pagamentos add column parcelas int;
alter table pecas add column categoria_peca varchar(40);
alter table fornecedores add column localizacao varchar (100);
alter table ordem_servico add column previsao_finalizacao date;

alter table clientes drop column idade_cliente;
alter table marcas drop column nacionalidade_marca;
alter table modelos drop column tamanho;
alter table funcionarios drop column nacionalidade_funcionario;
alter table pagamentos drop column parcelas;
alter table pecas drop column categoria_peca;
alter table fornecedores drop column localizacao;
alter table ordem_servico drop column previsao_finalizacao;

rename table modelos to modelos_fab;