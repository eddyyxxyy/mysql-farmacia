# Inserindo dados de teste

-- Tipos de Produtos

INSERT INTO tipos_produto (tipo) VALUES ('Remédios');
INSERT INTO tipos_produto (tipo) VALUES ('Cosméticos');
INSERT INTO tipos_produto (tipo) VALUES ('Diversos');

-- Fabricantes

INSERT INTO fabricantes (fabricante) VALUES ('Roche');
INSERT INTO fabricantes (fabricante) VALUES ('Bayer');
INSERT INTO fabricantes (fabricante) VALUES ('Pfizer');

-- Médicos

INSERT INTO medicos (nome, crm) VALUES ('Alfredo Muniz', '123456SP');
INSERT INTO medicos (nome, crm) VALUES ('Fernanda Silva', '123456MG');
INSERT INTO medicos (nome, crm) VALUES ('Julieta Santana', '123456RJ');

-- Clientes

INSERT INTO clientes (nome, cpf, logradouro, bairro, cidade, estado, cep) 
	VALUES ('Jonatan Lima', '123.456.789-10', 'Rua da Paz, 34', 'Jardim Solares', 'Franca', 'São Paulo', '12341-345');
INSERT INTO clientes (nome, cpf, logradouro, bairro, cidade, estado, cep) 
	VALUES ('Eduarda Duarte', '122.492.219-12', 'Rua Colibri, 202', 'Alvorada', 'Buritizal', 'São Paulo', '44401-555');
INSERT INTO clientes (nome, cpf, logradouro, bairro, cidade, estado, cep) 
	VALUES ('Angelina Cabrelli', '342.902.009-04', 'Rua Ismael Alonso, 11', 'Centro', 'Ribeirão Preto', 'São Paulo', '10377-555');

-- Telefones

INSERT INTO telefones_cliente (telefone, id_cliente) VALUES ('(16) 99234-5678', 1);
INSERT INTO telefones_cliente (telefone, id_cliente) VALUES ('(16) 99876-5432', 2);
INSERT INTO telefones_cliente (telefone, id_cliente) VALUES ('(16) 99221-1854', 3);

-- Produtos

INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_fabricante, id_tipo_produto) 
	VALUES ('Dipirona', 'Dores em geral', '2,3-diidro-1,5-dimetil-3-oxo-2-fenil-1H-pirazol-4-ilmetilamino', '12.44', 1, 1);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_fabricante, id_tipo_produto) 
	VALUES ('Sabonete', 'Limpeza das mãos', 'Glicerina, água, gordura', '3.99', 2, 2);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_fabricante, id_tipo_produto) 
	VALUES ('Protetor Solar', 'Proteção contra raios UV', 'Dióxido de titânio ou óxido de zinco', '12.44', 1, 2);

-- Compras

INSERT INTO compras (id_cliente, data) VALUES (1, '2019-03-10');
INSERT INTO compras (id_cliente, data) VALUES (2, '2019-04-15');
INSERT INTO compras (id_cliente, data) VALUES (1, '2019-05-18');

-- Produtos da Compra

INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (1, 1, 2);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (1, 2, 3);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (2, 3, 1);

-- Receitas Médicas

INSERT INTO receitas_medica (id_produto_compra, id_medico, receita) VALUES (1, 1, 'receita1.pdf');
INSERT INTO receitas_medica (id_produto_compra, id_medico, receita) VALUES (3, 2, 'receita2.pdf');
