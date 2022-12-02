USE music4u;

-- TABLE FORMA DE PAGAMENTO
-- DROP TABLE FORMA_PAGAMENTO
CREATE TABLE FORMA_PAGAMENTO(
	ID INT AUTO_INCREMENT NOT NULL,
	DESCRICAO VARCHAR(50) NOT NULL,
	CONSTRAINT PK_FORMA_PAGAMENTO PRIMARY KEY(ID)
);

-- TABLE PLANO
-- DROP TABLE PLANO
CREATE TABLE PLANO(
	ID INT AUTO_INCREMENT NOT NULL,
	NIVEL VARCHAR(10) NOT NULL,
    VALOR DECIMAL(4,2),
    CONSTRAINT PK_PLANO PRIMARY KEY(ID)
);

-- TABLE USUARIO
-- DROP TABLE USUARIO
CREATE TABLE USUARIO(
	ID INT AUTO_INCREMENT NOT NULL,
    NOME VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL,
    ID_FORMA_PAGAMENTO INT,
    CONSTRAINT PK_USUARIO PRIMARY KEY(ID),
    CONSTRAINT FK_USUARIO_FORMA_PAGAMENTO FOREIGN KEY(ID_FORMA_PAGAMENTO)
	REFERENCES FORMA_PAGAMENTO (ID)
);

-- TABLE COMPRAR_PLANO
-- DROP TABLE COMPRAR_PLANO
CREATE TABLE COMPRAR_PLANO(
	ID INT AUTO_INCREMENT NOT NULL,
    ID_FORMA_PAGAMENTO INT NOT NULL,
    ID_PLANO INT,
    ID_USUARIO INT,
    DATA_COMPRA DATE,
    CONSTRAINT PK_COMPRAR_PLANO PRIMARY KEY(ID),
    CONSTRAINT FK_COMPRAR_PLANO_FORMA_PAGAMENTO FOREIGN KEY(ID_FORMA_PAGAMENTO)
	REFERENCES FORMA_PAGAMENTO (ID),
    CONSTRAINT FK_COMPRAR_PLANO_PLANO FOREIGN KEY(ID_PLANO)
	REFERENCES PLANO (ID),
    CONSTRAINT FK_COMPRAR_PLANO_USUARIO FOREIGN KEY(ID_USUARIO)
	REFERENCES USUARIO (ID)
);

-- TABLE ARTISTA 
-- DROP TABLE ARTISTA 
CREATE TABLE ARTISTA(
	ID INT AUTO_INCREMENT NOT NULL,
    NOME VARCHAR(255) NOT NULL,
    DESCRICAO VARCHAR(255) NOT NULL,
    ID_FORMA_PAGAMENTO INT,
    CONSTRAINT PK_ARTISTA PRIMARY KEY(ID),
    CONSTRAINT FK_ARTISTA_FORMA_PAGAMENTO FOREIGN KEY(ID_FORMA_PAGAMENTO)
    REFERENCES FORMA_PAGAMENTO (ID)
);

-- TABLE MUSICA
-- DROP TABLE MUSICA
CREATE TABLE MUSICA(
	ID INT AUTO_INCREMENT NOT NULL,
    NOME VARCHAR(255) NOT NULL,
    ID_ARTISTA INT,
    TEMPO_MINUTOS DECIMAL(5,2),
    DATA_PUBLICACAO DATE,
    CONSTRAINT PK_MUSICA PRIMARY KEY (ID),
    CONSTRAINT FK_MUSICA_ARTISTA FOREIGN KEY(ID_ARTISTA)
    REFERENCES ARTISTA (ID)
);

-- TABLE PLAY
-- DROP TABLE PLAY
CREATE TABLE PLAY(
	ID INT AUTO_INCREMENT NOT NULL,
    ID_USUARIO INT,
    ID_ARTISTA INT,
    ID_PLANO INT,
    ID_MUSICA INT,
    CONSTRAINT PK_PLAY PRIMARY KEY(ID),
    CONSTRAINT FK_PLAY_USUARIO FOREIGN KEY(ID_USUARIO)
    REFERENCES USUARIO(ID),
    CONSTRAINT FK_PLAY_ARTISTA FOREIGN KEY(ID_ARTISTA)
    REFERENCES ARTISTA(ID),
    CONSTRAINT FK_PLAY_PLANO FOREIGN KEY(ID_PLANO)
    REFERENCES PLANO(ID),
    CONSTRAINT FK_PLAY_MUSICA FOREIGN KEY(ID_MUSICA)
    REFERENCES MUSICA(ID)
);