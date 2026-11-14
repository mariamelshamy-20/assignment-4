CREATE DATABASE store_management;
create table governorate (
    governorate_id int auto_increment primary key,
    name varchar(100) not null
);
create table supplier (
    supplier_id int auto_increment primary key,
    name varchar(100) not null,
    phone varchar(20),
    email varchar(100),
    brief_data text
);
create table product (
    product_id int auto_increment primary key,
    name varchar(100) not null,
    code varchar(50),
    description text,
    price decimal(10,2),
    supplier_id int not null unique,
    foreign key (supplier_id)
        references supplier(supplier_id)
);
create table store (
    store_id int auto_increment primary key,
    name varchar(100) not null,
    address varchar(255),
    product_id int,
    foreign key (product_id)
        references product(product_id)
);
create table governorate_store (
    governorate_id int,
    store_id int,
    primary key (governorate_id, store_id),
    foreign key (governorate_id)
        references governorate(governorate_id),
    foreign key (store_id)
        references store(store_id)
);

