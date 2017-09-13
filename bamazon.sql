DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  item_quantity INT NOT NULL,
  PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, item_quantity)
VALUES ("Nike Flyknit Racers", "Shoes", 130, 3),
("Addidas NMD", "Shoes", 120, 5),
("Converse High Tops", "Shoes", 80, 4),
("Joggers", "Appearal", 70, 10),
("Nike Graphic Tee", "Appearal", 30, 7),
("Nike Baseball Hat", "Appearal", 35, 6),
("Nike Gym Bag", "Accessories", 50, 6),
("Addidas Gym Bag", "Accessories", 70, 2),
("Gym Socks", "Appearal", 15, 7),
("Gym Shorts", "Appearal", 70, 2)


SELECT * FROM bamazon.products;