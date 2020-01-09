CREATE TABLE category (
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)
);

INSERT into category (name, description, image_url, is_active) VALUES ('Laptop', 'This is some description for Laptop', 'IMG_URL1', true);
INSERT into category (name, description, image_url, is_active) VALUES ('Television', 'This is some description for Television', 'IMG_URL2', true);
INSERT into category (name, description, image_url, is_active) VALUES ('Mobile', 'This is some description for Mobile', 'IMG_URL3', true);
INSERT into category (name, description, image_url, is_active) VALUES ('Desktop', 'This is some description for Desktop', 'IMG_URL4', true);
INSERT into category (name, description, image_url, is_active) VALUES ('Tablet', 'This is some description for Tablet', 'IMG_URL5', true);

CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enable BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),
	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);

INSERT into user_detail (first_name, last_name,	role, enable, password, email,	contact_number) VALUES ('Virat', 'Kohli', 'ADMIN', true, '$2a$10$itC.PwC3ibz6lYfR/9sth.iHYlDY.okEwJ4vxSBUnylQ7cFonu7ii', 'vk@gmail.com', '8888888888');
INSERT into user_detail (first_name, last_name,	role, enable, password, email,	contact_number) VALUES ('Ravindra', 'Jadeja', 'SUPPLIER', true, '$2a$10$.jXSt3db0OvqJcUhZ9iaceQZx1KZOIwKCRj/CsUzjkmaxH.0A83RS', 'rj@gmail.com', '9999999999');
INSERT into user_detail (first_name, last_name,	role, enable, password, email,	contact_number) VALUES ('Ravichandran', 'Ashwin', 'SUPPLIER', true, '$2a$10$wFTKgtQbN/PGVXz3/hDLwOnfchB0tF44q8DR6dw5Kb5xTe4JsktSW', 'ra@gmail.com', '7777777777');

CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10, 2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	
	CONSTRAINT pk_product_id PRIMARY KEY(id),
	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail (id)
);

INSERT into product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id,	purchases, views)
VALUES('PRDABC123DEFX', 'iPhone 5s', 'Apple', 'Tis is one of the best phone available in market right now', 18000, 5, true, 3, 2, 0, 0);

INSERT into product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id,	purchases, views)
VALUES('PRDABC123DEFY', 'Samsung s7', 'Samsung', 'Smart Phone by Samsung', 32000, 2, true, 3, 3, 0, 0);

INSERT into product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id,	purchases, views)
VALUES('PRDABC123DEFZ', 'Google Pixel', 'Google', 'Tis is one of the best phone available in market right now', 57000, 5, true, 3, 2, 0, 0);

INSERT into product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id,	purchases, views)
VALUES('PRDABC123DEFA', 'Mackbook Pro', 'Apple', 'Tis is one of the best laptop available in market right now', 54000, 3, true, 1, 2, 0, 0);

INSERT into product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id,	purchases, views)
VALUES('PRDABC123DEFB', 'Dell Latitude E6510', 'Dell', 'Tis is one of the best laptop available in market right now', 48000, 5, true, 1, 3, 0, 0);