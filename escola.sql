drop database if exists escola;
create database	escola;
use escola;
create table alunos(
id int AUTO_INCREMENT,
nome varchar(100),
grupo char(1),
nascimento DATE,
clube varchar(10),
cor_fav varchar(10),
profissao varchar (20),
nacionalidade varchar (20) default 'brasileira',
habilitado enum ('sim', 'não'),    
sexo enum ('F', 'M'),
filme varchar (10), 
PRIMARY KEY (id)
)    DEFAULT CHARSET = utf8; 
insert into alunos values
(default,'ADRIANO YUDI TAKARA','a',20030101,'alpha','azul','mecânico',default,'sim','M','Milagre'),
(default,'ALISSIA COELHO OLIVEIRA','b',20020202,'beta','rosa','Motorista','chinesa','sim','F','Bola'),
(default,'ANDRE LUIS FIALHO DE OLIVEIRA MIRANDA','c',20010303,'delta','verde','Manobrista','italiana','sim','M','Fenix'),
(default,'ANTONIO GARCIA MARQUES DE OLIVEIRA','d',20000404,'pi','vermelho','Guitarrista','portuguesa','sim','M','Pegasos'),
(default,'ARTHUR DA SILVA','a',19990505,'alpha','azul','jogador_futebol','colombiana','não','M','Barco'),
(default,'CAIO DANIEL BEZERRA PINHEIRO','b',19980606,'beta','rosa','Jogador_Golfe','americana','não','M','Abelhas'),
(default,'CARLOS EDUARDO MARIANO DOS SANTOS','c',19970707,'delta','verde','Cosplay','japonesa','sim','M','Tubarão'),
(default,'ERICK GUSTAVO CHOQUE QUISPE','d',19960808,'pi','vermelho','Guarda_costa',default,'sim','M','Milagre'),
(default,'FRANCISCO MIGUEL FERREIRA DE MOURA','a',19950909,'alpha','azul','Mecânico','chinesa','sim','M','Bola'),
(default,'GABRIEL ACEVEDO','b',19941010,'beta','rosa','Motorista','italiana','sim','M','Fenix'),
(default,'GABRIEL CAMARA DA SILVA','c',20031111,'delta','verde','Manobrista','portuguesa','não','M','Pegasos'),
(default,'GABRIELLE URBANO AZEVEDO','d',20021212,'pi','vermelho','Guitarrista','colombiana','não','F','Barco'),
(default,'HEITOR LEAL DE SOUZA MARQUES DA SILVA','a',20010113,'alpha','azul','jogador_futebol','americana','sim','M','Abelhas'),
(default,'HENRIQUE NICHI LOPES','b',20000214,'beta','rosa','Jogador_Golfe','japonesa','sim','M','Tubarão'),
(default,'ITALO BUKYS','c',19990315,'delta','verde','Cosplay',default,'sim','M','Milagre'),
(default,'JEAN MARCEL MARTINS FILHO','d',19890426, 'pi', 'vermelho', 'Guarda_costa', 'chinesa', 'sim', 'M', 'Bola'),
(default,'JHONATHAN DOS SANTOS DOURADO','a',19880527, 'alpha', 'azul', 'Mecânico', 'italiana', 'não', 'M', 'Fenix'),
(default,'JOAO PEDRO MONTEIRO SOUTO','b',19870628, 'beta', 'rosa', 'Motorista', 'portuguesa', 'não', 'M', 'Pegasos'),
(default,'JOÃO VITOR DE SOUSA SILVA','c',19860729, 'delta', 'verde', 'Manobrista', 'colombiana', 'sim', 'M', 'Barco'),
(default,'JUAN DOS SANTOS HERNANDES','d',19850830, 'pi', 'vermelho', 'Guitarrista', 'americana', 'sim', 'M', 'Abelhas'),
(default,'KAUA GOMES DOS SANTOS', 'a', 19840921, 'alpha', 'azul', 'jogador_futebol', 'japonesa', 'sim', 'M', 'Tubarão'),
(default,'KAUAN HIKARU MURATA YOGI', 'b', 19831022, 'beta', 'rosa', 'Jogador_Golfe', 'brasileira', 'sim', 'M', 'Milagre'),
(default,'LUCAS GOMES ANTUNES', 'c', 19821123, 'delta', 'verde', 'Cosplay', 'chinesa', 'não', 'M', 'Bola'),
(default,'LUCAS LIRA MONTEIRO SOARES', 'd', 19811224, 'pi', 'vermelho', 'Guarda_costa', 'italiana', 'não', 'M', 'Fenix'),
(default,'LUCAS SOUSA SILVA', 'a', 19810125, 'alpha', 'azul', 'Mecânico', 'portuguesa', 'sim', 'M', 'Pegasos'),
(default,'LUCAS VECHI LIGGI', 'b', 19800226, 'beta', 'rosa', 'Motorista', 'colombiana', 'sim', 'M', 'Barco'),
(default,'LUIS PONTES OTA', 'c', 19790327, 'delta', 'verde', 'Manobrista', 'americana', 'sim', 'M', 'Abelhas'),
(default,'LUIZ RAIMUNDO NETO', 'd', 19780428, 'pi', 'vermelho', 'Guitarrista', 'japonesa', 'sim', 'M', 'Tubarão'),
(default,'MARIA BEATRIZ FERNANDES LOPES', 'a', 19770529, 'alpha', 'azul', 'jogador_futebol', 'brasileira', 'não', 'F', 'Milagre'),
(default,'MARIA CLARA SILVA DE MELO', 'b', 19760630, 'beta', 'rosa', 'Jogador_Golfe', 'chinesa', 'não', 'F', 'Bola'),
(default,'MATEUS AUGUSTO SANTOS FERNANDES', 'c', 19750721, 'delta', 'verde', 'Cosplay', 'italiana', 'sim', 'M', 'Fenix'),
(default,'MELISSA RIE KANZATO', 'd', 19740822, 'pi', 'vermelho', 'Guarda_costa', 'portuguesa', 'sim', 'F', 'Pegasos'),
(default,'PEDRO HENRIQUE PASSOS MARTINS', 'a', 19730923, 'alpha', 'azul', 'Mecânico', 'colombiana', 'sim', 'M', 'Barco'),
(default,'RENAN ENZO MORITA', 'b', 19721024, 'beta', 'rosa', 'Motorista', 'americana', 'sim', 'M', 'Abelhas'),
(default,'RENAN FERNANDES DANTAS', 'c', 19711125, 'delta', 'verde', 'Manobrista', 'japonesa', 'não', 'M', 'Tubarão'),
(default,'RYAN REIS DOS SANTOS', 'd', 19701226, 'pi', 'vermelho', 'Guitarrista', 'brasileira', 'não', 'M', 'Milagre'),
(default,'SARAH RUFINO REIS', 'a', 19700127, 'alpha', 'azul', 'jogador_futebol', 'chinesa', 'sim', 'F', 'Bola'),
(default,'SOFIA ANSANELO MARTINS', 'b', 19690228, 'beta', 'rosa', 'Jogador_Golfe', 'italiana', 'sim', 'F', 'Fenix'),
(default,'TAINÁ MARCONDES TOINAKI', 'c', 19680329, 'delta', 'verde', 'Cosplay', 'portuguesa', 'sim', 'F', 'Pegasos'),
(default,'VICENZO GADELHA GRECO', 'd', 19670430, 'pi', 'vermelho', 'Guarda_costa', 'colombiana', 'sim', 'M', 'Barco');
select nome, grupo from alunos where grupo = 'a';
select nome, grupo from alunos where grupo = 'b';
select nome, grupo from alunos where grupo = 'c';
select nome, grupo from alunos where grupo = 'd';

select nome, cor_fav from alunos where cor_fav = 'azul';
select nome, cor_fav from alunos where cor_fav = 'rosa';
select nome, cor_fav from alunos where cor_fav = 'verde';
select nome, cor_fav from alunos where cor_fav = 'vermelho';

select nome, clube from alunos where clube = 'alpha';
select nome, clube from alunos where clube = 'beta';
select nome, clube from alunos where clube = 'delta';
select nome, clube from alunos where clube = 'pi';

select nome, profissao from alunos where profissao = 'jogador_futebol';
select nome, profissao from alunos where profissao = 'motorista';
select nome, profissao from alunos where profissao = 'guitarrista';
select nome, profissao from alunos where profissao = 'jogador_golfe';
select nome, profissao from alunos where profissao = 'mecânico';
select nome, profissao from alunos where profissao = 'manobrista';
select nome, profissao from alunos where profissao = 'cosplay';
select nome, profissao from alunos where profissao = 'Guarda_costa';

select nome, nacionalidade from alunos where nacionalidade = 'brasileira';
select nome, nacionalidade from alunos where nacionalidade = 'chinesa';
select nome, nacionalidade from alunos where nacionalidade = 'italiana';
select nome, nacionalidade from alunos where nacionalidade = 'portuguesa';
select nome, nacionalidade from alunos where nacionalidade = 'colombiana';
select nome, nacionalidade from alunos where nacionalidade = 'americana';
select nome, nacionalidade from alunos where nacionalidade = 'japonesa';

select nome, sexo from alunos where sexo = 'm';
select nome, sexo from alunos where sexo = 'f';

select nome, habilitado from alunos where habilitado = 'sim';

select nome, filme from alunos where filme = 'milagre';
select nome, filme from alunos where filme = 'bola';
select nome, filme from alunos where filme = 'fenix';
select nome, filme from alunos where filme = 'pegasos';
select nome, filme from alunos where filme = 'barco';
select nome, filme from alunos where filme = 'abelha';
select nome, filme from alunos where filme = 'tubarão';