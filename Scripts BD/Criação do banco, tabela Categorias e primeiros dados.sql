CREATE DATABASE Vendas_Ualas
USE Vendas_Ualas

CREATE TABLE Categorias(
	categoriaId INT NOT NULL IDENTITY,
	descricao varchar(30),
	CONSTRAINT idCategorias PRIMARY KEY (categoriaId)
)

INSERT INTO Categorias (descricao) VALUES ('Notebook'), ('Tablets'), ('Roteadores'), ('Perifericos')

SELECT * FROM categorias