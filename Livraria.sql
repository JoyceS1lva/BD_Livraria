create database livraria;
use livraria;

/*inicio tabela de livros*/
create table tbl_livro (
pk_id_livro int primary key not null auto_increment,
nome_livro varchar(100),
genero_livro enum('fantasia','suspense','comedia','auto-ajuda','ficcao','biografia','misterio','humor','romance'),
data_publi date,
capa_dura enum('roller','mole','cartao','parana'),
valor_livro decimal(10,2),
rating enum('otimo','bom','regular','ruim','pessimo'),
fk_autor int,
foreign key (fk_autor) references tbl_autor (pk_id_autor),
fk_editora int,
foreign key (fk_editora) references tbl_editora (pk_id_editora)
);

select * from tbl_livro;
desc tbl_livro;

insert into tbl_livro
(nome_livro,genero_livro,data_publi,capa_dura,valor_livro,rating) values
('Harry Potter e a Pedra Filosofal','fantasia','2007-03-02','roller',20.09,'otimo'),
('Harry Potter e o Prisioneiro de Azkaban','fantasia','2007-03-02','mole',18.79,'ruim'),
('Harry Potter e a Ordem da Fênix','fantasia','2005-08-20','cartao',50.36,'otimo'),
('Harry Potter e a Câmara Secreta','fantasia','2019-01-25','parana',15.21,'ruim'),
('Garota Exemplar','suspense','2009-12-10','roller',60.23,'otimo'),
('Diálogos Impossíveis','comedia','2005-11-10','cartao',10.00,'otimo'),
('Harry Potter e o Prisioneiro de Azkaban','fantasia','2005-03-02','cartao',20.09,'regular'),
('Arafat','suspense','2020-03-02','parana',17.16,'otimo'),
('Este não é mais um livro de dieta','auto-ajuda','2012-04-02','roller',09.81,'otimo'),
('Atenção Plena: Mindfulness','ficcao','2005-08-20','mole',20.55,'otimo'),
('O Fisico','biografia','2005-11-10','cartao',50.00,'otimo'),
('A Musicista','suspense','2005-11-10','roller',20.00,'otimo'),
('Arsene lupin contra sherlock holmes','misterio','2021-08-10','parana',24.09,'otimo'),
('Harry potter e o calice de fogo','fantasia','2005-11-10','roller',18.90,'otimo'),
('Harry potter e a princesa','fantasia','2012-04-02','mole',15.40,'otimo'),
('Sherlock holmes e o signo dos quatros','misterio','2002-03-02','parana',26.90,'ruim');

/*livros Gillian flynn*/
insert into tbl_livro
(nome_livro,genero_livro,data_publi,capa_dura,valor_livro,rating) values
('Objetos Cortantes','suspense','2009-12-10','roller',60.23,'otimo'),
('Lugares Escuros','suspense','2009-12-10','roller',60.23,'otimo'),
('O adulto','suspense','2009-12-10','roller',60.23,'otimo'),
('Hamlet','suspense','2009-12-10','roller',60.23,'otimo');

/*livros paulo coelho*/
insert into tbl_livro
(nome_livro,genero_livro,data_publi,capa_dura,valor_livro,rating) values
('O alquimista','suspense','2009-12-10','roller',60.23,'otimo'),
('Onze minutos','suspense','2009-12-10','roller',60.23,'otimo'),
('O diario de um mago','suspense','2009-12-10','roller',60.23,'otimo'),
('Adulterio','suspense','2009-12-10','roller',60.23,'otimo'),
('Veronika decide morrer','suspense','2009-12-10','roller',60.23,'otimo');

/*livros fuvest*/
insert into tbl_livro
(nome_livro,genero_livro,data_publi,capa_dura,valor_livro,rating) values
('Poemas escolhidos','suspense','2009-12-10','roller',60.23,'otimo'),
('Quincas borba','suspense','2009-12-10','roller',60.23,'otimo'),
('A reliquia','suspense','2009-12-10','roller',60.23,'otimo'),
('Claro enigma','suspense','2009-12-10','roller',60.23,'otimo'),
('Angustia','suspense','2009-12-10','roller',60.23,'otimo'),
('Mayombe','suspense','2009-12-10','roller',60.23,'otimo'),
('Campo geral','suspense','2009-12-10','roller',60.23,'otimo'),
('Romanceiro da incofidencia','suspense','2009-12-10','roller',60.23,'otimo'),
('Novas noites','suspense','2009-12-10','roller',60.23,'otimo');

/*inicio tabela editora*/
create table tbl_editora (
pk_id_editora int primary key not null auto_increment,
nome_editora varchar(50),
tel_editora int
);

select * from tbl_editora;
desc tbl_editora;

insert into tbl_editora
(nome_editora,tel_editora) values
('Rocco','2025550171'),
('Instriseca','2025550171'),
('Lero-lero','2005550187'),
('Editora Dark side','202555187'),
('Editora gente','202555034'),
('Instituto Tomie Ohtake','2025550174'),
('Instituto cultural','2025550154'),
('Zahar','2025550154');

/*inicio tabela de autores*/

create table tbl_autor (
pk_id_autor int primary key not null auto_increment,
nome_autor varchar(100),
data_nasc date,
pais_origem varchar(100),
endereco varchar(100)
);

select * from tbl_autor;
desc tbl_autor;

insert into tbl_autor 
(nome_autor,data_nasc,pais_origem,endereco) values
('Joana Rowling','1971-08-14','Inglattera','3227 Fairmont Avenue'),
('Gillian Flynn','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Veríssimo','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Neil Gaiman','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Giordono Danta','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Rodrigo Polesso','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Clive Baker','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Osório Matsunada','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Maurice Leblanc','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Conan Doyle','2000-07-17','Estados Unidos','2103 Randall Drive');

/*insert dos autores dos livros adicionados*/
insert into tbl_autor 
(nome_autor,data_nasc,pais_origem,endereco) values
('Paulo Coelho','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Gregorio de Matos','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Machado de assis','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Eça de queiros','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Carlos drummond','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Graciliano ramos','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Pepetela','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Guimaraes rosa','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Cecilia meireles','2000-07-17','Estados Unidos','2103 Randall Drive'),
('Bernardo Carvalho','2000-07-17','Estados Unidos','2103 Randall Drive');


