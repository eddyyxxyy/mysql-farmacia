USE farmacia;

# Realizando consultas complexas

# Compras
SELECT co.id AS "ID", cl.nome AS "Nome", co.data AS "Data da Compra"
FROM compras AS co, clientes AS cl
WHERE cl.id = co.id_cliente;

# Produtos compra
SELECT co.id AS 'Venda',
       cli.nome AS 'Cliente',
       CONCAT('R$', FORMAT(SUM(pr.preco_venda * pc.quantidade), 2, 'pt_BR')) AS Total,
       DATE_FORMAT(co.data, '%d/%m/%Y') AS Data
FROM produtos_compra AS pc, compras AS co, produtos AS pr, clientes AS cli
WHERE pc.id_compra = co.id AND pc.id_produto = pr.id AND cli.id = co.id_cliente
GROUP BY co.id;
