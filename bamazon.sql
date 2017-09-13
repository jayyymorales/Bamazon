DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Nike Flyknit Racers", "Shoes", 130, 3);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Addidas NMD", "Shoes", 120, 5);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Converse High Tops", "Shoes", 80, 4);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Joggers", "Appearal", 70, 10);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Nike Graphic Tee", "Appearal", 30, 7);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Nike Baseball Hat", "Appearal", 35, 6);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Nike Gym Bag", "Accessories", 50, 6);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Addidas Gym Bag", "Accessories", 70, 2);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Gym Socks", "Appearal", 15, 7);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("Gym Shorts", "Appearal", 70, 2);

SELECT * FROM bamazon.products;