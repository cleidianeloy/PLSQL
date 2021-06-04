 /*
8. Crie um relatório (query) para fechamento do pedido. O relatório deve conter:
        a)  O nome do cliente;
        b)  O valor total do pedido
        c)   Os itens do pedido com a descrição e marca do produto, quantidade e valor unitário e valor total daquele produto (quantidade * valor unitário)
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
9. Criar um relatório (query) para controle de estoque. O relatório deve conter:
        a) Nome do Produto
        b) Quantidade em estoque - por produto
        c) Quantidade em venda (Reservados) – por produto
        d) Quantidade estimada pós venda (em estoque – reservados) – por produto
*/
        SELECT PRODUTOS.NOME_PRODUTO, ESTOQUE.QUANTIDADE, ESTOQUE.RESERVA, (ESTOQUE.QUANTIDADE - ESTOQUE.RESERVA) AS POS_VENDA
        FROM ESTOQUE 
        LEFT JOIN PRODUTOS
        ON PRODUTOS.ID_PRODUTO = ESTOQUE.ID_PRODUTO
        
/*
10. Crie um relatório (query) de vendas. O relatório deve conter:
        a) Nome do cliente;
        b) Valor total do pedido;
        c) Ordenação por data decrescente e por maior valor decrescente;
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
