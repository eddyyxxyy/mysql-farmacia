USE farmacia;

# Realizando consultas simples

-- Tipos Produtos
SELECT * FROM tipos_produto;
SELECT id, tipo FROM tipos_produto;
SELECT tipo, id FROM tipos_produto;
SELECT * FROM tipos_produto ORDER BY id DESC;

-- Fabricantes
SELECT * FROM fabricantes;
SELECT id, fabricante FROM fabricantes ORDER BY fabricante;

-- Médicos
SELECT * FROM medicos;
SELECT * FROM medicos ORDER BY crm;

-- Clientes
SELECT * FROM clientes;
SELECT * FROM clientes ORDER BY cidade;

-- Compras
SELECT * FROM compras;

-- Produtos da compra
SELECT * FROM produtos_compra;
SELECT * FROM produtos_compra WHERE quantidade > 2;

-- Receitas médicas
SELECT * FROM receitas_medica;
