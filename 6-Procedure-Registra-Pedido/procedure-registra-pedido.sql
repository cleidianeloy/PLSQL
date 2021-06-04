CREATE OR REPLACE PROCEDURE REGISTRA_PEDIDO(
p_ID_CLIENTE CLIENTES.ID_CLIENTE%TYPE,  p_PRODUTOS IDs_produtos_array, p_QUANTIDADE Quantidade_produtos_array)
IS  
ST varchar(1000);
n number;
e_TAMANHO_DIFERENTE exception;
BEGIN 
        IF (p_PRODUTOS.count != p_QUANTIDADE.count) THEN
            RAISE e_TAMANHO_DIFERENTE;
        ELSE 
                INSERT INTO PEDIDOS VALUES (SEQUENCE_PEDIDOS.NEXTVAL, p_ID_CLIENTE,  SYSDATE , 'Reservado');
        
                ST := 'SELECT MAX(ID_PEDIDO) FROM PEDIDOS';
                execute immediate ST INTO N; --COLOCA O RESULTADO DA PESQUISA DENTRO DE UMA VARIAVEL
                PROJETO.REGISTRA_ITEM(N, p_PRODUTOS, p_QUANTIDADE, p_PRODUTOS.count);
        END IF;
        EXCEPTION 
                WHEN e_TAMANHO_DIFERENTE THEN 
                        raise_application_error(-20100, 'A quantidade de produto e de valores informada não é igual a de quantidade referente ao produto ');
        
END;
/
--array para receber o id do produto 
CREATE OR REPLACE TYPE  IDs_produtos_array IS VARRAY(30) OF NUMBER;
--array para receber a quantidade de cada produto
CREATE OR REPLACE TYPE  Quantidade_produtos_array IS VARRAY(30) OF NUMBER;
--Abaixo rodando:
DECLARE
    v_PRODUTOS IDs_produtos_array;
    v_QUANTIDADE Quantidade_produtos_array;
BEGIN

     v_PRODUTOS := IDs_produtos_array();
     v_QUANTIDADE := Quantidade_produtos_array();
     v_PRODUTOS.EXTEND(3);
     v_QUANTIDADE.EXTEND(3);
     v_PRODUTOS(1) := 6;
     v_PRODUTOS(2) := 7 ;
     v_PRODUTOS(3) := 8;
     v_QUANTIDADE(1) := 2;
     v_QUANTIDADE(2) := 5;
     v_QUANTIDADE(3) := 1;

        PROJETO.REGISTRA_PEDIDO(90, v_PRODUTOS, v_QUANTIDADE);
END;
/