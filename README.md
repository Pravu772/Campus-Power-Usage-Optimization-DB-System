
#  Campus Power Usage Optimization – SQL Project

A database system built to track and optimize energy usage across different buildings, departments, and devices within a campus environment.

---

##  Objective

To create a normalized, relational SQL database system that helps:
- Track power usage per device, room, and department
- Monitor usage against thresholds
- Store logs of maintenance and optimization activities
- Generate meaningful power reports for analysis

---

##  Features

- Track device power usage logs  
- Monitor threshold limits per room  
- Maintain maintenance and optimization records  
- Generate reports using SELECT, JOINs, Aggregates, and Subqueries  
- Visualize schema through an ER Diagram

---

##  Technologies Used

- MySQL / SQLite  
- SQL (DDL + DML + Queries)  
- ER Diagram Tools (e.g., dbdiagram.io)  
- VS Code / MySQL Workbench

---

##  Project Structure

- `create_tables.sql` – SQL script to create all 10 related tables  
- `insert_data.sql` – Script containing 7–8 realistic records per table  
- `queries.sql` – 18 categorized SQL queries covering:  
  - SELECT  
  - JOINS  
  - GROUP BY + ORDER BY  
  - Aggregates  
  - Subqueries

---

##  ER Diagram

![ER Diagram](./ER_diagram.png)

> Clearly shows relationships between all tables using foreign keys.

---

##  Sample Queries

--  Used in: Basic JOIN
-- List departments and their building names
SELECT d.name AS department, b.name AS building
FROM Departments d
JOIN Buildings b ON d.building_id = b.building_id;

--  Used in: Aggregates + HAVING
-- Devices with total usage over 1 kWh
SELECT device_id, SUM(power_used_kwh) AS total_usage
FROM PowerUsageLogs
GROUP BY device_id
HAVING total_usage > 1;

##  Author
Made with ❤️ by PRAVIN M


