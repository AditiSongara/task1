# Food Delivery App - Database Schema

This project contains the SQL scripts and ER diagram for a **Food Delivery App** backend database. It is designed using **Microsoft SQL Server** and compatible with **SSMS (SQL Server Management Studio)**.

---

##  Objective

To practice and demonstrate database design fundamentals:
- Creating tables
- Defining primary and foreign key relationships
- Generating an ER diagram

---

##  Tools Used

- SQL Server Management Studio (SSMS)
- T-SQL (Transact-SQL)
- ER Diagram Designer (built-in with SSMS)

---

## Schema Overview

The schema includes 5 main entities:

1. **Customers**  
2. **Restaurants**  
3. **Menu_Items**  
4. **Orders**  
5. **Order_Items**  

Each entity has appropriate data types and constraints (primary keys, foreign keys, unique constraints, default values).

---

##  Relationships

- A **Customer** can place many **Orders**
- Each **Order** contains multiple **Order_Items**
- **Order_Items** are linked to **Menu_Items**
- **Menu_Items** belong to a **Restaurant**

---

##  Files Included

-  SQL script to create the full database schema in SQL Server
-  Entity-Relationship Diagram
-  word file with all details

---

## 🚀 How to Use

1. Open SSMS and connect to your SQL Server instance.
2. Create a new database (e.g. `FoodDeliveryApp`).
3. Run `schema.sql` to create all tables.
4. To view relationships visually:
   - Right-click on **Database Diagrams** → *New Database Diagram*
   - Add all 5 tables to view the complete ERD.

---


