# Database Schema
## Mochi House Reservation System

---

# General Description

The Mochi House Reservation System database was designed using the relational model to manage table availability within the restaurant through validations based on date, time, and selected table.

The system allows customer registration, management of available tables, and storage of reservations while preventing scheduling conflicts.

The main business logic of the system is to prevent the same table from being reserved twice at the same date and time.

---

# System Tables

The system consists of the following tables:

- customers
- tables
- schedules
- reservations

---

# Table: customers

## Description

The `customers` table stores information about customers who make reservations at the restaurant.

---

## Fields

| Field | Type | Constraints |
|--------|------|-------------|
| customer_id | INT | PK, AUTO_INCREMENT |
| full_name | VARCHAR(100) | NOT NULL |
| email | VARCHAR(100) | NOT NULL |
| phone | VARCHAR(15) | NOT NULL |

---

## Primary Key

- `customer_id`

---

## Relationships

- One customer can have many reservations.
- 1:N relationship with `reservations`.

---

# Table: tables

## Description

The `tables` table stores information about the restaurant's tables.

Each table has a number, capacity, and availability status.

---

## Fields

| Field | Type | Constraints |
|--------|------|-------------|
| table_id | INT | PK, AUTO_INCREMENT |
| table_number | INT | UNIQUE, NOT NULL |
| capacity | INT | NOT NULL |
| status | ENUM('Available','Occupied','Maintenance') | DEFAULT 'Available' |

---

## Primary Key

- `table_id`

---

## Relationships

- One table can have many reservations.
- 1:N relationship with `reservations`.

---

# Table: schedules

## Description

The `schedules` table stores the valid reservation time slots.

The system only allows reservations between 10:00 AM and 10:00 PM.

---

## Fields

| Field | Type | Constraints |
|--------|------|-------------|
| schedule_id | INT | PK, AUTO_INCREMENT |
| reservation_time | TIME | NOT NULL |

---

## Primary Key

- `schedule_id`

---

## Relationships

- One schedule can be associated with many reservations.
- 1:N relationship with `reservations`.

---

# Table: reservations

## Description

The `reservations` table is the main table of the system.

It stores all information related to reservations made by customers.

---

## Fields

| Field | Type | Constraints |
|--------|------|-------------|
| reservation_id | INT | PK, AUTO_INCREMENT |
| customer_id | INT | FK, NOT NULL |
| table_id | INT | FK, NOT NULL |
| schedule_id | INT | FK, NOT NULL |
| reservation_date | DATE | NOT NULL |
| comments | TEXT | NULL |

---

## Primary Key

- `reservation_id`

---

## Foreign Keys

| Field | Reference |
|--------|-----------|
| customer_id | customers(customer_id) |
| table_id | tables(table_id) |
| schedule_id | schedules(schedule_id) |

---

## Relationships

- Many reservations belong to one customer.
- Many reservations may use the same table at different times.
- Many reservations may share the same schedule as long as the tables are different.

---

# Main Constraint

The system uses a constraint to prevent duplicate reservations.

```sql
UNIQUE(table_id, reservation_date, schedule_id)
```

This constraint prevents the same table from being reserved twice at the same date and time.

---

# Schedule Validation

The system only allows reservations between:

- 10:00 AM
- 10:00 PM

If a user attempts to select a time outside this range, the reservation is automatically blocked.

---

# Layout Functionality

The restaurant's visual layout depends directly on the information stored in the `reservations` table.

When a user selects a date and time:

- The system retrieves existing reservations.
- It detects which tables are already occupied.
- It updates table availability visually.

This allows the same table to be used multiple times throughout the day at different time slots.

---

# Data Types Used

| Type | Usage |
|--------|-------|
| INT | Identifiers and capacities |
| VARCHAR | Names, emails, and phone numbers |
| DATE | Dates |
| TIME | Time slots |
| TEXT | Comments |
| ENUM | Status values |

---

# Referential Integrity

Foreign keys ensure that:

- No reservation exists without a customer.
- No reservation exists without a table.
- No reservation exists without a schedule.

---

# General Relationships

| Table | Relationship | Related Table |
|--------|-------------|--------------|
| customers | 1:N | reservations |
| tables | 1:N | reservations |
| schedules | 1:N | reservations |

---

# SQL Script

```sql
CREATE DATABASE mochi_house;
USE mochi_house;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL
);

CREATE TABLE tables (
    table_id INT AUTO_INCREMENT PRIMARY KEY,
    table_number INT UNIQUE NOT NULL,
    capacity INT NOT NULL,
    status ENUM('Available', 'Occupied', 'Maintenance')
    DEFAULT 'Available'
);

CREATE TABLE schedules (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_time TIME NOT NULL
);

CREATE TABLE reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,

    customer_id INT NOT NULL,
    table_id INT NOT NULL,
    schedule_id INT NOT NULL,

    reservation_date DATE NOT NULL,
    comments TEXT,

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_table
        FOREIGN KEY (table_id)
        REFERENCES tables(table_id),

    CONSTRAINT fk_schedule
        FOREIGN KEY (schedule_id)
        REFERENCES schedules(schedule_id),

    CONSTRAINT unique_reservation
        UNIQUE(table_id, reservation_date, schedule_id)
);
```

---

# Conclusion

The relational structure of the Mochi House Reservation System allows proper management of table availability through relationships between customers, tables, schedules, and reservations.

Additionally, the `UNIQUE` constraint prevents duplicate reservation conflicts and ensures an organized and efficient restaurant reservation management system.
