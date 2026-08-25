# Snowflake Tutorial Assignment

This repository contains the SQL scripts, sample data, and screenshots for the Snowflake tutorial assignment, covering SnowSQL setup, object creation, data loading, and Time Travel.

## Repository Structure

- **`SQL/`** — SQL scripts for each tutorial question
- **`DATA/`** — Sample dataset(s) used for data loading (e.g. `student.csv`)
- **`Screenshots/`** — Terminal output screenshots showing execution and results

## Tutorial Questions

### 1. SnowSQL Login and Connection
Installed and configured SnowSQL, connected to a Snowflake account, and verified the connection by displaying the current user, role, warehouse, database, and schema.

### 2. Creation of Snowflake Objects
Created a database, schema, warehouse, table, and stage. Inserted sample student records and performed basic `SELECT`, `INSERT`, `UPDATE`, and `DELETE` operations on the `STUDENTS` table.

### 3. Data Loading Using SnowSQL
Created a sample CSV dataset (`student.csv`), uploaded it to a Snowflake stage using `PUT`, and loaded it into the `STUDENT_LOAD` table using `COPY INTO`. Verified successful loading via `SELECT`.

### 4. Snowflake Time Travel
Created the `TIME_TRAVEL_STUDENTS` table, inserted sample records, and performed `UPDATE`/`DELETE` operations. Used `AT(TIMESTAMP => ...)` to query the table as it existed before the changes.

### 5. Data Recovery Using Time Travel
Simulated an accidental deletion of a student record, then used Snowflake Time Travel to recover the deleted row and re-insert it into the live table — demonstrating a full recovery workflow.

## Tools Used
- SnowSQL CLI (v1.5.1)
- Snowflake (Standard Edition trial account)
- Windows PowerShell
