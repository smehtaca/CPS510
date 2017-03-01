CREATE TABLE employee(
employee_name varchar(255) not null,
employee_id int not null,
manager_id int not null,
CONSTRAINT employee_pk PRIMARY KEY(employee_id, manager_id)
);

CREATE TABLE manufacturer(
manufacturer_name varchar(255) not null,
manufacturer_address varchar(255),
manufacturer_id int not null,
CONSTRAINT manufacturer_pk PRIMARY KEY(manufacturer_id)
);

CREATE TABLE store(
store_name varchar(255) not null,
store_address varchar(255),
employee_id int not null,
manager_id int not null,
store_number int not null,
CONSTRAINT store_pk PRIMARY KEY(store_number),
CONSTRAINT fk_employee_store FOREIGN KEY (employee_id,manager_id) REFERENCES employee(employee_id,manager_id)
);

CREATE TABLE product(
delivery_status varchar(255) not null,
title varchar(255) not null,
format varchar(255) not null,
quantity int not null,
location varchar(255),
genre varchar2(255),
price float not null ,
low_inventory_limit int not null,
store_number int not null,
product_id int not null,
CONSTRAINT product_pk PRIMARY KEY(product_id),
CONSTRAINT fk_store FOREIGN KEY (store_number) REFERENCES store(store_number)
);

CREATE TABLE manufacturer_product(
product_id int not null,
manufacturer_id int not null,
CONSTRAINT fk_product_manufacturer FOREIGN KEY(product_id) REFERENCES product(product_id),
CONSTRAINT fk_manufacturer FOREIGN KEY(manufacturer_id) REFERENCES manufacturer(manufacturer_id),
CONSTRAINT manufacturer_product__pk PRIMARY KEY(product_id,manufacturer_id)
);

CREATE TABLE employee_product(
product_id int not null,
employee_id int not null,
manager_id not null,
CONSTRAINT fk_product_employee FOREIGN KEY(product_id) REFERENCES product(product_id),
CONSTRAINT fk_employee_product FOREIGN KEY(employee_id,manager_id) REFERENCES employee(employee_id,manager_id),
CONSTRAINT employee_product_pk PRIMARY KEY(product_id,employee_id)
);

CREATE TABLE movie(
product_id int not null,
lead_actor varchar(255),
director varchar(255),
production_company varchar(255) not null,
CONSTRAINT movie_pk PRIMARY KEY(product_id),
CONSTRAINT fk_product_movie FOREIGN KEY(product_id) REFERENCES product(product_id)
);

CREATE TABLE music(
product_id int not null,
lead_artist varchar(255) not null,
producer varchar(255) not null,
record_label varchar(255),
CONSTRAINT music_pk PRIMARY KEY(product_id),
CONSTRAINT fk_product_music FOREIGN KEY(product_id) REFERENCES product(product_id)
);
