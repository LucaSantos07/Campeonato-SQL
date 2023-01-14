SHOW DATABASES;
DROP DATABASE csbase;
CREATE DATABASE csbase;
/* Entrando na sessão "Unnamed" */
USE `csbase`;


CREATE TABLE Paises(id_pais INT PRIMARY KEY AUTO_INCREMENT, nome_pais VARCHAR(30));

CREATE TABLE Players(id_player INT PRIMARY KEY AUTO_INCREMENT, nome_player VARCHAR(30), kd VARCHAR(30), idade VARCHAR(3),  id_pais INT, FOREIGN KEY(id_pais) REFERENCES Paises(id_pais));


CREATE TABLE Times(id_time INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome_time VARCHAR(15), id_pais INT, FOREIGN KEY(id_pais) REFERENCES Paises(id_pais), id_player1 INT, FOREIGN KEY(id_player1) REFERENCES Players(id_player), id_player2 INT, FOREIGN KEY(id_player2) REFERENCES Players(id_player), id_player3 INT, FOREIGN KEY(id_player3) REFERENCES Players(id_player), id_player4 INT, FOREIGN KEY(id_player4) REFERENCES Players(id_player), id_player5 INT, FOREIGN KEY(id_player5) REFERENCES Players(id_player));


CREATE TABLE Campeonatos(id_campeonato INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome_campeonato VARCHAR (15),id_time1 INT, FOREIGN KEY(id_time1) REFERENCES Times(id_time), id_time2 INT, FOREIGN KEY(id_time2) REFERENCES Times(id_time), id_time3 INT, FOREIGN KEY(id_time3) REFERENCES Times(id_time) , id_time4 INT, FOREIGN KEY(id_time4) REFERENCES Times(id_time) , id_time5 INT, FOREIGN KEY(id_time5) REFERENCES Times(id_time) , id_time6 INT, FOREIGN KEY(id_time6) REFERENCES Times(id_time),duracao TIME, premiacao VARCHAR (15), formato VARCHAR (15),id_pais INT, FOREIGN KEY(id_pais) REFERENCES Paises(id_pais));


CREATE TABLE Ranks(id_rank INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nivel VARCHAR(15), id_time INT, FOREIGN KEY(id_time) REFERENCES Times(id_time));


CREATE TABLE Mapas(id_mapa INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nome_mapa VARCHAR(10));



CREATE TABLE Rodadas(id_rodada INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  id_campeonato INT, FOREIGN KEY(id_campeonato) REFERENCES Campeonatos(id_campeonato), id_rank1 INT, FOREIGN KEY(id_rank1) REFERENCES Ranks(id_rank), id_time1 INT, FOREIGN KEY(id_time1) REFERENCES Times(id_time),  id_time2 INT, FOREIGN KEY(id_time2) REFERENCES Times(id_time), id_rank2 INT, FOREIGN KEY(id_rank2) REFERENCES Ranks(id_rank), id_mapa INT, FOREIGN KEY(id_mapa) REFERENCES Mapas(id_mapa), DATA DATE);



CREATE TABLE Geral(id_geral INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  id_campeonato INT, FOREIGN KEY(id_campeonato) REFERENCES Campeonatos(id_campeonato), id_time INT, FOREIGN KEY(id_time) REFERENCES Times(id_time), vitoria VARCHAR(30), derrota VARCHAR(30));


CREATE TABLE Mvps(id_mvp INT NOT NULL PRIMARY KEY AUTO_INCREMENT, id_player INT, FOREIGN KEY(id_player) REFERENCES Players(id_player), id_pais INT, FOREIGN KEY(id_pais) REFERENCES Paises(id_pais), id_time INT, FOREIGN KEY(id_time) REFERENCES Times(id_time),  id_campeonato INT, FOREIGN KEY(id_campeonato) REFERENCES Campeonatos(id_campeonato));



/*SELECT NAS TABELAS*/
SHOW TABLES;
SELECT *FROM paises;
SELECT *FROM Players;
SELECT *FROM times;

SELECT *FROM Campeonatos;
SELECT *FROM ranks;
SELECT *FROM Mapas;

SELECT *FROM Rodadas;

SELECT *FROM Mvps;

SELECT *FROM geral;






/*Paises*/
INSERT INTO Paises(nome_pais) VALUES ('Brasil');
INSERT INTO Paises(nome_pais) VALUES ('EUA');
INSERT INTO Paises(nome_pais) VALUES ('Ucrania');
INSERT INTO Paises(nome_pais) VALUES ('Dinamarca');
INSERT INTO Paises(nome_pais) VALUES ('Franca');

/*TABELA PLAYERS*/ /*time IMPERIAL*/
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('FalleN', '0.6', '31',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('VINI', '0.6', '23',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('boltz', '0.6', '25',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('fnx', '0.5', '32',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('fer', '0.7', '30',1);

/*TABELA PLAYERS*/ /*time FURIA*/
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('KSCERATO', '0.7', '22',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('drop', '0.6', '18',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('yuurih', '0.7', '22',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('arT', '0.6', '26',1);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('saffee', '0.6', '27',1);

/*TABELA PLAYERS*/ /*time FAZE*/
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('karrigan', '0.5', '32',2);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('rain', '0.7', '27',2);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('Twistzz', '0.6', '22',2);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('ropz', '0.7', '22',2);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('broky', '0.7', '21',2);


/*TABELA PLAYERS*/ /*time NAVI*/
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('s1mple', '0.8', '24', 3);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('electroNic', '0.7', '23', 3);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('perfecto', '0.6', '22', 3);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('b1t', '0.7', '19', 3);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('coldzerda', '2.0', '28', 3);

/*TABELA PLAYERS*/ /*time ASTRALIS*/
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('Xyp9x', '0,5', '26', 4);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('gla1ve', '0,5', '27', 4);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('k0nfig', '0,7', '25', 4);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('Farlig', '0,6', '23', 4);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('blameF', '0,8', '25', 4);

/*TABELA PLAYERS*/ /*time G2*/
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('jACKZ', '0,5', '29', 5);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('Niko', '0,7', '25', 5);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('huNter', '0,6', '0,7', 5);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('Alekib', '0,5', '25', 5);
INSERT INTO Players(nome_player, kd, idade, id_pais) VALUES ('mONESY', '0,7', '17', 5);



/*TABELA TIMES*/ 
INSERT INTO Times(nome_time, id_pais, id_player1, id_player2, id_player3, id_player4, id_player5) VALUES ('IMPERIAL', 1, 1, 2, 3, 4, 5);
INSERT INTO Times(nome_time, id_pais, id_player1, id_player2, id_player3, id_player4, id_player5) VALUES ('FURIA', 1, 6, 7, 8, 9, 10);
INSERT INTO Times(nome_time, id_pais, id_player1, id_player2, id_player3, id_player4, id_player5) VALUES ('FAZE', 2, 11, 12, 13, 14, 15);
INSERT INTO Times(nome_time, id_pais, id_player1, id_player2, id_player3, id_player4, id_player5) VALUES ('NAVI', 3, 16, 17, 18, 19, 20);
INSERT INTO Times(nome_time, id_pais, id_player1, id_player2, id_player3, id_player4, id_player5) VALUES ('ASTRALIS', 4, 21, 22, 23, 24, 25);
INSERT INTO Times(nome_time, id_pais, id_player1, id_player2, id_player3, id_player4, id_player5) VALUES ('G2', 5, 26, 27, 28, 29, 30);


/*TABELA CAMPEONATOS*/
INSERT INTO Campeonatos(nome_campeonato, id_time1, id_time2,  id_time4,  id_time6, duracao, premiacao, formato, id_pais) VALUES ('Maijor', 1, 2, 4, 6, 050000, '1.00000', 'eliminatorio',2);
INSERT INTO Campeonatos(nome_campeonato, id_time3, id_time5,  duracao, premiacao, formato, id_pais) VALUES ('ELS', 3, 5, 010000, '1.0000', 'partina_unica',1);



/*TABELA RANK*/
INSERT INTO Ranks(nivel, id_time) VALUES ('1', 2);
INSERT INTO Ranks(nivel, id_time) VALUES ('2', 1);
INSERT INTO Ranks(nivel, id_time) VALUES ('3', 3);
INSERT INTO Ranks(nivel, id_time) VALUES ('4', 5);
INSERT INTO Ranks(nivel, id_time) VALUES ('5', 4);
INSERT INTO Ranks(nivel, id_time) VALUES ('6', 6);

/*TABELA MAPA*/
INSERT INTO Mapas(nome_mapa) VALUES ('Train');
INSERT INTO Mapas(nome_mapa) VALUES ('Mirage');
INSERT INTO Mapas(nome_mapa) VALUES ('Overpass');
INSERT INTO Mapas(nome_mapa) VALUES ('Nuke');
INSERT INTO Mapas(nome_mapa) VALUES ('Vertigo');

/*TABELA RODADAS*//*MAIJOR*/
INSERT INTO Rodadas(id_campeonato, id_rank1, id_time1, id_time2, id_rank2, id_mapa, DATA) VALUES ( 1, 1, 2, 6, 6, 4, 20220610);
INSERT INTO Rodadas(id_campeonato, id_rank1, id_time1, id_time2, id_rank2, id_mapa, DATA) VALUES ( 1, 2, 1, 4, 5, 3, 20220610);
INSERT INTO Rodadas(id_campeonato, id_rank1, id_time1, id_time2, id_rank2, id_mapa, DATA) VALUES ( 1, 1, 2, 1, 2, 5, 20220610);
INSERT INTO Rodadas(id_campeonato, id_rank1, id_time1, id_time2, id_rank2, id_mapa, DATA) VALUES ( 1, 5, 4, 6, 6, 1, 20220610);
/*TABELA RODADAS*//*ELS*/
INSERT INTO Rodadas(id_campeonato, id_rank1, id_time1, id_time2, id_rank2, id_mapa, DATA) VALUES ( 2, 3, 3, 5, 4, 2, 20220611);

/*TABELA GERAL*/
INSERT INTO Geral(id_campeonato, id_time, vitoria, derrota) VALUES (1, 6, '2', '0');
INSERT INTO Geral(id_campeonato, id_time, vitoria, derrota) VALUES (1, 4, '1', '1');
INSERT INTO Geral(id_campeonato, id_time, vitoria, derrota) VALUES (1, 2, '0', '1');
INSERT INTO Geral(id_campeonato, id_time, vitoria, derrota) VALUES (1, 1, '0', '1');
INSERT INTO Geral(id_campeonato, id_time, vitoria, derrota) VALUES (2, 3, '1', '0');
INSERT INTO Geral(id_campeonato, id_time, vitoria, derrota) VALUES (2, 5, '0', '1');

/*TABELA MVPS*/
INSERT INTO Mvps(id_player, id_pais, id_time, id_campeonato) VALUES (16, 3, ,1);
INSERT INTO Mvps(id_player, id_pais, id_time, id_campeonato) VALUES (25, 3, 5 ,2);


/*SELECT CAMPEAO MAIJOR*/
SELECT Campeonatos.nome_campeonato, Times.nome_time, paises.nome_pais, geral.vitoria, players.nome_player
FROM Campeonatos, times, paises, geral, players
WHERE campeonatos.id_campeonato = 1 AND  campeonatos.id_time6 = times.id_time AND paises.id_pais = times.id_pais AND times.id_time = geral.id_time AND players.id_player = 16;

/*SELECT CAMPEAO ELS*/
SELECT Campeonatos.nome_campeonato, Times.nome_time, paises.nome_pais, geral.vitoria, players.nome_player
FROM Campeonatos, times, paises, geral, players
WHERE campeonatos.id_campeonato = 2 AND  campeonatos.id_time3 = times.id_time AND paises.id_pais = times.id_pais AND times.id_time = geral.id_time AND players.id_player = 25;



