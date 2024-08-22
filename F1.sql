drop database if exists f1;
create database f1;
use f1;
create table piloto (
    id_piloto int(2) not null auto_increment primary key,
    nome varchar(50),
    equipe varchar(50),
    nacionalidade varchar(50),
    pontuacao int,
    companheiro_piloto varchar(50),
    Q_títulos int,
    nascimento date,
    patrocinador varchar(50)
) default charset = utf8mb4;

insert into piloto values
(default, "Charles Leclerc", "Ferrari", "Mônaco", 138, "Carlos Sainz", 0, "1997-10-16", "HP"),
(default, "Max Verstappen", "RedBull Racing", "Holanda", 169, "Sergio Perez", 3, "1997-09-30", "Oracle"),
(default, "Carlos Sainz", "Ferrari", "Espanha", 108, "Charles Leclerc", 0, "1994-09-01", "HP"),
(default, "Sergio Perez", "RedBull Racing", "México", 107, "Max Verstappen", 0, "1990-01-26", "Oracle"),
(default, "Lando Norris", "McLaren", "Inglaterra", 113, "Oscar Piastri", 0, "1999-11-13", "eBay"),
(default, "Oscar Piastri", "McLaren", "Austrália",  71, "Lando Norris", 0, "2001-04-06", "eBay"),
(default, "Lewis Hamilton", "Mercedes", "Inglaterra", 42, "George Russel", 7, "1985-01-07", "Adidas"),
(default, "George Russel", "Mercedes", "Inglaterra", 54, "Lewis Hamilton", 0, "1998-02-15", "Adidas"),
(default, "Fernando Alonso", "Aston Martin", "Espanha", 33, "Lance Stroll", 4, "1981-07-29", "Aramco"),
(default, "Lance Stroll", "Aston Martin", "Canadá", 9, "Fernando Alonso", 0, "1998-10-29", "Aramco"),
(default, "Yuki Tsunoda", "Visa ChashApp", "Japão", 19, "Daniel Ricciardo", 0, "2000-05-11", "Hugo Boss"),
(default, "Daniel Ricciardo", "Visa CashApp", "Austrália", 5, "Yuki Tsunoda", 0, "1989-07-01", "Hugo Boss"),
(default, "Kevin Magnussen", "HAAS", "Dinamarca", 1, "Nico Hulkenberg", 0, "1992-10-05", "Oakberry"),
(default, "Nico Hulkenberg", "HAAS", "Finlândia", 6, "Kevin Magnussen", 0, "1987-08-19", "Oakberry"),
(default, "Pierre Gasly", "Alpine", "França", 1, "Esteban Ocon", 0, "1996-02-07", "BRB"),
(default, "Esteban Ocon", "Alpine", "França", 1, "Pierre Gasly", 0, "1996-09-17", "BRB"),
(default, "Logan Sargeant", "Williams", "Estados Unidos", 0, "Alexander Albon", 0, "2000-12-31", "Komatsu"),
(default, "Alexander Albon", "Williams", "Tailândia", 2, "Logan Sargeant", 0, "1996-03-23", "Komatsu"),
(default, "Guanyu Zhou", "Stake", "China", 0, "Valtteri Bottas", 0, "1999-05-30", "Stake"),
(default, "Valtteri Bottas", "Stake", "Alemanha", 0, "Guanyu Zhou", 0, "1989-08-28", "Stake");

create table pista(
    id_pista int(2) not null auto_increment primary key,
    nome_pista varchar(50),
    pais varchar(50),
    VencedorPista_2024 varchar(50),
    melhor_tempo_pista varchar(50),
    tamanho_pista int(15),
    numero_voltas int(10)
) default charset = utf8mb4;

insert into pista values
(default, "Bahrain International Circuit", "Bahrein", "Max Verstappen", "1:31:44.742", 5412, 15),
(default, "Jeddah Corniche Circuit", "Arábia Saudita", "Max Verstappen", "1:20:43.273", 6175, 27),
(default, "Albert Park Grand Prix", "Austrália", "Carlos Sainz", "1:20:26.843", 5279, 14),
(default, "Suzuka International Racing Course", "Japão", "Max Verstappen", "1:54:23.566", 5807, 14),
(default, "Shanghai International Circuit", "China", "Max Verstappen", "1:40:52.554", 5451, 16),
(default, "Miami International Autodrome", "Estados Unidos", "Lando Norris", "1:30:49.876", 5412, 19),
(default, "Autodromo Internazionale Enzo e Dino Ferrari", "Itália", "Max Verstappen", "1:25:25.252", 4909, 19),
(default, "Circuit de Monaco", "Mônaco", "Charles Leclerc", "2:23:15.554", 3337, 19),
(default, "Circuit Gilles-Villeneuve", "Canadá", "Max Verstappen", "1:45:47.927", 4361, 14),
(default, "Circuit de Barcelona-Catalunya", "Espanha", "-", "-", 4655, 16),
(default, "Red Bull Ring", "Áustria", "-", "-", 4318, 10),
(default, "Silverstone Circuit", "Reino Unido", "-", "-", 5891, 17),
(default, "Hungaroring", "Hungria", "-", "-", 4381, 14),
(default, "Circuit Spa-Francorchamps", "Bélgica", "-", "-", 7004, 19),
(default, "Circuit Zandvoort", "Holanda", "-", "-", 4259, 15),
(default, "Autodromo Nazionale Monza", "Itália", "-", "-", 5793, 11),
(default, "Baku City Circuit", "Azerbaijão", "-", "-", 6003, 20),
(default, "Marina Bay Street Circuit", "Singapura", "-", "-", 5073, 23),
(default, "Circuit of the Americas", "Estados Unidos", "-", "-", 5513, 20),
(default, "Autodromo Hermanos Rodriguez", "México", "-", "-", 4304, 17),
(default, "Autódromo José Carlos Pace", "Brasil", "-", "-", 4309, 15),
(default, "Streets of Las Vegas", "Estados Unidos", "-", "-", 6201, 17),
(default, "Losail International Circuit", "Catar", "-", "-", 5380, 16),
(default, "Yas Marina Circuit", "Emirados Árabes Unidos", "-", "-", 5281, 16);

create table carro(
  id_carro int not null auto_increment primary key,
  marca varchar(20),
  modelo varchar(20),
  peso_carro float(10),
  potencia_carro int(10),
  motor varchar(20),
  tipo_roda varchar(20),
  material_chasi varchar(50),
  suspensão varchar(20)
  ) default charset = utf8mb4;

insert into carro values
(1,"Red Bull Racing", "RB20", 798 , "1000 cv", "Honda RBPT", "fibra de carbono","Independente","OZ Racing"),
(2," Mercedes-AMG Petronas", "MGP-W15", 798 , "1.000 cv", "	Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "Independente", "oz racing"),
(3,"Ferrari", "SF24", 780 ,"1.010 cv","Ferrari 066/12 V6 Turbo","Fibra de carbono","independente", "Pireli"),
(4,"Mclaren","MCL38",750 ,"1.008 cv","Mercedes-AMG F1 M15 E Performance","Fibra de carbono","Independente", "enkei"), 
(5,"Alpine","A524",770 ,"995 cv","Renault E-Tech 24 V6 Turbo","Fibra de carbono","Independente","OZ Racing"),
(6,"Aston Martin","AMR24", 785 ,"1.005 cv","Mercedes-AMG F1 M15 E Performance","Fibra de carbono","Independente", "BBS"),
(7,"Stake F1 Team Kick Sauber","c44",798 ,"1.000 cv","Ferrari 066/12 V6 Turbo","Fibra de carbono","Independente","Enkei"),
(8," Visa Cash App RB Formula One Team","VCARB 01",770 ,"990 cv","Honda RBPT","Fibra de carbono","Independente","OZ Racing"),
(9,"Williams","FW46",775 ,"985 cv","Mercedes-AMG F1 M15 E Performance","Fibra de carbono","Independente","BBS"),
(10,"MoneyGram Haas F1 Team","c44","798","990 cv","Ferrari 066/12 V6 Turbo","Fibra de caborno","independente","OZ Racing");

select * from piloto;
select * from pista;
select * from carro;