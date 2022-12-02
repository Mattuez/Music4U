USE music4u;

-- INSERT FORMAS DE PAGAMENTO 
INSERT INTO FORMA_PAGAMENTO VALUES (1, 'Dinheiro');
INSERT INTO FORMA_PAGAMENTO VALUES (2, 'Cartão de Débito');
INSERT INTO FORMA_PAGAMENTO VALUES (3, 'Cartão de Crédito (Vencimento)');
INSERT INTO FORMA_PAGAMENTO VALUES (4, 'Cartão de Crédito (Parcelado)');
INSERT INTO FORMA_PAGAMENTO VALUES (5, 'Carnê');
INSERT INTO FORMA_PAGAMENTO VALUES (6, 'Pix');
INSERT INTO FORMA_PAGAMENTO VALUES (7, 'PicPay');
INSERT INTO FORMA_PAGAMENTO VALUES (8, 'Google Pay');
INSERT INTO FORMA_PAGAMENTO VALUES (9, 'Mercado Pago');
INSERT INTO FORMA_PAGAMENTO VALUES (10, 'Deposito Bancario');

-- INSERT PLANOS 
INSERT INTO PLANO(NIVEL, VALOR, N_USUARIOS) VALUES
("FREE", 0, 1), 
("Individual", 20, 1),
("Duo", 24.90, 2),
("Família", 34.90, 6),
("Universitário", 9.90, 1);

-- INSERT USUARIOS
INSERT INTO USUARIO(NOME, EMAIL, ID_FORMA_PAGAMENTO, ID_PLANO) VALUES
("Matheus Medeiros", "matheusmedeiros@gmail.com", 6, 1),
("Aristotales Medeiros", "aristotalesmedeiros@gmail.com", 1, 2),
("Rafaela Medeiros", "rafaelamedeiros@gmail.com", 6, 3),
("Pericles Medeiros", "periclesmedeiros@gmail.com", 9, 4),
("Luanderson Duarte", "luandersonduarte@gmail.com", 8, 5),
("Ruth Mendes", "ruthmendes@gmail.com", 1, 5),
("Ricardo Viana", "ricardoviana@gmail.com", 2, 1),
("Venere Trocolli", "veneretrocolli@gmail.com", 3, 1),
("Samuel Marcio", "samuelmarcio@gmail.com", 6, 1),
("Matheus Lima", "matheuslima@gmail.com", 6, 1);

-- INSERT COMPRAR_PLANOS
INSERT INTO COMPRAR_PLANO(ID_USUARIO, ID_PLANO, ID_FORMA_PAGAMENTO, DATA_COMPRA) VALUES
(1, 1, 6, "2022-12-01"),
(2, 2, 1, "2022-11-01"),
(3, 3, 6, "2022-11-05"),
(4, 4, 9, "2022-11-09"),
(5, 5, 8, "2022-11-01"),
(6, 5, 1, "2022-11-01"),
(7, 1, 2, "2022-11-01"),
(8, 1, 3, "2022-11-01"),
(9, 1, 6, "2022-05-09"),
(10, 1, 6, "2022-09-05");

-- INSERT ARTISTAS
INSERT INTO ARTISTA(NOME, DESCRICAO, ID_FORMA_PAGAMENTO) VALUES
("ED SHEERAN", "POP MUSIC", 1),
("OLIVIA RODRIGO", "POP MUSIC", 2),
("JUSTIN BIEBER", "POP MUSIC", 3),
("ADELE", "POP MUSIC", 4),
("MATUE", "RAP MUSIC", 5),
("TETO", "RAP MUSIC", 6),
("WIU", "RAP MUSIC", 7),
("JOVEM DEX", "RAP MUSIC", 8),
("ORUAM", "RAP MUSIC", 9),
("MGK", "ROCK MUSIC", 1),
("CBJR", "ROCK MUSIC", 5),
("IANN DIOR", "ROCK MUSIC", 4),
("THE KID LAROI", "POP MUSIC", 2),
("blackbear", "ROCK MUSIC", 8);

-- INSERT MUSICA 
INSERT INTO MUSICA(NOME, ID_ARTISTA, TEMPO_MINUTOS, DATA_PUBLICACAO) VALUES
("Perferct", 1, 4.23, '2017-11-09'),
("Shape of You", 1, 4.23, '2017-01-30'),
("drivers license", 2, 4.07, '2021-01-08'),
("happier", 2, 2.56, '2021-05-21'),
("Peaches", 3, 3.17, '2021-03-19'),
("Baby", 3, 3.19, '2010-02-19'),
("Hello", 4, 6.06, '2015-10-23'),
("Someone Like You", 4,  4.44, '2011-09-29'),
("Quer Voar", 5, 4.31, '2021-08-10'),
("Maquina do tempo", 5, 3.50, '2020-09-10'),
("Mustang Preto", 6, 3.54, '2021-10-10'),
("Dia azul", 6, 2.17, '2021-04-01'),
("Lagrimas de crocodilo", 7, 3.16, '2021-10-05'),
("Horas iguais", 7, 4.06, '2022-10-04'),
("Bala azul", 8, 3.20, '2020-08-28'),
("NAV", 8, 2.42, '2018-10-29'),
("Papo de Agustinho", 9, 3.06, '2022-09-27'),
("forget me too", 10, 2.57, '2020-10-22'),
("I Think I'm OKAY", 10, 2.55, '2019-06-13'),
("Só os loucos sabem", 11, 3.25, '2011-04-11'),
("emotions", 12, 2.11, '2019-04-19'),
("Thousand Miles", 13, 3.17, '2022-04-22'),
("do re mi", 14, 3.56, '2017-07-28');

-- INSERT PLAYS
INSERT INTO PLAY(ID_USUARIO, ID_ARTISTA, ID_MUSICA, ID_PLANO) VALUES
(1, 8, 16, 1),
(1, 10, 18, 1),
(2, 1, 1, 2),
(2, 1, 2, 2),
(3, 14, 23, 3),
(4, 12, 21, 4),
(4, 13, 22, 4),
(5, 4, 7, 5),
(5, 4, 8, 5),
(6, 2, 3, 5),
(6, 2, 4, 5),
(7, 3, 5, 1),
(8, 3, 6, 1);