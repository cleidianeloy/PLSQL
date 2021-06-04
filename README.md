

1. Criar um novo usuário de banco de dados e dar os privilégios necessários para criação\edição\consulta 

2. Com base no DER, crie as tabelas do banco de dados com as suas respectivas constraints (PKs, FKs, etc.)
        a) Para a tabela “ITEM_PEDIDOS”, a chave primária (PK) deverá ser composta pelos campos “ID_ITEM_PEDIDO” e “ID_PEDIDO” (FK da tabela “PEDIDO”). 
        b) O campo “ID_ITEM_PEDIDO” deverá ser sequencial em cada pedido. Exemplo ( ID_PEDIDO 123 >> ID_ITEM_PEDIDO 1, ID_PEDIDO 123 >> ID_ITEM_PEDIDO 2, ID_PEDIDO 456 > ID_ITEM_PEDIDO 1))
   
3. Criar sequences para auto incremento pas PKs das tabelas “CLIENTES”, “PEDIDOS”, “PRODUTOS” e “FORNECEDORES”.

4. Inserir dados nas tabelas conforme a massa repassada.
        a)Atenção para os itens que terão chave sequencial. Exemplo (ID_Fornecedor na tabela Produtos deve ter a informação relacionada ao nome da marca).  
5. Criar uma procedure para inserir clientes na base.

6. Criar uma procedure para registrar um pedido.
        a) Recebe:
                I. ID do cliente
        b) Na execução, chama a procedure para registro dos itens do pedido

7. Criar uma procedure para registrar os itens do pedido
        a) Recebe:  
                I.   ID do Pedido
                II.  IDs dos produtos 
                III. Quantidade por produto
                IV. Quantidade de itens no pedido
        b) Na execução, atualiza a tabela de Estoque reservando a quantidade solicitada.

8. Crie um relatório (query) para fechamento do pedido. O relatório deve conter:
        a)  O nome do cliente;
        b)  O valor total do pedido
        c)   Os itens do pedido com a descrição e marca do produto, quantidade e valor unitário e valor total daquele produto (quantidade * valor unitário)

9. Criar um relatório (query) para controle de estoque. O relatório deve conter:
        a) Nome do Produto
        b) Quantidade em estoque - por produto
        c) Quantidade em venda (Reservados) – por produto
        d) Quantidade estimada pós venda (em estoque – reservados) – por produto
     
10. Crie um relatório (query) de vendas. O relatório deve conter:
        a) Nome do cliente;
        b) Valor total do pedido;
        c) Ordenação por data decrescente e por maior valor decrescente;
