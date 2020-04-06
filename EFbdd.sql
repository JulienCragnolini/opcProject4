
CREATE TABLE label (
                id_lab INT AUTO_INCREMENT NOT NULL,
                category VARCHAR(50) NOT NULL,
                PRIMARY KEY (id_lab)
);


CREATE TABLE dishe (
                id_dish INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(100) NOT NULL,
                description VARCHAR(250) NOT NULL,
                price DECIMAL(10,2) NOT NULL,
                id_lab INT NOT NULL,
                PRIMARY KEY (id_dish)
);


CREATE TABLE payment (
                id_pay INT AUTO_INCREMENT NOT NULL,
                status VARCHAR(50) NOT NULL,
                amount DECIMAL(10,2) NOT NULL,
                payment_date DATETIME NOT NULL,
                PRIMARY KEY (id_pay)
);


CREATE TABLE address (
                id_add INT AUTO_INCREMENT NOT NULL,
                number INT NOT NULL,
                street VARCHAR(100) NOT NULL,
                city VARCHAR(100) NOT NULL,
                departement VARCHAR(100) NOT NULL,
                ZIP INT NOT NULL,
                country VARCHAR(100) NOT NULL,
                PRIMARY KEY (id_add)
);


CREATE TABLE user (
                id_us INT AUTO_INCREMENT NOT NULL,
                last_name VARCHAR(100) NOT NULL,
                first_name VARCHAR(100) NOT NULL,
                password VARCHAR(100) NOT NULL,
                id_add INT NOT NULL,
                PRIMARY KEY (id_us)
);


CREATE TABLE order (
                number INT NOT NULL,
                id_pay INT NOT NULL,
                status VARCHAR(50) NOT NULL,
                date_ordered DATETIME NOT NULL,
                date_delivred DATETIME NOT NULL,
                id_add INT NOT NULL,
                id_us INT NOT NULL,
                PRIMARY KEY (number)
);


CREATE TABLE order_dishe (
                number INT NOT NULL,
                id_dish INT NOT NULL,
                quantity_dishe INT NOT NULL,
                quantity_desserts INT NOT NULL,
                PRIMARY KEY (number, id_dish)
);


CREATE TABLE administration (
                id_us INT NOT NULL,
                arriving_hour TIME NOT NULL,
                departur_hour TIME NOT NULL,
                PRIMARY KEY (id_us)
);


CREATE TABLE customer (
                id_us INT NOT NULL,
                phone INT NOT NULL,
                email VARCHAR(150) NOT NULL,
                PRIMARY KEY (id_us)
);


CREATE TABLE dellivery (
                id_us INT NOT NULL,
                status VARCHAR(50) NOT NULL,
                position_x DECIMAL(10,6) NOT NULL,
                position_y DECIMAL(10,6) NOT NULL,
                quantity_dishe INT NOT NULL,
                quantity_desserts INT NOT NULL,
                PRIMARY KEY (id_us)
);


ALTER TABLE dishe ADD CONSTRAINT label_dishe_fk
FOREIGN KEY (id_lab)
REFERENCES label (id_lab)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE order_dishe ADD CONSTRAINT dishe_order_dishe_fk
FOREIGN KEY (id_dish)
REFERENCES dishe (id_dish)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE order ADD CONSTRAINT payment_order_fk
FOREIGN KEY (id_pay)
REFERENCES payment (id_pay)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE user ADD CONSTRAINT address_user_fk
FOREIGN KEY (id_add)
REFERENCES address (id_add)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE order ADD CONSTRAINT address_order_fk
FOREIGN KEY (id_add)
REFERENCES address (id_add)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE dellivery ADD CONSTRAINT user_dellivery_fk
FOREIGN KEY (id_us)
REFERENCES user (id_us)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE customer ADD CONSTRAINT user_customer_fk
FOREIGN KEY (id_us)
REFERENCES user (id_us)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE administration ADD CONSTRAINT user_administration_fk
FOREIGN KEY (id_us)
REFERENCES user (id_us)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE order ADD CONSTRAINT user_order_fk
FOREIGN KEY (id_us)
REFERENCES user (id_us)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE order_dishe ADD CONSTRAINT order_order_dishe_fk
FOREIGN KEY (number)
REFERENCES order (number)
ON DELETE NO ACTION
ON UPDATE NO ACTION;