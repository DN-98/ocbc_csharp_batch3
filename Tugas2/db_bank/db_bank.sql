CREATE TABLE tb_costumers(
costumer_id INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(100) NOT NULL,
phoneNumber VARCHAR(15) NOT NULL,
address1 TEXT NOT NULL,
address2 TEXT,
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
postCode VARCHAR(10) NOT NULL,
salesRep_Employee_id INT NOT NULL,
creditLimit FLOAT
);

ALTER TABLE costumers
ADD CONSTRAINT FK_salesRep 
FOREIGN KEY (salesRep_Employee_id) 
REFERENCES employee (employee_id) 
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

INSERT INTO costumers(FirstName, LastName, city, phoneNumber, address1, state, postCode, salesRep_Employee_id) VALUES
('ABC', 'ABC', 'PASURUAN', '0811234456', 'Jl. ABCDEFG' , 'INDONESIA', '133231', '10'),
('DEF', 'DEF', 'JAKARTA', '0815676412', 'Jl. ABCDEFG' , 'INDONESIA', '125231', '10'),
('GHI', 'DEF', 'BANDUNG', '0813456134', 'Jl. ABCDEFG' , 'INDONESIA', '128231', '10'),
('JKL', 'AEF', 'PASURUAN', '0811234478', 'Jl. ABCDEFG' , 'INDONESIA', '113231', '10'),
('LMN', 'BEF', 'JAKARTA', '0815676490', 'Jl. ABCDEFG' , 'BRUNEI', '123231', '10'),
('OPQ', 'CEF', 'PASURUAN', '0811231205', 'Jl. ABCDEFG' , 'BRUNEI', '123231', '11'),
('RST', 'FEF', 'JAKARTA', '0815673205', 'Jl. ABCDEFG' , 'BRUNEI', '123231', '11'),
('UVW', 'GEF', 'PASURUAN', '0811234505', 'Jl. ABCDEFG' , 'BRUNEI', '122231', '11'),
('YXZ', 'HEF', 'JAKARTA', '0815676675', 'Jl. ABCDEFG' , 'BRUNEI', '123131', '11'),
('CBA', 'IEF', 'PASURUAN', '0811238905', 'Jl. ABCDEFG10' , 'BRUNEI', '123231' , '10'),
('FED', 'DEF', 'JAKARTA', '0815670905', 'Jl. ABCDEFG' , 'BRUNEI', '121231' , '10');

CREATE TABLE tb_employee(
employee_id INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(100) NOT NULL,
extension VARCHAR (15),
email VARCHAR(100),
office_id INT NOT NULL,
reportsTo INT NOT NULL,
jobTitle VARCHAR(100) NOT NULL,
);

ALTER TABLE employee 
ADD CONSTRAINT FK_reportsTo
FOREIGN KEY (reportsTo) 
REFERENCES employee (employee_id) 
	ON DELETE NO ACTION 
	ON UPDATE NO ACTION;

ALTER TABLE employee 
ADD CONSTRAINT FK_office 
FOREIGN KEY office_id 
REFERENCES offices (office_id) 
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

INSERT INTO employee(FirstName, LastName, email, office_id, reportsTo, jobTitle) VALUES
('Freya', 'Maxwell', 'freyamaxwell@frm.co.id', 1, 1, 'CEO'),
('Steve', 'Maxwell', 'stevemaxwell@frm.co.id', 1, 1, 'COO'),
('Naomi', 'Keith', 'naomikeith@frm.co.id', 1, 1, 'CTO'),
('Laura', 'Maxwell', 'lauramaxwell@frm.co.id', 1, 1, 'CFO'),
('Maya', 'Stonefield', 'mayastonefield@frm.co.id', 1, 1, 'CMO'),
('Marcel', 'Gerald', 'marcelgerald@frm.co.id', 2, 2, 'Manager of HRD'),
('Steven', 'Phillips', 'stevenphillips@frm.co.id', 2, 3, 'Manager of IT Department'),
('Carmilla', 'Beck', 'carmillabeck@frm.co.id', 3, 5, 'Manager of Marketing and Sales Department'),
('Xavier', 'Tan', 'xaviertan@frm.co.id', 2, 7, 'IT STAFF'),
('Soya', 'Swift', 'soyaswift@frm.co.id', 3, 8, 'Marketing Officer'),
('Marcellia', 'Rein', 'marcelliarein@frm.co.id', 3, 8, 'Sales Officer'),
('Dana', 'Baek', 'danabaek@frm.co.id', 2, 6, 'HR Staff');


CREATE TABLE productLines(
	productLine_id INT IDENTITY(1,1) PRIMARY KEY,
	textDesc TEXT,
	htmlDesc TEXT,
	img_loc TEXT
);

CREATE TABLE orderDetails(
	orderTrans_id INT IDENTITY(1,1) PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantityOrder INT,
	priceEach FLOAT,
	orderLine_id INT
);

ALTER TABLE orderDetails
ADD CONSTRAINT FK_product 
FOREIGN KEY product_id 
REFERENCES products (product_id) 
	ON DELETE SET NULL 
	ON UPDATE CASCADE;

ALTER TABLE orderDetails 
ADD CONSTRAINT FK_order 
FOREIGN KEY (order_id) 
REFERENCES orders (order_id) 
	ON DELETE CASCADE 
	ON UPDATE CASCADE;

INSERT INTO orderDetails(order_id, product_id, quantityOrder, priceEach) VALUES
(1, 3, 1, 50999000),
(1, 3, 1, 50999000),
(2, 11, 2, 70999000),
(2, 12, 1, 17799000),
(2, 13, 2, 16799000),
(3, 12, 1, 17799000),
(3, 13, 3, 16799000),
(4, 10, 2, 6999000),
(4, 12, 1, 17799000),
(5, 11, 3, 70999000),
(6, 13, 1, 16799000),
(7, 5, 2, 24999000),
(7, 6, 1, 22499000),
(8, 4, 1, 27999000),
(9, 4, 1, 27999000),
(10, 3, 1, 50999000),
(11, 6, 1, 22499000),
(11, 7, 1, 22499000),
(11, 8, 5, 15299000);


CREATE TABLE orders(
	order_id INT IDENTITY(1,1) PRIMARY KEY,
	orderDate DATE,
	requiredDate DATE,
	shipDate DATE,
	status INT,
	comments TEXT,
	costumer_id INT
);

ALTER TABLE orders 
ADD CONSTRAINT FK_customer 
FOREIGN KEY (costumer_id) 
REFERENCES costumers (costumer_id) 
	ON DELETE NO ACTION 
	ON UPDATE CASCADE;

INSERT INTO orders(orderDate, requiredDate, shipDate, costumer_id) VALUES
(GETDATE() - 2, GETDATE() + 1, GETDATE() - 2, 1),
(GETDATE() - 2, GETDATE() + 1, GETDATE() - 2, 2),
(GETDATE() - 2, GETDATE() + 1, GETDATE() - 2, 4),
(GETDATE() - 2, GETDATE() + 1, GETDATE() - 2, 5),
(GETDATE() - 2, GETDATE() + 1, GETDATE() - 2, 3),
(GETDATE() - 1, GETDATE() + 2, GETDATE() - 1, 3),
(GETDATE() - 1, GETDATE() + 2, GETDATE() - 1, 6),
(GETDATE() - 1, GETDATE() + 2, GETDATE() - 1, 4),
(GETDATE() - 1, GETDATE() + 2, GETDATE() - 1, 2),
(GETDATE(), GETDATE() + 3, GETDATE(), 1),
(GETDATE(), GETDATE() + 3, GETDATE(), 3);

CREATE TABLE payments(
	payment_id INT IDENTITY(1,1) PRIMARY KEY,
	costumer_id INT,
	checkNumber INT,
	paymentDate DATE,
	amount FLOAT
);

CREATE TABLE products(
	product_id INT IDENTITY(1,1) PRIMARY KEY,
	productName TEXT,
	productLine INT,
	productScale DATE,
	productVendor VARCHAR,
	productDesc TEXT,
	quantityInStock INT,
	buyPrice FLOAT,
	MSRP VARCHAR
);

ALTER TABLE products 
ADD CONSTRAINT FK_productLine
FOREIGN KEY (productLine)
REFERENCES productLines (productLine_id)
	ON DELETE SET NULL 
	ON UPDATE CASCADE;

INSERT INTO products(productName, productVendor, quantityInStock, buyPrice, MSRP) VALUES
('Zenbook Pro Duo 15 OLED UX582', 'ASUS', 5, 40999000, 50999000),
('Zenbook Pro 15 OLED UX535', 'ASUS', 3, 24999000, 27999000),
('Zenbook S UX393', 'ASUS', 0, 22999000, 24999000),
('Zenbook 14 UX435EG', 'ASUS', 0, 20499000, 22499000),
('Zenbook Flip 13 OLED UX363 i7', 'ASUS', 0, 20499000, 22499000),
('Vivobook S14 S433 i7', 'ASUS', 15, 14299000, 15299000),
('Vivobook Ultra 15 OLED K513', 'ASUS', 15, 9099000 , 10099000),
('Vivobook E410', 'ASUS', 10, 6599000, 6999000),
('ROG Zephyrus Duo 15 SE GX551', 'ASUS', 2, 60999000, 70999000),
('Vivobook Pro 15 OLED K3500PC', 'ASUS', 2, 15799000 , 17799000),
('Vivobook Pro 14 OLED K3400PH', 'ASUS', 1, 14799000, 16799000);

CREATE TABLE offices(
	office_id INT IDENTITY(1,1) PRIMARY KEY,
	city VARCHAR(50) NOT NULL,
	phoneNumber VARCHAR(15) NOT NULL,
	address1 TEXT NOT NULL,
	address2 TEXT,
	state VARCHAR(50) NOT NULL,
	postCode VARCHAR(10) NOT NULL,
	territory VARCHAR,
);

INSERT INTO offices(city, phoneNumber, address1, state, postCode)
VALUES
('JAKARTA', '(021) 29865920', 'Dipo Tower, Jl.Gatot Subroto No.51-52, Jakarta Pusat 7, Petamburan, Tanah Abang,', 'INDONESIA', '10260'),
('SURABAYA', '(031) 28937000', 'Jl. Mayjen HR. Muhammad No.36, Pradahkalikendal, Kec. Dukuhpakis', 'INDONESIA', '60189'),
('SURABAYA', '(031) 5458241', 'Jl. Raden Saleh No.10A, Bubutan, Kec. Bubutan', 'INDONESIA', '60174'),
('SURABAYA', '(031) 5320578', 'Jl. Pemuda No.104-106, Embong Kaliasin, Kec. Genteng', 'INDONESIA', '60271'),
('SURABAYA', '(031) 5678271', 'Jl. Ciliwung No.14, Darmo, Kec. Wonokromo', 'INDONESIA', '60241');
