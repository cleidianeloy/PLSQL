CREATE OR REPLACE TRIGGER ATUALIZA_RESERVA
AFTER INSERT OR UPDATE OR DELETE ON ITEM_PEDIDOS
DECLARE 
    CURSOR CUR_QUANTIDADE IS SELECT ID_PRODUTO FROM ITEM_PEDIDOS;
BEGIN 
     FOR IDENTIFICACAO IN CUR_QUANTIDADE LOOP
                projeto.atualiza_reserva(IDENTIFICACAO.ID_PRODUTO);
     END LOOP;
END;