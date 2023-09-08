create database Fabrica_Moveis;
use Fabrica_Moveis;


create table Funcionario ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_fun int primary key, 
nome_fun varchar(200), 
funcao_fun varchar(200),
contato_fun int,
salario_fun decimal
);
create table Cliente ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_cli int primary key, 
nome_cli varchar(200), 
cpf_cli varchar(200),
email_cli varchar(200),
celular_cli int,
dataNas_cli date,
endereco_cli varchar(200)
);
create table Servico ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_ser int primary key, 
tempo_ser time, 
valor_ser decimal,
tipo_ser varchar(200),
nome_ser varchar(200),
avaliacoes_ser varchar(200)
);
create table Fornecedor ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_for int primary key, 
razaoSocial_for varchar(200), 
nome_for varchar(200),
cnpj_for varchar(200),
endereco_for varchar(200)
);
create table Movel ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_mov int primary key, 
nome_mov varchar(200), 
peso_mov decimal,
cor_mov varchar(200),
comprimento_mov decimal,
altura_mov decimal,
largura_mov decimal,
valor_mov decimal,
estoque_mov varchar(200),
descricao_mov varchar(200)
);
create table Fabricacao ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_fab int primary key, 
tempo_fab date, 
data_fab date,
lote_fab varchar(200),
custo_fab decimal
);
create table Materia_Prima ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_mat int primary key, 
nome_mat varchar(200), 
marca_mat varchar(200),
caracteristicas_mat varchar(200),
estoque_mat varchar(200),
valor_mat decimal,
tamanho_mat varchar(200) 
);
create table Venda ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_ven int primary key, 
valor_ven decimal, 
data_ven date,
formaPagamento_ven varchar(200),
totalVendas_ven decimal
);
create table Caixa ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_cai int primary key, 
data_cai date, 
saldoInicial_cai decimal,
saldoFinal_cai decimal,
totalEntradas_cai decimal,
totalSaidas_cai decimal,
status_cai varchar(200)
);
create table Recebimento ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_rec int primary key, 
status_rec varchar(200), 
valor_rec decimal,
parcela_rec varchar(200),
formaPagamento_rec varchar(200)
);

create table Venda_Servico(
id_venSer int primary key,
id_ven_fk int,
id_ser_fk int,
foreign key (id_ven_fk) references Venda (id_ven),
foreign key (id_ser_fk) references Servico (id_ser)
);

create table Fabricacao_Funcionario(
id_fabFun int primary key,
id_fab_fk int,
id_fun_fk int,
foreign key (id_fab_fk) references Fabricacao (id_fab),
foreign key (id_fun_fk) references Funcionario (id_fun)
);
create table Venda_Movel ( #============================================================================================================================================================
id_venMov int primary key,
id_ven_fk int,
id_mov_fk int,
foreign key (id_ven_fk) references Venda (id_ven),
foreign key (id_mov_fk) references Movel (id_mov)
);

create table Fabrica_Movel(
id_fabMov int primary key,
id_fab_fk int,
id_mov_fk int,
foreign key (id_fab_fk) references Fabricacao (id_fab),
foreign key (id_mov_fk) references Movel (id_mov)
);


create table Fabrica_MateriaPrima(
id_fabMat int primary key,
id_fab_fk int,
id_mar_fk int,
foreign key (id_fab_fk) references Fabricacao (id_fab),
foreign key (id_mar_fk) references Materia_Prima (id_mat)
);
create table Despesa ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_des int primary key, 
descricao_des varchar(200), 
valor_des decimal,
parcelamento_des varchar(200),
tipo_des varchar(200),
data_des date
);
create table Pagamento ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_pag int primary key, 
status_pag varchar(200), 
valor_pag decimal,
parcela_pag varchar(200),
formaPagamento_pag varchar(200)
);
create table Compra ( #CRIANDO UMA TABELA (ENTIDADE) DENTRO DO BANCO bd_helloWorld, com os atributo id, nome e continente
id_com int primary key, 
valor_com decimal, 
data_com date,
formaPagamento_com varchar(200),
horas_com time
);

























































