

1. Criar um novo usu�rio de banco de dados e dar os privil�gios necess�rios para cria��o\edi��o\consulta 

2. Com base no DER, crie as tabelas do banco de dados com as suas respectivas constraints (PKs, FKs, etc.)
        a) Para a tabela �ITEM_PEDIDOS�, a chave prim�ria (PK) dever� ser composta pelos campos �ID_ITEM_PEDIDO� e �ID_PEDIDO� (FK da tabela �PEDIDO�). 
        b) O campo �ID_ITEM_PEDIDO� dever� ser sequencial em cada pedido. Exemplo ( ID_PEDIDO 123 >> ID_ITEM_PEDIDO 1, ID_PEDIDO 123 >> ID_ITEM_PEDIDO 2, ID_PEDIDO 456 > ID_ITEM_PEDIDO 1))
   
3. Criar sequences para auto incremento pas PKs das tabelas �CLIENTES�, �PEDIDOS�, �PRODUTOS� e �FORNECEDORES�.

4. Inserir dados nas tabelas conforme a massa repassada.
        a)Aten��o para os itens que ter�o chave sequencial. Exemplo (ID_Fornecedor na tabela Produtos deve ter a informa��o relacionada ao nome da marca).  
5. Criar uma procedure para inserir clientes na base.

6. Criar uma procedure para registrar um pedido.
        a) Recebe:
                I. ID do cliente
        b) Na execu��o, chama a procedure para registro dos itens do pedido

7. Criar uma procedure para registrar os itens do pedido
        a) Recebe:  
                I.   ID do Pedido
                II.  IDs dos produtos 
                III. Quantidade por produto
                IV. Quantidade de itens no pedido
        b) Na execu��o, atualiza a tabela de Estoque reservando a quantidade solicitada.

8. Crie um relat�rio (query) para fechamento do pedido. O relat�rio deve conter:
        a)  O nome do cliente;
        b)  O valor total do pedido
        c)   Os itens do pedido com a descri��o e marca do produto, quantidade e valor unit�rio e valor total daquele produto (quantidade * valor unit�rio)

9. Criar um relat�rio (query) para controle de estoque. O relat�rio deve conter:
        a) Nome do Produto
        b) Quantidade em estoque - por produto
        c) Quantidade em venda (Reservados) � por produto
        d) Quantidade estimada p�s venda (em estoque � reservados) � por produto
     
10. Crie um relat�rio (query) de vendas. O relat�rio deve conter:
        a) Nome do cliente;
        b) Valor total do pedido;
        c) Ordena��o por data decrescente e por maior valor decrescente;
