create database if not exists smartcoffe_rafael;
use smartcoffe_rafael;

create table clientes (
ID_Cliente int auto_increment primary key,
Nome_Cliente varchar(60) not null,
CPF varchar(14) not null unique,
Telefone_Cliente varchar(20),
Email_Cliente varchar(200),
Endereco_Cliente varchar(200) not null
);

create table produtos (
ID_Produto int auto_increment primary key,
Valor_Produto decimal(10,2),
Descricao_Produto varchar(250),
Nome_Produto varchar(25)
);

create table funcionarios (
ID_Funcionario int auto_increment primary key,
Telefone_Funcionario varchar(15),
Endereco_Funcionario varchar(250),
Email_Funcionario varchar(250),
Nome_Funcinario varchar(60) not null
);

create table pedidos (
ID_Pedido int auto_increment primary key,
Data_Pedido datetime,
Status_Pedido enum('Pedido_Finalizado', 'Pedido_Andamento', 'Pedido_Cancelado') default 'Pedido_Finalizado',
Valor_Total decimal(10,2)
);

create table pagamento (
ID_Pagamento int auto_increment primary key,
Forma_Pagamento enum('PIX', 'Debito','Credito') default 'PIX',
Data_Pagamento timestamp default current_timestamp,
Status_Pagamento enum('Pagamento_Andamento', 'Pagamento_Finalizado', 'Pagamento_Cancelado') default 'Pagamento_Finalizado'
);

create table estoque (
ID_Item_Estoque int auto_increment primary key,
Quantidade_Minima int not null,
Ultima_Entrada timestamp default current_timestamp,
Quantidade_Atual int not null
);

create table fornecedores (
ID_Fornecedor int auto_increment primary key,
CNPJ varchar(14) not null,
Telefone_Fornecedor varchar(15),
Email_Fornecedor varchar(250),
Nome_Fornecedor varchar(60) not null
);

create table categoria (
ID_Categoria int auto_increment primary key,
Data_Criacao timestamp default current_timestamp,
Descricao_Categoria varchar(250),
Categoria_Ativo boolean,
Nome_Categoria varchar(60) not null
);

create table delivery (
ID_Delivery int auto_increment primary key,
Status_Entrega enum('Entrega_Andamento', 'Entrega_Finalizada', 'Entrega_Cancelada') default 'Entrega_Finalizada',
Hora_Saida datetime,
Taxa_Entrega decimal(10,2)
);

create table programa_fidelidade (
ID_Programa_Fidelidade int auto_increment primary key,
Pontos_Acumulados int not null,
Oferta_Pontos int not null,
Ultima_Pontuacao timestamp default current_timestamp,
Data_Cadastro timestamp default current_timestamp
);

insert into clientes (Nome_Cliente, CPF, Telefone_Cliente, Email_Cliente, Endereco_Cliente) values
('Ronaldo Silva', '42085937125', '19929049855', 'ronaldo.silva92999@gmail.com',  'Rua moacyr pereira 64');

select * from clientes;