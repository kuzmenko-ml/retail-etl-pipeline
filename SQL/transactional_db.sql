CREATE SCHEMA shop_sales;

CREATE TABLE shop_sales.customers(
	customer_id BIGINT PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	email VARCHAR(40),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE shop_sales.sales(
	sale_id BIGINT PRIMARY KEY,
	customer_id BIGINT REFERENCES shop_sales.customers(customer_id),
	sale_date TIMESTAMP
);

CREATE TABLE shop_sales.sale_items(
	sale_item_id BIGINT PRIMARY KEY,
	sale_id BIGINT REFERENCES shop_sales.sales(sale_id),
	product_id BIGINT,
	quantity INTEGER,
	unit_price NUMERIC(12,2),
	updated_at TIMESTAMP
);