CREATE DATABASE fooddelivery;
USE fooddelivery;

-- Table: Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT
);

-- Table: Restaurants
CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100),
    location VARCHAR(100)
);

-- Table: Menu_Items
CREATE TABLE Menu_Items (
    item_id INT PRIMARY KEY IDENTITY(1,1),
    restaurant_id INT,
    name VARCHAR(100),
    price DECIMAL(6,2),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

-- Table: Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    order_date DATETIME DEFAULT GETDATE(),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Table: Order_Items
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES Menu_Items(item_id)
);
