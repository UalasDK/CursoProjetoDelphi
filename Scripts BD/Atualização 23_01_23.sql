USE VENDAS_UALAS

DELETE FROM Categorias 

SELECT * FROM Categorias

--A função abaixo reseta o auto-incremento da tablela após a exclusão dos dados da mesma
DBCC CHECKIDENT('Categorias', RESEED, 0)

INSERT INTO Categorias (descricao) VALUES ('Celulares'), ('Computadores'), ('Tablets')