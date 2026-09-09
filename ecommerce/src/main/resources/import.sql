INSERT INTO categoria (id, nome, descricao) VALUES (1, 'Eletronicos', 'Tecnologia para o dia a dia');
INSERT INTO categoria (id, nome, descricao) VALUES (2, 'Livros', 'Livros impressos e digitais');
INSERT INTO categoria (id, nome, descricao) VALUES (3, 'Casa', 'Itens para casa e cozinha');
INSERT INTO categoria (id, nome, descricao) VALUES (4, 'Esportes', 'Produtos para praticas esportivas');
INSERT INTO categoria (id, nome, descricao) VALUES (5, 'Papelaria', 'Materiais para estudo e trabalho');

INSERT INTO produto (id, nome, descricao, preco, categoria_id) VALUES (1, 'Fone Bluetooth', 'Fone sem fio com cancelamento de ruido', 249.90, 1);
INSERT INTO produto (id, nome, descricao, preco, categoria_id) VALUES (2, 'Livro de Java', 'Guia pratico de programacao Java', 89.90, 2);
INSERT INTO produto (id, nome, descricao, preco, categoria_id) VALUES (3, 'Cafeteira', 'Cafeteira eletrica para seis xicaras', 179.50, 3);
INSERT INTO produto (id, nome, descricao, preco, categoria_id) VALUES (4, 'Bola de Futebol', 'Bola oficial para campo', 119.99, 4);
INSERT INTO produto (id, nome, descricao, preco, categoria_id) VALUES (5, 'Caderno', 'Caderno universitario de 200 folhas', 32.75, 5);

INSERT INTO cliente (id, nome, email, telefone) VALUES (1, 'Ana Martins', 'ana.martins@example.com', '11987654321');
INSERT INTO cliente (id, nome, email, telefone) VALUES (2, 'Bruno Lima', 'bruno.lima@example.com', '21976543210');
INSERT INTO cliente (id, nome, email, telefone) VALUES (3, 'Carla Souza', 'carla.souza@example.com', '31965432109');
INSERT INTO cliente (id, nome, email, telefone) VALUES (4, 'Diego Alves', 'diego.alves@example.com', '41954321098');
INSERT INTO cliente (id, nome, email, telefone) VALUES (5, 'Elisa Rocha', 'elisa.rocha@example.com', '51943210987');

INSERT INTO pedido (id, data, status, valor_total, cliente_id) VALUES (1, TIMESTAMP '2026-08-01 09:15:00', 'PAGO', 249.90, 1);
INSERT INTO pedido (id, data, status, valor_total, cliente_id) VALUES (2, TIMESTAMP '2026-08-02 10:30:00', 'PAGO', 89.90, 2);
INSERT INTO pedido (id, data, status, valor_total, cliente_id) VALUES (3, TIMESTAMP '2026-08-03 14:00:00', 'ENVIADO', 179.50, 3);
INSERT INTO pedido (id, data, status, valor_total, cliente_id) VALUES (4, TIMESTAMP '2026-08-04 16:45:00', 'PROCESSANDO', 119.99, 4);
INSERT INTO pedido (id, data, status, valor_total, cliente_id) VALUES (5, TIMESTAMP '2026-08-05 08:20:00', 'PAGO', 32.75, 5);

INSERT INTO item_pedido (id, quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 1, 249.90, 1, 1);
INSERT INTO item_pedido (id, quantidade, valor_unitario, pedido_id, produto_id) VALUES (2, 1, 89.90, 2, 2);
INSERT INTO item_pedido (id, quantidade, valor_unitario, pedido_id, produto_id) VALUES (3, 1, 179.50, 3, 3);
INSERT INTO item_pedido (id, quantidade, valor_unitario, pedido_id, produto_id) VALUES (4, 1, 119.99, 4, 4);
INSERT INTO item_pedido (id, quantidade, valor_unitario, pedido_id, produto_id) VALUES (5, 1, 32.75, 5, 5);

INSERT INTO pagamento (id, valor, data, status, tipo, pedido_id) VALUES (1, 249.90, TIMESTAMP '2026-08-01 09:16:00', 'APROVADO', 'CARTAO', 1);
INSERT INTO pagamento (id, valor, data, status, tipo, pedido_id) VALUES (2, 89.90, TIMESTAMP '2026-08-02 10:31:00', 'APROVADO', 'PIX', 2);
INSERT INTO pagamento (id, valor, data, status, tipo, pedido_id) VALUES (3, 179.50, TIMESTAMP '2026-08-03 14:01:00', 'APROVADO', 'CARTAO', 3);
INSERT INTO pagamento (id, valor, data, status, tipo, pedido_id) VALUES (4, 119.99, TIMESTAMP '2026-08-04 16:46:00', 'PENDENTE', 'BOLETO', 4);
INSERT INTO pagamento (id, valor, data, status, tipo, pedido_id) VALUES (5, 32.75, TIMESTAMP '2026-08-05 08:21:00', 'APROVADO', 'PIX', 5);
