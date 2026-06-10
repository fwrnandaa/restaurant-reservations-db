# Technical Manual — Mochi House Reservation System

## General Information

**Project Name:** Mochi House Reservation System

**Version:** 1.0

**Description:**

Mochi House Reservation System is a web application developed to manage restaurant reservations efficiently. The system allows users to register customers, consult available schedules, and manage reservations through a relational database.

---

# Technologies Used

| Technology | Version | Purpose |
|------------|----------|----------|
| HTML5 | Current Standard | User interface structure |
| CSS3 | Current Standard | System styling and design |
| JavaScript | ES6 | Client-side interactivity |
| PHP | 8.x | Server-side logic |
| MySQL | 8.x | Database management |
| Apache | Included with XAMPP | Web server |
| XAMPP | 8.x | Local development environment |
| Git | 2.x | Version control |
| GitHub | Web service | Repository hosting |

---

# System Architecture

The system follows a structure that separates presentation, business logic, and data management components.

## Main Components

### Frontend

- Developed using HTML, CSS, and JavaScript.
- Provides forms and interfaces for reservation management.
- Displays reservation information to users.

### Backend

- Implemented using PHP.
- Processes user requests.
- Performs CRUD operations on the database.

### Database

- Implemented using MySQL.
- Stores information related to customers, tables, schedules, and reservations.

---

# Database Structure

The database used by the system is named:

```sql
mochi_house
```

## Table: `customers`

Stores customer information.

| Field | Type | Description |
|--------|-------|-------------|
| id_customer | INT (PK, AI) | Unique customer identifier |
| full_name | VARCHAR | Customer's full name |
| email | VARCHAR | Customer's email address |
| phone | VARCHAR | Customer's phone number |

---

## Table: `tables`

Stores information about restaurant tables.

| Field | Type | Description |
|--------|-------|-------------|
| id_table | INT (PK, AI) | Unique table identifier |
| table_number | INT | Assigned table number |

---

## Table: `schedules`

Contains the available reservation schedules.

| Field | Type | Description |
|--------|-------|-------------|
| id_schedule | INT (PK, AI) | Unique schedule identifier |
| reservation_time | TIME | Available reservation time |

---

## Table: `reservations`

Stores reservation records.

| Field | Type | Description |
|--------|-------|-------------|
| id_reservation | INT (PK, AI) | Unique reservation identifier |
| id_customer | INT (FK) | Associated customer |
| id_table | INT (FK) | Reserved table |
| id_schedule | INT (FK) | Selected schedule |
| reservation_date | DATE | Reservation date |
| comments | TEXT | Additional observations |

---

# Database Relationships

- One customer can have multiple reservations.
- One table can appear in multiple reservations on different dates and schedules.
- One schedule can be used in multiple reservations, provided there are no availability conflicts.
- Each reservation is associated with one customer, one table, and one schedule.

---

# Project Installation

## Prerequisites

Before running the system, ensure the following software is installed:

- XAMPP
- Git
- A modern web browser

---

## Step 1. Clone the Repository

```bash
git clone https://github.com/your-username/mochi_house.git
```

Alternatively, download the project as a ZIP file from GitHub.

---

## Step 2. Place the Project in XAMPP

Move the project folder into the following directory:

```text
xampp/htdocs/
```

Example:

```text
C:/xampp/htdocs/mochi_house
```

---

## Step 3. Start Required Services

Open the XAMPP Control Panel and start the following services:

- Apache
- MySQL

---

## Step 4. Create the Database

Access phpMyAdmin through the browser:

```text
http://localhost/phpmyadmin
```

Create a database named:

```sql
mochi_house
```

---

## Step 5. Import the Database Structure

Import the SQL file provided with the project to create the following tables:

- customers
- tables
- schedules
- reservations

---

## Step 6. Configure the Database Connection

Verify that the database connection file contains the correct parameters.

Example:

```php
$host = "localhost";
$user = "root";
$password = "";
$database = "mochi_house";
```

Update these values if your environment uses different credentials.

---

## Step 7. Run the Application

Open the following address in your web browser:

```text
http://localhost/mochi_house
```

---

# Main Functionalities

## Customer Management

The system allows customer information to be stored and associated with reservations.

Features:

- Register customers.
- Retrieve customer information linked to reservations.

---

## Reservation Management

The system provides tools for handling restaurant reservations.

Features:

- Create reservations.
- View registered reservations.
- Associate customers, tables, and schedules.
- Store additional comments related to reservations.

---

## Table Management

The system supports table assignment during the reservation process.

Features:

- View available registered tables.
- Assign tables when creating reservations.

---

## Schedule Management

The system manages reservation schedules.

Features:

- View available schedules.
- Select schedules during reservation creation.

---

## Reservation Dashboard

The system includes a dashboard section that displays stored reservations.

Displayed information includes:

- Customer name.
- Phone number.
- Assigned table.
- Selected schedule.
- Reservation date.
- Additional comments.

---

# Backup and Recovery

A complete database backup should be performed before implementing major changes.

## Create a Backup

```bash
mysqldump -u root -p mochi_house > backup.sql
```

---

## Restore a Backup

```bash
mysql -u root -p mochi_house < backup.sql
```

---

# Technical Considerations

- The system is intended to run in a local development environment using XAMPP.
- Data integrity is maintained through primary and foreign key constraints.
- Reservation availability should be validated before confirming a booking.
- Git and GitHub are used for version control and project collaboration.

---

# Maintenance Recommendations

Future versions of the system may include:

- Full user authentication and authorization.
- Automatic validation to prevent duplicate reservations.
- Features for editing and canceling reservations.
- Deployment to a production environment with enhanced security measures.

---

**This document was prepared for academic purposes as part of the development of the Mochi House Reservation System.**
