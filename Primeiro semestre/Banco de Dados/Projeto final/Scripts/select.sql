USE loja_artesanatos;

SELECT * FROM Artesoes;
SELECT * FROM Produtos;
SELECT * FROM Clientes;
SELECT * FROM Vendas;
SELECT * FROM Itens_Venda;

-- // Mostrar o nome do cliente e das informações do produto que comprou
SELECT 
    v.ID_Venda,
    c.Nome AS Nome_Cliente,
    p.Nome AS Nome_Produto,
    iv.Quantidade,
    iv.Preco_Unitario,
    iv.Subtotal,
    v.Data_Venda,
    v.Valor_Total
FROM 
    Vendas v
JOIN 
    Clientes c ON v.Cliente_ID = c.ID_Cliente
JOIN 
    Itens_Venda iv ON v.ID_Venda = iv.Venda_ID
JOIN 
    Produtos p ON iv.Produto_ID = p.ID_Produto
ORDER BY 
    v.ID_Venda, p.Nome;
    
-- // Mostrar o nome do cliente e do produto que comprou
SELECT 
    v.ID_Venda,
    c.Nome AS Nome_Cliente,
    p.Nome AS Nome_Produto
FROM 
    Vendas v
JOIN 
    Clientes c ON v.Cliente_ID = c.ID_Cliente
JOIN 
    Itens_Venda iv ON v.ID_Venda = iv.Venda_ID
JOIN 
    Produtos p ON iv.Produto_ID = p.ID_Produto
ORDER BY 
    v.ID_Venda, p.Nome;
    
-- // Mostrar o nome e quantidade de produtos vendidos
SELECT 
    p.Nome AS Nome_Produto,
    COALESCE(SUM(iv.Quantidade), 0) AS Quantidade_Vendida
FROM 
    Produtos p
LEFT JOIN 
    Itens_Venda iv ON p.ID_Produto = iv.Produto_ID
GROUP BY 
    p.Nome
ORDER BY 
    Quantidade_Vendida DESC;
    
-- // Mostrar o nome do artesao e do prouto que fez
SELECT
	a.Nome AS Nome_Artesao,
    p.Nome AS Nome_Produto
FROM
	Artesoes a
JOIN
	Produtos p ON a.ID_Artesao = p.Artesao_ID;