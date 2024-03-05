CREATE TABLE temp_tables.products_2 (
product_id VARCHAR PRIMARY KEY,
brand VARCHAR NOT NULL, 
model VARCHAR NOT NULL, 
Model_year VARCHAR NOT NULL, 
price NUMERIC NOT NULL 
); 

INSERT INTO temp_tables.products_2
(product_id,brand,model,model_year, price)

VALUES 
('Produto334', 'rivan', 'X1', '2021', '300000'),
('Produto444', 'rivan', 'X2', '2022', '400000'),
('Produto554', 'rivan', 'X3', '2024', '500000') 