create database Monday_Coffee

drop table if exists sales_table
create table sales_table
(sale_id bigint,
 sale_date date,
 product_id int,
 customer_id int,
 total bigint,
 rating int,
 constraint fk_product_id foreign key(product_id) references product_table(product_id),
 constraint fk_customer_id foreign key(customer_id) references customer_table(customer_id)
);

drop table if exists product_table
create table product_table
(product_id int primary key,
product_name varchar(50),
price bigint
);

drop table if exists customer_table
create table customer_table
(customer_id int primary key,
customer_name varchar(50),
city_id int,
constraint fk_city_id foreign key (city_id) references city_table(city_id)
);

drop table if exists city_table
create table city_table
(city_id int primary key,
city_name varchar(50),
population bigint,
estimated_rent bigint,
city_rank int
);

select * from sales_table
select * from product_table
select * from customer_table
select * from city_table

















