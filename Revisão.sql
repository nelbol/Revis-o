#Comentario no MySQL Workbench
#Aula de Criação e Manipulação de Banco de Dados
#06/05/2019
#
#Revisão SQL Basico utilizando o KhanAcademy
#https://pt.khanacademy.org/computing/computer-programming
# Prof. Tarcísio Nunes (@tarcnux)
####################################

# Obersevação! Após cada linha de comando, para ser
# executada, você deve pressionar Ctrl Enter

#Criando uma base de dados
create database senai;#ctrl enter 
use senai;

#Apagando uma base de dados
drop database test;#ctrl enter (PRESSIONAR)

#Criando uma tabela
#É necessario saber o nome da tabela, os nomes
#e dos campos (colunas) da tabela
create table aluno(
  id int primary key auto_increment,
  nome varchar(40),
  nota1 decimal(4,2),
  nota2 decimal(4,2),
  media decimal(4,2)
);#Lembre-se de pressionar Ctrl Enter

insert into aluno(id,nome,nota1,nota2,media)
values(1,"Teobaldo Anastácio",7.8,8.5,(7.8+8.5)/2);

insert into aluno values
(2,"Manu Moresco",6.5,8.9,(6.5+8.9)/2),
(3,"Paulinho",9,8.9,(9+8.9)/2),
(4,"Leonardo Coelho",5,4,(5+4)/2);#Ctrl Enter

select * from aluno;
#Alterando uma tabela para adicionar
#uma nova coluna de e-mail

alter table aluno add column email text;
select * from aluno;
#Pequeno desafio para os pequenos gafanhotos
#Adicione yn e_mail para cada aluno.
UPDATE aluno
 SET email = 'teo@baldo.com.br'
 where id = 1; 
 
 UPDATE aluno
 SET email = 'paulinho@.com.br'
 where id = 2; 
 
SELECT * FROM ALUNO;

