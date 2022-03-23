CREATE TABLE tb_orders(
order_id INT IDENTITY(1,1) PRIMARY KEY,
costumer_id INT NOT NULL,
order_date DATE,
amount DECIMAL
);

CREATE TABLE tb_products(
product_id INT IDENTITY(1,1) PRIMARY KEY,
product_name VARCHAR(100),
product_desc TEXT
);

CREATE TABLE tb_costumers(
costumer_id INT IDENTITY(1,1) PRIMARY KEY,
costumer_name VARCHAR(255)
);

INSERT INTO tb_costumers(costumer_name) VALUES
('Adam'),
('Andy'),
('Joe'),
('Sandy');

INSERT INTO tb_orders(costumer_id, order_date, amount)
VALUES
(1, '2019-02-11',149000.12),
(1, '2019-02-15',535000.13),
(3, '2019-02-17',176500.20),
(4, '2019-02-18',89000.37);

SELECT a.*, b.costumer_name  FROM tb_orders as a JOIN tb_costumers as b ON a.costumer_id=b.costumer_id;
SELECT a.*, b.costumer_name  FROM tb_orders as a JOIN tb_costumers as b ON a.costumer_id=b.costumer_id WHERE amount > 120000;