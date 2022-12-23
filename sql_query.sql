create database Registro_Escolar;
use Registro_Escolar;
create table tbl_Aluno (
ID_Aluno smallint auto_increment primary key,
Nome_Aluno varchar(40) not null,
Sobrenome_Aluno varchar(40) not null,
CPF_Aluno varchar(15) not null
)
;
create table tbl_Professor (
SIAPE varchar(6) primary key,
Nome_Professor varchar(40) not null,
Sobrenome_Professor varchar(40) not null
)
;
create table tbl_Disciplina (
ID_Disciplina smallint auto_increment primary key
)
;


create table tbl_Registrar (
ID_Registro smallint auto_increment primary key,
Nota_Unid1 decimal(3,1) not null,
Nota_Unid2 decimal(3,1) not null,
Nota_Final decimal(3,1) not null
)
;


alter table tbl_aluno
add ID_Disciplina smallint not null;

alter table tbl_aluno
add constraint FK_ID_Disciplina
foreign key(ID_Disciplina)
references tbl_disciplina(ID_Disciplina);

alter table tbl_professor
add ID_Disciplina smallint not null;

alter table tbl_professor
add constraint FK_ID_Disciplina_Prof
foreign key(ID_Disciplina)
references tbl_disciplina(ID_Disciplina);

alter table tbl_disciplina
add column SIAPE varchar(6) not null;

alter table tbl_disciplina
add constraint FK_SIAPE
foreign key (SIAPE)
references tbl_professor(SIAPE);


alter table tbl_disciplina
add column ID_Aluno smallint(6) not null;


alter table tbl_disciplina
add constraint FK_ID_Aluno
foreign key (ID_Aluno)
references tbl_aluno(ID_Aluno);

alter table tbl_registrar
add column ID_Aluno smallint(6) not null;

alter table tbl_registrar
add constraint FKey_ID_ALUNO
foreign key (ID_Aluno)
references tbl_aluno(ID_Aluno);

