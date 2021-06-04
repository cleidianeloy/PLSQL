 /*
8. Crie um relat�rio (query) para fechamento do pedido. O relat�rio deve conter:
        a)  O nome do cliente;
        b)  O valor total do pedido
        c)   Os itens do pedido com a descri��o e marca do produto, quantidade e valor unit�rio e valor total daquele produto (quantidade * valor unit�rio)
        */

            SELECT CLIENTES.NOME_CLIENTE,  SUM(VALOR_PRODUTO * QUANTIDADE) AS VALOR_TOTAL, 
            LISTAGG( nome_produto, '  ;   ') as produtos, LISTAGG(nome_marca , '  ;  ') as Marca_produtos, 
            LISTAGG(quantidade, '  ;   ') as quantidade,
            LISTAGG(TO_CHAR(VALOR_PRODUTO, '999G999G999G990D99'), '  ;  ')  AS VALOR_UNITARIO, 
            LISTAGG(TO_CHAR(VALOR_PRODUTO * ITEM_PEDIDOS.QUANTIDADE, '999G999G999G990D99'), '  ;  ')  AS valor_total_produto
            FROM CLIENTES
            RIGHT JOIN PEDIDOS
            ON CLIENTES.ID_CLIENTE = PEDIDOS.ID_CLIENTE
            RIGHT JOIN ITEM_PEDIDOS
            ON ITEM_PEDIDOS.ID_PEDIDO = PEDIDOS.ID_PEDIDO
            RIGHT JOIN PRODUTOS 
            ON ITEM_PEDIDOS.ID_PRODUTO = PRODUTOS.ID_PRODUTO
            RIGHT JOIN FORNECEDORES
            ON FORNECEDORES.ID_FORNECEDOR = PRODUTOS.ID_FORNECEDOR
            GROUP BY CLIENTES.NOME_CLIENTE, ITEM_PEDIDOS.ID_PEDIDO;

/*
9. Criar um relat�rio (query) para controle de estoque. O relat�rio deve conter:
        a) Nome do Produto
        b) Quantidade em estoque - por produto
        c) Quantidade em venda (Reservados) � por produto
        d) Quantidade estimada p�s venda (em estoque � reservados) � por produto
*/
        SELECT PRODUTOS.NOME_PRODUTO, ESTOQUE.QUANTIDADE, ESTOQUE.RESERVA, (ESTOQUE.QUANTIDADE - ESTOQUE.RESERVA) AS POS_VENDA
        FROM ESTOQUE 
        LEFT JOIN PRODUTOS
        ON PRODUTOS.ID_PRODUTO = ESTOQUE.ID_PRODUTO
        
/*
10. Crie um relat�rio (query) de vendas. O relat�rio deve conter:
        a) Nome do cliente;
        b) Valor total do pedido;
        c) Ordena��o por data decrescente e por maior valor decrescente;
*/
    SELECT   CLIENTES.NOME_CLIENTE, SUM(PRODUTOS.VALOR_PRODUTO) AS VALOR_TOTAL_PEDIDO
    FROM CLIENTES
    RIGHT JOIN PEDIDOS
    ON CLIENTES.ID_CLIENTE = PEDIDOS.ID_CLIENTE
    RIGHT JOIN ITEM_PEDIDOS
    ON ITEM_PEDIDOS.ID_PEDIDO = PEDIDOS.ID_PEDIDO
    RIGHT JOIN PRODUTOS 
    ON ITEM_PEDIDOS.ID_PRODUTO = PRODUTOS.ID_PRODUTO
    GROUP BY PEDIDOS.ID_PEDIDO, CLIENTES.NOME_CLIENTE,DATA_PEDIDO 
    ORDER BY DATA_PEDIDO DESC, MAX(VALOR_PRODUTO)  DESC;
