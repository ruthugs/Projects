# End-to-End Pizza Management System

## Project Overview
This project focuses on creating an **End-to-End Pizza Management System** that covers all aspects of managing a pizza ordering system, from handling customer orders to managing pizza inventory and deliveries. The system consists of various components like tables, views, and stored procedures to ensure smooth operations of a pizza shop.

## Folder Structure
The project is organized into two main subfolders:

### 1. ER Diagram (Crow's Foot Notation)
This folder contains the Entity-Relationship (ER) diagram for the **Pizza Management System** using Crow's Foot notation. The diagram provides a visual representation of the relationships between different entities in the system such as customers, orders, pizzas, discounts.

- **ER Diagram**: Visual representation of the database schema and relationships.

### 2. MySQL Code Files
This folder contains the MySQL SQL code for creating and managing the database for the Pizza Management System. The files included in this folder are:

- **create_tables.sql**: SQL code to create the necessary tables in the database.
- **create_views.sql**: SQL code to create views that help in data abstraction.
- **drop_tables.sql**: SQL code to drop the tables in the database.
- **populate_tables.sql**: SQL code to populate the tables with sample data.
- **view_tables.sql**: SQL code to query and view the data from the tables.

## Project Details

### Database Schema
- **Customers Table**: Contains information about customers.
- **Pizzas Table**: Stores details about the pizzas offered in the system.
- **Pizzas Toppings Table**: Stores details about the pizzas toppings available for the order.
- **Orders Table**: Tracks customer orders, including pizza selections and status.
- **Delivery Table**: Stores delivery information for customer orders.
- **Discount Table**: Stores discount id information for customer orders.

### ER Diagram
The Crow's Foot ER diagram visually explains the relationships between tables such as:
- One-to-Many (1:N) relationship between **Customers** and **Orders**.
- Many-to-Many (M:N) relationship between **Orders** and **Pizzas**, handled by a junction table (e.g., `order_pizza`).

### SQL Code
The SQL code files are used to:
1. **Create Tables**: Define the structure of each table including columns and constraints.
2. **Create Views**: Simplify complex queries by defining views.
3. **Populate Tables**: Insert sample data into the tables for testing and demonstration.
4. **Drop Tables**: Remove all the tables and data from the database when needed.
5. **View Tables**: Query the tables to view the data stored in them.

## Instructions

### Prerequisites
- MySQL database server
- A MySQL client such as MySQL Workbench or the command line interface to execute SQL queries.

### Setup Instructions
1. Clone this repository or download the files.
2. Open the `create_tables.sql` file in your MySQL client and execute the queries to create the database schema.
3. Run the `populate_tables.sql` script to insert sample data.
4. Optionally, you can run the `create_views.sql` to generate views for simplified querying.
5. You can check the populated data using the `view_tables.sql` file.

### Example Usage
After setting up the database, you can start querying the system, such as:
- **View all pizzas**: `SELECT * FROM pizzas;`
- **View all orders for a customer**: `SELECT * FROM orders WHERE customer_id = 1;`
- **View all completed deliveries**: `SELECT * FROM delivery WHERE status = 'Completed';`

## Conclusion
This project aims to provide a complete solution for managing a pizza restaurant's operations using a relational database. 
The provided ER diagram and SQL scripts offer a clear foundation for building a fully functional Pizza Management System.

---
For any questions or issues, feel free to reach out!
Thank you!!

