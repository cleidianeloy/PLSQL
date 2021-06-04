CREATE OR REPLACE PROCEDURE REGISTRA_ITEM
( p_ID_PEDIDO PEDIDOS.ID_PEDIDO%TYPE,  p_ID_PRODUTO IDs_produtos_array, p_quantidade_por_produto Quantidade_produtos_array, p_quantidade_itens  NUMBER)
IS
BEGIN 
            FOR i IN 1..p_quantidade_itens  LOOP
            
                    INSERT INTO ITEM_PEDIDOS VALUES ( p_ID_PEDIDO , SEQUENCE_ITEM_PEDIDOS.NEXTVAL , p_ID_PRODUTO(i), p_quantidade_por_produto(i));
                    --UPDATE ESTOQUE SET RESERVA = RESERVA + p_quantidade_por_produto(i) WHERE ID_PRODUTO = p_ID_PRODUTO(i);

            END LOOP;

           PROJETO.ALTERA_SEQUENCIA('SEQUENCE_ITEM_PEDIDOS', p_quantidade_itens );

END;
--procedure para alterar a sequencia
CREATE OR REPLACE PROCEDURE ALTERA_SEQUENCIA ( SEQUENCIA VARCHAR2,  NUMERO NUMBER)
IS 
ST VARCHAR(1000);
N NUMBER;
BEGIN 
            ST := 'ALTER SEQUENCE ' || SEQUENCIA || ' INCREMENT BY -' || NUMERO;
            execute immediate ST;
            ST := 'SELECT ' || SEQUENCIA || '.NEXTVAL FROM DUAL ' ;
            execute immediate ST INTO N;
            ST := 'ALTER SEQUENCE ' || SEQUENCIA || ' INCREMENT BY 1';
            execute immediate ST;
END;