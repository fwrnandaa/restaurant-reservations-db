# User Manual — Mochi House Reservation System

## Introduction

The Mochi House Reservation System was developed to manage restaurant table reservations in an organized and efficient manner. Its main purpose is to control table availability through automatic validations based on the selected date, time, and table.

The system is designed to be used by the restaurant receptionist, allowing them to register reservations, check table availability, and view all stored reservations.

---

# System Objective

The objectives of the system are:

- Register customer reservations.
- Prevent reservation conflicts.
- Control operating hours.
- Display real-time table availability.
- Organize tables through an interactive visual layout.

---

# System Access

When the system starts, the main screen provides access to the following sections:

- Home
- Reservation
- Table Layout
- Registered Reservations

From these options, the receptionist can navigate through the different system functions.

---

# Main Interface

The main screen contains:

- Navigation menu.
- Access to the reservation form.
- Restaurant layout visualization.
- Access to the registered reservations table.

The system operates dynamically based on the selected date and time.

---

# Reservation Module

## Registering a Reservation

To register a reservation, follow these steps:

### Step 1 — Access the Form

Go to the **Reservation** section from the main menu.

### Step 2 — Enter Customer Information

Complete the following fields:

- Full Name
- Email Address
- Phone Number
- Reservation Date
- Reservation Time
- Comment or Special Request

### Step 3 — Select Date and Time

The system automatically validates that the selected time is within the allowed operating hours.

**Valid Schedule:**

- 10:00 AM to 10:00 PM

If the selected time is invalid, the system will display a notification and block the operation.

### Step 4 — View Available Tables

After selecting the date and time, the system displays the restaurant's visual table layout.

Tables update dynamically based on existing reservations.

**Possible Statuses:**

- Available
- Occupied
- Not Selectable

Each table displays:

- Table Number
- Maximum Capacity
- Current Status

### Step 5 — Select a Table

The receptionist must select an available table directly from the visual layout.

Occupied tables cannot be selected.

### Step 6 — Save Reservation

The system performs an automatic validation to verify that:

- The table is not reserved on the same date.
- The table is not reserved at the same time.

If no conflict exists:

- The reservation is successfully saved.
- The system displays a success notification.

---

# System Validations

## Schedule Validation

The system does not allow reservations outside the restaurant's operating hours.

### Allowed Schedule

| Opening Time | Closing Time |
|-------------|-------------|
| 10:00 AM | 10:00 PM |

If a user attempts to register a reservation outside this range:

- The system displays an error message.
- The operation is canceled.

---

## Reservation Conflict Validation

The system prevents duplicate reservations using:

- The same table.
- The same date.
- The same time.

### Valid Example

| Table | Time |
|---------|---------|
| Table 4 | 2:00 PM |
| Table 4 | 6:00 PM |

### Invalid Example

| Table | Time |
|---------|---------|
| Table 4 | 2:00 PM |
| Table 4 | 2:00 PM |

---

# Table Layout

The layout visually represents the arrangement of tables inside the restaurant.

## Displayed Information

Each table contains:

- Table Number
- Maximum Capacity
- Availability Status

## Dynamic Functionality

Availability changes automatically depending on:

- Selected Date
- Selected Time
- Existing Reservations

A table may appear:

- Available at one time.
- Occupied at another time.

---

# Registered Reservations

The Registered Reservations section allows users to view all reservations stored in the system.

## Displayed Information

The table contains:

- Customer Name
- Reservation Date
- Reservation Time
- Assigned Table
- Table Capacity
- Comment or Special Request
- Available Actions

---

# Database Functionality

The system uses a relational database to keep all information organized.

## Table `customers`

Stores information about customers who make reservations.

### Stored Information

- Full Name
- Email Address
- Phone Number

Each customer has a unique identifier:

```sql
customer_id
```

---

## Table `tables`

Stores information about restaurant tables.

### Stored Information

- Table Number
- Maximum Capacity
- Availability Status

Each table has a unique identifier:

```sql
table_id
```

---

## Table `reservations`

This is the main table of the system.

It links:

- Customers
- Tables
- Dates
- Times
- Comments

### Stored Information

- Associated Customer
- Selected Table
- Reservation Date
- Reservation Time
- Special Comments

Primary identifier:

```sql
reservation_id
```

Foreign keys used:

```sql
customer_id
table_id
```

---

# Duplicate Reservation Constraint

The system uses a constraint to prevent reservation conflicts:

```sql
UNIQUE(table_id, reservation_date, reservation_time)
```

This constraint prevents:

- A table from being reserved twice.
- Conflicts during the same time slot.

---

# Data Types Used

| Data Type | Usage |
|------------|--------|
| VARCHAR | Names, emails, and phone numbers |
| INT | Identifiers and capacities |
| DATE | Dates |
| TIME | Times |
| DATETIME | Complete date and time records |
| TEXT | Long comments |
| ENUM | Specific statuses |

---

# General System Rules

- Reservations operate through automatic validations.
- A table cannot be reserved twice for the same time slot.
- A table may be used multiple times during the day if the reservation times are different.
- Availability depends on:
  - Date
  - Time
  - Selected Table
- The layout updates dynamically according to existing reservations.
- The system is intended for internal restaurant use.

---

# Usage Recommendations

- Verify the reservation date and time before saving.
- Confirm that the selected table is available.
- Review customer information before registering the reservation.
- Use comments for special requests or clarifications.

---

# Conclusion

The Mochi House Reservation System allows restaurant tables to be managed efficiently through automatic validations and dynamic availability control.

Thanks to its relational structure and automatic constraints, the system prevents reservation conflicts and simplifies daily restaurant operations.

---

# End of Document
