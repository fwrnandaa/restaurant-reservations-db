# Data Dictionary — Mochi House Reservation System

## Table: `customers`

### Description
Stores information about customers who make reservations at the restaurant.

| Field | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| customer_id | INT | PK, AUTO_INCREMENT, NOT NULL | Unique customer identifier |
| full_name | VARCHAR(100) | NOT NULL | Customer's full name |
| email | VARCHAR(100) | UNIQUE, NOT NULL | Customer's email address |
| phone | VARCHAR(15) | NOT NULL | Customer's phone number |
| registration_date | DATETIME | DEFAULT CURRENT_TIMESTAMP | Date and time the customer was registered |

### Primary Key
- `customer_id`

### Relationships
- One customer can have many reservations.
- 1:N relationship with `reservations`.

---

# Table: `tables`

### Description
Stores information about the restaurant's tables and allows management of their capacity and availability.

| Field | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| table_id | INT | PK, AUTO_INCREMENT, NOT NULL | Unique table identifier |
| table_number | INT | UNIQUE, NOT NULL | Visible table number |
| capacity | INT | NOT NULL | Maximum number of guests allowed |
| zone | VARCHAR(50) | NOT NULL | Restaurant area or section |
| status | ENUM('available','occupied','maintenance') | DEFAULT 'available' | Current table status |

### Primary Key
- `table_id`

### Relationships
- One table can appear in many reservations.
- 1:N relationship with `reservations`.

---

# Table: `schedules`

### Description
Controls the allowed reservation schedule within the restaurant.

| Field | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| schedule_id | INT | PK, AUTO_INCREMENT, NOT NULL | Schedule identifier |
| opening_time | TIME | NOT NULL | Restaurant opening time |
| closing_time | TIME | NOT NULL | Restaurant closing time |
| active | BOOLEAN | DEFAULT TRUE | Indicates whether the schedule is enabled |

### Primary Key
- `schedule_id`

---

# Table: `reservations`

### Description
Main system table. Stores all information related to reservations made by customers.

| Field | Data Type | Constraints | Description |
|--------|-----------|-------------|-------------|
| reservation_id | INT | PK, AUTO_INCREMENT, NOT NULL | Unique reservation identifier |
| customer_id | INT | FK, NOT NULL | Customer who made the reservation |
| table_id | INT | FK, NOT NULL | Table assigned to the reservation |
| reservation_date | DATE | NOT NULL | Selected reservation date |
| reservation_time | TIME | NOT NULL | Selected reservation time |
| guest_count | INT | NOT NULL | Number of guests included in the reservation |
| comment | TEXT | NULL | Comments or special requests |
| status | ENUM('pending','confirmed','cancelled','completed') | DEFAULT 'pending' | Current reservation status |
| creation_date | DATETIME | DEFAULT CURRENT_TIMESTAMP | Date and time the reservation was created |

### Primary Key
- `reservation_id`

### Foreign Keys
- `customer_id` → `customers(customer_id)`
- `table_id` → `tables(table_id)`

### Relationships
- Many reservations belong to one customer.
- Many reservations may use the same table at different times.

### Important Constraints

```sql
UNIQUE(table_id, reservation_date, reservation_time)
```

This constraint prevents a table from being reserved twice at the same date and time.

---

# System Relationships

| Source Table | Relationship | Destination Table |
|--------------|--------------|------------------|
| customers | 1:N | reservations |
| tables | 1:N | reservations |

---

# Business Rules

## Schedule Validation

Reservations can only be made during the restaurant's operating hours:

- Opening Time: `10:00 AM`
- Closing Time: `10:00 PM`

If a user selects a time outside this range, the system automatically blocks the reservation.

---

## Availability Control

The system continuously validates:

- Selected table
- Date
- Time

If a reservation already exists with the same table, date, and time, the system marks the table as occupied and prevents duplicate reservations.

---

## Dynamic Availability

Tables automatically change status depending on the reservations registered for each time slot.

Example:

- Table 4 → Available at 2:00 PM
- Table 4 → Occupied at 6:00 PM

---

# Data Types Used

| Data Type | Usage Within the System |
|------------|------------------------|
| INT | Identifiers and quantities |
| VARCHAR | Names, emails, and phone numbers |
| DATE | Reservation dates |
| TIME | Reservation times |
| DATETIME | Complete date and time records |
| TEXT | Long comments |
| ENUM | Defined statuses |
| BOOLEAN | True/false values |

---

# Referential Integrity

The system uses a relational model to keep all information organized and prevent data duplication.

Primary Keys (`PK`) uniquely identify each record, while Foreign Keys (`FK`) correctly establish relationships between:

- Customers
- Tables
- Reservations

This ensures consistency, security, and control within the Mochi House Reservation System.
