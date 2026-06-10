# 🍡 Software Requirements Specification (SRS)
# Mochi House Reservation System

---

# 1. Introduction

## 1.1 Purpose

The purpose of this document is to define the software requirements for the Mochi House Reservation System. The system will allow customers to create and manage reservations efficiently, preventing scheduling conflicts and optimizing the use of restaurant tables.

---

## 1.2 Scope

The Mochi House Reservation System is a web application designed to manage restaurant reservations.

The system will allow users to:

- Register in the system.
- Log in.
- Create reservations.
- View reservations.
- Modify reservations.
- Cancel reservations.
- Check table availability.
- View available time slots.
- Assign tables based on availability.
- Prevent reservation conflicts.
- Store information in a database.

### Technologies Used

| Technology | Version |
|------------|---------|
| HTML | HTML5 |
| CSS | CSS3 |
| JavaScript | ECMAScript 2023 |
| Node.js | v22.16.0 |
| Express.js | v5.1.0 |
| MySQL | v8.0 |
| Git | v2.49 |
| GitHub | Web Platform |
| Visual Studio Code | v1.100 |

---

## 1.3 Target Audience

This document is intended for:

- Developers
- Testers
- Instructors
- Project Stakeholders
- Team Members

---

## 1.4 Definitions

| Term | Definition |
|------|------------|
| Reservation | Booking of a table for a specific date and time |
| Customer | User who requests a reservation |
| Table | Physical space assigned to a reservation |
| Availability | Tables available for reservation |
| Conflict | Two reservations assigned to the same table at the same date and time |

---

# 2. Overall Description

## 2.1 Product Perspective

The Mochi House Reservation System is a standalone web application connected to a MySQL database.

### System Components

- Frontend (HTML, CSS, JavaScript)
- Backend (Node.js, Express.js)
- Database (MySQL)

---

## 2.2 Product Functions

The system shall:

1. Register customers.
2. Authenticate users.
3. Create reservations.
4. View reservations.
5. Modify reservations.
6. Cancel reservations.
7. Display table availability.
8. Display available time slots.
9. Prevent reservation conflicts.
10. Manage reservation information.
11. Manage available tables.
12. Store information securely.

---

## 2.3 User Classes

### Customer

**Permissions:**

- Register.
- Log in.
- Create reservations.
- View reservations.
- Modify reservations.
- Cancel reservations.
- Check availability.
- View schedules.

---

## 2.4 Constraints

- An Internet connection is required.
- A MySQL database is required.
- A modern web browser is required.
- The backend server must be running.
- Reservations must be validated before being stored.
- Duplicate reservations are not allowed.

---

# 3. Functional Requirements

## FR-01 User Registration

### Description

The system shall allow new users to create an account.

---

## FR-02 User Login

### Description

The system shall authenticate registered users.

---

## FR-03 Create Reservation

### Description

The system shall allow customers to create reservations.

---

## FR-04 View Reservations

### Description

The system shall allow users to view registered reservations.

---

## FR-05 Modify Reservation

### Description

The system shall allow users to modify an existing reservation.

---

## FR-06 Cancel Reservation

### Description

The system shall allow users to cancel reservations.

---

## FR-07 Check Availability

### Description

The system shall display available tables for a specific date and time.

---

## FR-08 Conflict Detection

### Description

The system shall prevent duplicate reservations.

---

## FR-09 Table Information Inquiry

### Description

The system shall allow users to view information about available tables.

---

## FR-10 Schedule Inquiry

### Description

The system shall allow users to view available schedules.

---

## FR-11 Data Storage

### Description

The system shall store customer and reservation information.

---

## FR-12 Reservation Management

### Description

The system shall allow management of registered reservations.

---

# 4. Database Requirements

## 4.1 Table: Customers

| Field | Type |
|--------|------|
| customer_id | INT |
| name | VARCHAR(100) |
| email | VARCHAR(100) |
| phone | VARCHAR(15) |
| password | VARCHAR(255) |

## 4.2 Table: Schedules

| Field | Type |
|--------|------|
| schedule_id | INT |
| start_time | TIME |
| end_time | TIME |

## 4.3 Table: Tables

| Field | Type |
|--------|------|
| table_id | INT |
| table_number | INT |
| capacity | INT |

## 4.4 Table: Reservations

| Field | Type |
|--------|------|
| reservation_id | INT |
| customer_id | INT |
| table_id | INT |
| schedule_id | INT |
| reservation_date | DATE |
| number_of_people | INT |
| status | VARCHAR(20) |

## 4.5 Relationships

```text
CUSTOMERS (1)
      |
      |
      └──────< RESERVATIONS >───────┐
                                     |
                                     |
                                 TABLES (1)

                                     |
                                     |
                               SCHEDULES (1)
```

## 4.6 Business Rules

- A customer may have multiple reservations.
- A reservation belongs to a single customer.
- A reservation is associated with only one table.
- A reservation is associated with only one schedule.
- Two reservations cannot exist for the same table, date, and time.
- The number of guests cannot exceed the table capacity.
- Reservations cannot be created for past dates.
- A canceled reservation cannot be modified.
- All information must be validated before storage.

---

# 5. Non-Functional Requirements

## 5.1 Performance

- The system shall respond in less than 3 seconds.
- Reservation searches shall execute quickly.

## 5.2 Reliability

- Reservation information shall not be lost.
- Database transactions shall complete successfully.

## 5.3 Security

- Authentication shall be required to access the system.
- Passwords shall be stored in encrypted form.
- Unauthorized users shall not be able to modify data.

## 5.4 Usability

- The interface shall be intuitive.
- The reservation process shall require few steps.
- Error messages shall be understandable.

## 5.5 Compatibility

- Google Chrome
- Mozilla Firefox
- Microsoft Edge

## 5.6 Maintainability

- The system shall use an MVC architecture.
- Components shall be separated by responsibilities.
- The code shall be modular and documented.

---

# 6. Use Cases

## UC-01 User Registration

**Actor:** Customer

1. The user accesses the registration form.
2. The user enters their information.
3. The system validates the information.
4. The account is created.

---

## UC-02 User Login

**Actor:** Customer

1. The user enters their credentials.
2. The system validates the information.
3. Access is granted.

---

## UC-03 Create Reservation

**Actor:** Customer

1. The user selects a date.
2. The user selects a time slot.
3. The user specifies the number of guests.
4. The system checks availability.
5. The system assigns a table.
6. The reservation is stored.

---

## UC-04 Modify Reservation

**Actor:** Customer

1. The user selects a reservation.
2. The user modifies the information.
3. The system validates the changes.
4. The reservation is updated.

---

## UC-05 Cancel Reservation

**Actor:** Customer

1. The user selects a reservation.
2. The user confirms the cancellation.
3. The reservation status changes to canceled.

---

## UC-06 Check Availability

**Actor:** Customer

1. The user selects a date and time.
2. The system checks availability.
3. Available tables are displayed.

---

# 7. Traceability Matrix

| User Story | Requirement |
|------------|------------|
| User registers | FR-01 |
| User logs in | FR-02 |
| Create reservation | FR-03 |
| View reservations | FR-04 |
| Modify reservation | FR-05 |
| Cancel reservation | FR-06 |
| Check availability | FR-07 |
| Prevent conflicts | FR-08 |
| View tables | FR-09 |
| View schedules | FR-10 |
| Store data | FR-11 |
| Manage reservations | FR-12 |

---

# 8. Future Enhancements

- Reservation confirmation via email.
- Automatic reminders.
- Administrative dashboard.
- Reservation statistics and reports.
- Responsive design for mobile devices.
- Visual table selection.
- User profile management.

---

# End of Document
