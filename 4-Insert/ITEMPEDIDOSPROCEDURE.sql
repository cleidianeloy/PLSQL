CREATE OR REPLACE PROCEDURE incluir_item
(
p_ID_PEDIDO ITEM_PEDIDOS.ID_PEDIDO%TYPE,
p_ID_ITEM_PEDIDO ITEM_PEDIDOS.ID_ITEM_PEDIDO%TYPE, 
p_PRODUTO VARCHAR2, 
p_QUANTIDADE ITEM_PEDIDOS.QUANTIDADE%TYPE)
IS
BEGIN

 INSERT INTO ITEM_PEDIDOS (ID_PEDIDO, ID_ITEM_PEDIDO,ID_PRODUTO, QUANTIDADE) 
 VALUES (p_ID_PEDIDO, p_ID_ITEM_PEDIDO, (SELECT ID_PRODUTO FROM PRODUTOS WHERE NOME_PRODUTO = p_PRODUTO), p_QUANTIDADE);

END;


--Linha 1
EXECUTE incluir_item(1,1,'Detergente',1);
--Linha 2
EXECUTE incluir_item(1,2,'Sardinha',3);
--Linha 3
EXECUTE incluir_item (2,1,'Farinha de Trigo',2);
--Linha 4
EXECUTE incluir_item (2,2,'Suco em Pó',2);
--Linha 5
EXECUTE incluir_item(3,1,'Molho de Tomate',3);
--Linha 6
EXECUTE incluir_item (3,2,'Sal',5);
--Linha 7
EXECUTE incluir_item (3,3,'Mistura para Bolo',5);
--Linha 8
EXECUTE incluir_item (4,1,'Margarina',3);
--Linha 9
EXECUTE incluir_item (4,2,'Sabonete',2);
--Linha 10
EXECUTE incluir_item (5,1,'Arroz',2);
--Linha 11
EXECUTE incluir_item (6,1,'Óleo',4);
--Linha 12
EXECUTE incluir_item (6,2,'Esponja',5);
--Linha 13
EXECUTE incluir_item (7,1,'Manteiga',3);
--Linha 14
EXECUTE incluir_item (7,2,'Margarina',3);
--Linha 15
EXECUTE incluir_item (7,3,'Açúcar',2);
--Linha 16
EXECUTE incluir_item (8,1, 'Arroz',1);
--Linha 17
EXECUTE incluir_item (8,2,'Feijão',5);
--Linha 18
EXECUTE incluir_item (8,3,'Água Sanitária',1);
--Linha 19
EXECUTE incluir_item (9,1,'Bolacha Cream Cracker',2);
--Linha 20
EXECUTE incluir_item (9,2,'Bolacha Recheada',2);
--Linha 21 --
EXECUTE incluir_item(10,1,'Sardinha',2);
--Linha 22
EXECUTE incluir_item(11,1,'Achocolatado em Pó',1);
--Linha 23
EXECUTE incluir_item (11,2,'Arroz',5);
--Linha 24
EXECUTE incluir_item(11,3,'Macarrão',5);
--Linha 25
EXECUTE incluir_item (12,1,'Arroz',3);
--Linha 26
EXECUTE incluir_item (12,2,'Feijão',4);
--Linha 27
EXECUTE incluir_item (12,3,'Óleo',3);
--Linha 28
EXECUTE incluir_item (12,4,'Macarrão',5);
--Linha 29
EXECUTE incluir_item(12,5,'Sardinha',1);
--Linha 30
EXECUTE incluir_item (12,6,'Bolacha Recheada',2);
--Linha 31
EXECUTE incluir_item (12,7,'Molho de Tomate',4);
--Linha 32
EXECUTE incluir_item (13,1,'Sal',3);
--Linha 33
EXECUTE incluir_item (13,2,'Farinha de Rosca',2);
--Linha 34
EXECUTE incluir_item (13,3,'Macarrão',5);
--Linha 35
EXECUTE incluir_item (13,4,'Arroz',3);
--Linha 36
EXECUTE incluir_item (14,1,'Farinha de Trigo',3);
--Linha 37
EXECUTE incluir_item (14,2,'Sardinha',4);
--Linha 38
EXECUTE incluir_item (14,3,'Fubá',4);
--Linha 39
EXECUTE incluir_item (15,1,'Farinha de Rosca',3);
--Linha 40
EXECUTE incluir_item (15,2,'Achocolatado em Pó',1);
--Linha 41
EXECUTE incluir_item (15,3,'Manteiga',5);
--Linha 42
EXECUTE incluir_item (15,4,'Açúcar',1);
--Linha 43
EXECUTE incluir_item (16,1,'Milho para Pipoca',2);
--Linha 44
EXECUTE incluir_item (17,1,'Amaciante',1);
--Linha 45
EXECUTE incluir_item (17,2,'Suco em Pó',1);
--Linha 46
EXECUTE incluir_item (18,1,'Sardinha',3);
--Linha 47
EXECUTE incluir_item (18,2,'Feijão',5);
--Linha 48
EXECUTE incluir_item (18,3,'Fubá',3);
--Linha 49
EXECUTE incluir_item (18,4,'Detergente',4);
--Linha 50
EXECUTE incluir_item (18,5,'Papel Higiênico',5);
--Linha 51
EXECUTE incluir_item (18,6,'Milho para Pipoca',4);
--Linha 52
EXECUTE incluir_item (18,7,'Molho de Tomate',4);
--Linha 53
EXECUTE incluir_item (19,1,'Farinha de Rosca',5);
--Linha 54
EXECUTE incluir_item(19,2,'Farinha de Trigo',2);
--Linha 55
EXECUTE incluir_item (20,1,'Creme Dental',5);
--Linha 56
EXECUTE incluir_item (20,2,'Água Sanitária',4);
--Linha 57
EXECUTE incluir_item (21,1,'Detergente',1);
--Linha 58
EXECUTE incluir_item (21,2,'Macarrão',2);
--Linha 59
EXECUTE incluir_item (22,1,'Maizena',5);
--Linha 60
EXECUTE incluir_item (22,2,'Sabão em Pó',3);
--Linha 61
EXECUTE incluir_item (22,3,'Suco em Pó',4);
--Linha 62
EXECUTE incluir_item (22,4,'Limpador Multi Uso',1);
--Linha 63
EXECUTE incluir_item (23,1,'Desinfetante',5);
--Linha 64
EXECUTE incluir_item (23,2,'Maizena',1);
--Linha 65
EXECUTE incluir_item (23,3,'Sabão em Pó',5);
--Linha 66
EXECUTE incluir_item (24,1,'Arroz',1);
--Linha 67
EXECUTE incluir_item (24,2,'Margarina',1);
--Linha 68
EXECUTE incluir_item (25,1,'Fubá',2);
--Linha 69
EXECUTE incluir_item (25,2,'Esponja',3);
--Linha 70
EXECUTE incluir_item (25,3,'Sabonete',4);
--Linha 71
EXECUTE incluir_item(26,1,'Papel Higiênico',4);
--Linha 72
EXECUTE incluir_item (26,2,'Creme Dental',2);
--Linha 73
EXECUTE incluir_item (26,3,'Feijão',4);
--Linha 74
EXECUTE incluir_item (26,4,'Farinha de Trigo',1);
--Linha 75
EXECUTE incluir_item (26,5,'Bolacha Cream Cracker',1);
