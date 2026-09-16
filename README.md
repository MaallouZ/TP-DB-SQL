# SQL TP - Car Fleet Management

This project is a database exercise carried out as part of my school DB course. It focuses on relational database design, table creation, data insertion, SQL queries, and updates/deletes in MySQL.

## Project goal

The exercise consists of managing a fleet of cars with information such as:

- brand
- model
- year
- mileage
- color
- purchase price
- daily rental price
- availability

The project also introduces customer and rental management to work with relationships between tables and SQL joins.

## Database

The database used is:

- `parc_voitures`

It contains the following tables:

- `voiture`
- `client`
- `location`

## Repository structure

- [TP.md](TP.md): full assignment and exercise statement.
- [init-db.sql](init-db.sql): script creating the database and the `voiture` table with sample data.
- [add-other-tables.sql](add-other-tables.sql): creates the `client` and `location` tables and foreign key constraints.
- [1-select_requests.sql](1-select_requests.sql): file for SELECT queries.
- [2-data_update.sql](2-data_update.sql): file for data updates.
- [3-data_delete.sql](3-data_delete.sql): file for deletions.

## Prerequisites

Before running the project, make sure you have:

- MySQL installed and available
- a SQL client such as MySQL Workbench, phpMyAdmin, or the command line
- an environment that can execute SQL scripts

## Setup

1. Open MySQL.
2. Create the database if needed.
3. Run the following scripts in order:
   - [init-db.sql](init-db.sql)
   - [add-other-tables.sql](add-other-tables.sql)
4. Then complete the files:
   - [1-select_requests.sql](1-select_requests.sql)
   - [2-data_update.sql](2-data_update.sql)
   - [3-data_delete.sql](3-data_delete.sql)

## Learning objectives

This TP helps practice:

- database modeling
- table creation
- SQL queries
- joins and filtering
- data updates and deletion
- foreign keys and constraints

## Author

Project created as part of the Database course at EFREI.
