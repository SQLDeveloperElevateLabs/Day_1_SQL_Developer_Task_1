# Day_1_SQL_Developer_Task_1
First Task of SQL Developer  Internship @ Elevate Labs

Problem Statement/Guidelines for Task 1:

 1.Choose a domain (e.g., Library, E-commerce)
 
 2.Identify entities and relationships
 
 3.Create tables using CREATE TABLE
 
 4.Define primary and foreign keys


Answers for the Problem Statement/Guidelines:

1️⃣ Choose a domain
 Chosen an E-commerce / Coffee Shop Sales domain (Monday_Coffee database).

2️⃣ Identify entities and relationships

Entities (main objects to store data about):

City – stores city information (city_table)

Customer – stores customer information (customer_table)

Product – stores products sold (product_table)

Sales – stores transaction/sale details (sales_table)

Relationships:

City ↔ Customer: One-to-Many → a city can have multiple customers, but each customer belongs to only one city.

Customer ↔ Sales: One-to-Many → a customer can have multiple sales, each sale belongs to one customer.

Product ↔ Sales: One-to-Many → a product can appear in multiple sales, each sale refers to one product.

3️⃣ Created tables using CREATE TABLE query in PostgreSQL

4️⃣ Define primary and foreign keys

Primary Keys (uniquely identify each record):

city_table.city_id

customer_table.customer_id

product_table.product_id

sales_table.sale_id

Foreign Keys (define relationships between tables):

customer_table.city_id → references city_table.city_id (Customer belongs to a City)

sales_table.customer_id → references customer_table.customer_id (Sale belongs to a Customer)

sales_table.product_id → references product_table.product_id (Sale refers to a Product)


Steps Followed to Complete the task in PostgreSQL:

1.Created a database named Monday_Coffee.

2.Dropped existing tables if they existed (DROP TABLE IF EXISTS) to avoid conflicts.

3.Created city_table with columns: city_id (PK), city_name, population, estimated_rent, city_rank.

4.Created customer_table with columns: customer_id (PK), customer_name, city_id (FK referencing city_table.city_id).

5.Created product_table with columns: product_id (PK), product_name, price.

6.Created sales_table with columns: sale_id, sale_date, product_id (FK referencing product_table.product_id), customer_id (FK  referencing customer_table.customer_id), total, rating.

7.Defined primary keys for each table to uniquely identify records.

8.Defined foreign keys to establish relationships:

9.customer_table.city_id → city_table.city_id

10.sales_table.customer_id → customer_table.customer_id

11.sales_table.product_id → product_table.product_id

12.Verified table creation using SELECT * FROM table_name for each table.

13.Resulted in a structured database ready for storing and analyzing sales, products, customers, and city data.
 
