CREATE DATABASE BDLIVRO
USE BDLIVRO

CREATE TABLE AUTOR(
	IDAUTOR INT NOT NULL PRIMARY KEY IDENTITY,
	NOME VARCHAR (50) NOT NULL
)
CREATE TABLE LIVRO(
	IDLIVRO INT NOT NULL PRIMARY KEY IDENTITY,
	IDAUTOR INT NOT NULL FOREIGN KEY REFERENCES AUTOR(IDAUTOR),
	NOME VARCHAR (50) NOT NULL,
	DATA_PUBLICACAO DATE NOT NULL
)
SELECT * FROM AUTOR
SELECT * FROM LIVRO

INSERT INTO AUTOR( NOME) VALUES ('DAN BROWN'), ('CARL SAGAN'), ('CLARISSE LINSPECTOR')
INSERT INTO LIVRO( NOME, IDAUTOR, DATA_PUBLICACAO) VALUES ('ORIGEM',1, '2017/10/07'), ('O MUNDO ASSOMBRADO PELOS DEMONIOS',2, '2006/07/10'), (' PERTO DO CORA��O SELVAGEM',3, '1943/12/10')