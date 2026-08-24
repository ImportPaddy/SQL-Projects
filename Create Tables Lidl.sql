CREATE TABLE Suppliers(
  supplier_id INT PRIMARY KEY,
  supplier_name VARCHAR(100),
  supplier_contact VARCHAR(100)
);

CREATE TABLE Inventory(
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  product_category VARCHAR(100),
  price FLOAT,
  stock INT,
  --foreign key
  supplier_id INT,
  CONSTRAINT fk_supplier_id
  FOREIGN KEY (supplier_id)
  REFERENCES Suppliers (supplier_id)
);

CREATE TABLE Customers(
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  address VARCHAR(100),
  phone_number VARCHAR(50),
  email VARCHAR(100),
  points INT
);

CREATE TABLE Sales(
  transaction_id INT PRIMARY KEY,
  date DATE, 
  quantity INT,
  --foreign key
  customer_id INT,
  CONSTRAINT fk_customer_id
  FOREIGN KEY (customer_id)
  REFERENCES Customers (customer_id)
);

CREATE TABLE SoldItems(
  sold_item_id INT PRIMARY KEY,
  sold_amount INT,
  --foreign keys
  product_id INT,
  CONSTRAINT fk_product_id
  FOREIGN KEY (product_id)
  REFERENCES Inventory (product_id),

  transaction_id INT,
  CONSTRAINT fk_transaction_id
  FOREIGN KEY (transaction_id)
  REFERENCES Sales (transaction_id)
);