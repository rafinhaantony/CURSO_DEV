-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Clientes (
CPF_Cliente varchar(14) not null unique,
Nome_Cliente varchar(60) not null,
Email_Cliente varchar(250),
ID_Cliente int auto_increment PRIMARY KEY,
Telefone_Cliente varchar(20) not null,
Data_Cadastro timestamp default current_timestamp,
Endereco_Cliente varchar(200) not null
)

CREATE TABLE Programa_Fidelidade (
ID_Programa_Fidelidade int auto_increment PRIMARY KEY,
Ultima_Pontuacao timestamp default current_timestamp,
Pontos_Acumulados int not null,
Data_Cadastro timestamp default current_timestamp,
Oferta_Pontos int not null,
ID_Cliente int,
FOREIGN KEY(ID_Cliente) REFERENCES Clientes (ID_Cliente)
)

CREATE TABLE Fornecedores (
ID_Fornecedor int auto_increment PRIMARY KEY,
Telefone_Fornecedor varchar(15),
Email_Fornecedor varchar(250),
Nome_Fornecedor varchar(60) not null,
CNPJ varchar(14) not null,
ID_Produto int,
FOREIGN KEY (ID_Produto) REFERENCES Produtos (ID_Produtos)
)

CREATE TABLE Funcionarios (
ID_Funcionario int auto_increment PRIMARY KEY,
Telefone_Funcionario varchar(15),
Endereco_Funcionario varchar(250),
Email_Funcionario varchar(250),
Nome_Funcionario varchar(60) not null,
CPF_Funcionario varchar(14) not null unique,
Cargo_Funcionario varchar(50) not null,
Salario_Funcionario decimal(10,2) not null,
Data_Admissao datetime
)

CREATE TABLE Contem (
ID_Produto int,
ID_Pedido int,
FOREIGN KEY(ID_Produto) REFERENCES Produtos (ID_Produto),
FOREIGN KEY(ID_Pedido) REFERENCES Produtos (ID_Pedido)
)

CREATE TABLE Atende (
ID_Funcionario int,
ID_Cliente int,
FOREIGN KEY(ID_Funcionario) REFERENCES Funcionarios (ID_Funcionario),
FOREIGN KEY(ID_Cliente) REFERENCES Clientes (ID_Cliente)
)

CREATE TABLE Produtos (
Nome_Produto varchar(250),
ID_Produto int auto_increment PRIMARY KEY,
Valor_Produto decimal(10,2),
Descricao_Produto varchar(250)
)

CREATE TABLE Categoria (
Data_Criacao timestamp default current_timestamp,
ID_Categoria int auto_increment PRIMARY KEY,
Descricao_Categoria varchar(250),
Categoria_Ativo boolean,
Nome_Categoria varchar(60) not null,
ID_Produto int,
FOREIGN KEY(ID_Produto) REFERENCES Produtos (ID_Produto)
)

CREATE TABLE Estoque (
ID_Item_Estoque int auto_increment PRIMARY KEY,
Ultima_Entrada timestamp default current_timestamp,
Quantidade_Minima int not null,
Quantidade_Atual int not null,
Nome_Insumo varchar(250) not null,
Unidade_Medida varchar(250) not null,
ID_Produto int,
FOREIGN KEY(ID_Produto) REFERENCES Produtos (ID_Produto)
)

CREATE TABLE Delivery (
ID_Delivery int auto_increment primary key,
Entrega_Cancelada boolean,
Entrega_Finalizada boolean,
Entrega_Andamento boolean,
Hora_Saida datetime,
Taxa_Entrega decimal(10,2),
Endereco_Entrega varchar(200) not null unique
)

CREATE TABLE Pedidos(
ID_Pedido int auto_increment primary key,
Data_Pedido datetime,
Valor_Total decimal(10,2),
Pedido_Andamento boolean,
Pedido_Cancelado boolean,
Pedido_Finalizado boolean,
Tipo_Pedido varchar(100)
ID_Cliente int,
FOREIGN KEY(ID_Cliente) REFERENCES Clientes (ID_Cliente),
ID_Pagamento int,
FOREIGN KEY(ID_Pagamento) REFERENCES Clientes (ID_Pagamento)
)

CREATE TABLE Pagamento(
ID_Pagamento int auto_increment primary key,
Data_Pagamento timestamp default current_timestamp,
Pagamento_Andamento boolean,
Pagamento_Finalizado boolean,
Pagamento_Cancelado boolean,
Debito boolean,
Credito boolean,
PIX boolean,
Valor_Pago decimal(10,2) not null
)

ALTER TABLE Fornecedores ADD
ALTER TABLE Contem ADD 
