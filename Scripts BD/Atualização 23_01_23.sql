USE VENDAS_UALAS

DELETE FROM Categorias 

SELECT * FROM Categorias

--A fun��o abaixo reseta o auto-incremento da tablela ap�s a exclus�o dos dados da mesma
DBCC CHECKIDENT('Categorias', RESEED, 0)

INSERT INTO Categorias (descricao) VALUES ('Celulares'), ('Computadores'), ('Tablets')