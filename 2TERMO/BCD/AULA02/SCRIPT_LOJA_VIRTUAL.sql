-- COMANDO PARA ATIVAR BANCO DE DADOS
use bebelo_store;

-- COMANDO PARA CRIAR TABELAS
create table clientes (
ID_Clientes int auto_increment primary key,
Nome_Clientes varchar(60) not null,
CPF varchar(14) not null unique,
Email_Clientes varchar(60),
Data_Cadastro timestamp default current_timestamp,
Telefone_Clientes varchar(14),
Endereco_Cliente varchar (200) not null unique
);

create table fornecedores (
ID_Fornecedor int auto_increment primary key,
Nome_Fornecedor varchar (200) not null unique,
Telefone_Fornecedor varchar(20),
Email_Fornecedor varchar(200) not null unique,
CNPJ varchar(14) not null unique
);

create table produtos (
ID_Produto varchar(14) not null unique,
Descricao_Produto varchar(14) not null unique,
Quantidade_Estoque int,
Valor_Produto varchar(14) not null unique,
Categoria varchar(30)
);

create table pedidos (
ID_Pedido int auto_increment primary key,
Data_Pedido timestamp default current_timestamp,
Valor_Total decimal(15,2),
Status_Pedidos enum('Andamento', 'Finalizado') default 'Finalizado'
);

create table Itens_Pedido (
ID_Produtos_Pedidos int auto_increment primary key,
Valor_Unitario decimal(10,2),
Quantidade_Itens int,
Valor_Total decimal(10,2)
);

create table Pagamento (
ID_Pagamento int auto_increment primary key,
Data_Pagamento timestamp default current_timestamp,
Forma_Pagamento enum('PIX', 'Debito', 'Credito') default 'PIX',
Status_Pagamento enum('Ativo', 'Inativo') default 'Ativo'
);

insert into clientes (CPF, Email_Clientes, Telefone_Clientes, Nome_Clientes, Endereco_Cliente) values
('42085937125', 'ronaldo.silva92999@gmail.com', '19929049855', 'Ronaldo Silva', 'Rua moacyr pereira 64'),
('48379928170', 'mauricio__alvez@gmail.com', '19938456363', 'Mauricio_Alvez', 'Rua bananeniras 120'),
('55827930912', 'luiza2222.souza@gmail.com', '19982734651', 'Luiza Souza', 'Rua enzo oliveira 32'),
('55837442910', 'ronaldo.silva999@gmail.com', '19934856725', 'Ronaldo Silva', 'Rua Trajano clarildes 445'),
('74622019935', 'claudia.m.assis6269655@gmail.com', '19942773255', 'Claudia Assis', 'Rua peres pereira 23');

insert into pedidos(Valor_Total, Status_Pedidos) values (130.00, default);

select * from clientes;
select * from pedidos;