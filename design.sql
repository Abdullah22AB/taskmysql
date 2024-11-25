CREATE TABLE governments (

    id INT unsigned AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL

);

CREATE TABLE stores (
    id int unsigned AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(255),
    government_id int unsigned,
    FOREIGN KEY (government_id) REFERENCES governments(id)
);

create TABLE suppliers(
    id int unsigned AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    email varchar(100) UNIQUE,
    brief_data text 
);

create TABLE products(
    id int unsigned AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) not null,
    code varchar(50) UNIQUE not null,
    description text,
    price decimal not null,
    supplier_id int unsigned,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id) 
);

CREATE TABLE store_product (
    id int unsigned AUTO_INCREMENT PRIMARY KEY,
    store_id int unsigned UNIQUE,
    product_id int unsigned UNIQUE,
    quantity int DEFAULT 0,
    
    FOREIGN KEY(store_id) REFERENCES stores(id),
    FOREIGN KEY(product_id) REFERENCES products(id)

)