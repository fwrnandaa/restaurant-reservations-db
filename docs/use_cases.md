# Use Cases — Mochi House Reservation System

## General Description

The Mochi House Reservation System allows restaurant staff to manage table availability through automatic validations based on date, time, and selected table. The system is used by the receptionist and aims to prevent reservation conflicts, enforce operating hours, and efficiently organize restaurant seating.

---

# System Actors

## Primary Actor

### Receptionist
The person responsible for registering, consulting, and managing restaurant reservations.

---

# Use Case 1 — Register Reservation

## Objective
Allow the receptionist to create a new reservation for a customer.

## Primary Actor
Receptionist

## Main Flow

1. The receptionist accesses the reservations section.
2. The system displays the reservation form.
3. The receptionist enters:
   - Customer's full name.
   - Email address.
   - Phone number.
   - Reservation date.
   - Reservation time.
   - Comment or special request.
4. The system validates that the selected time is within the allowed schedule.
5. The system displays the available table layout for the selected date and time.
6. The receptionist selects a table from the visual layout.
7. The system verifies that the table is not already reserved for the same date and time.
8. The system saves the reservation.
9. The system displays a confirmation message indicating that the reservation was successfully registered.

## Alternative Flows

### Time Outside Allowed Schedule

1. The receptionist selects a time earlier than 10:00 AM or later than 10:00 PM.
2. The system displays a notification indicating that the selected time is invalid.
3. The system blocks the reservation.

### Occupied Table

1. The receptionist selects a table that is already reserved for the same date and time.
2. The system detects the conflict.
3. The table is displayed as occupied.
4. The system prevents the reservation from being saved.

## Business Rules

- Operating hours are from 10:00 AM to 10:00 PM.
- A table cannot be reserved twice for the same date and time.
- The same table may be used multiple times in a day if the reservation times are different.

---

# Use Case 2 — View Table Availability

## Objective
Allow the receptionist to view available tables based on the selected date and time.

## Primary Actor
Receptionist

## Main Flow

1. The receptionist selects a date and time.
2. The system retrieves existing reservations.
3. The system dynamically updates the table layout.
4. Available tables are displayed as free.
5. Reserved tables are displayed as occupied.

## Business Rules

- Table status changes depending on the selected time slot.
- Availability is automatically updated according to registered reservations.

---

# Use Case 3 — View Registered Reservations

## Objective
Allow the receptionist to view all reservations stored in the system.

## Primary Actor
Receptionist

## Main Flow

1. The receptionist accesses the registered reservations section.
2. The system displays a table containing:
   - Customer name.
   - Date.
   - Time.
   - Assigned table.
   - Table capacity.
   - Comment or special request.
   - Available actions.

---

# Use Case 4 — Validate Reservation Time

## Objective
Ensure that reservations are made only within the allowed operating hours.

## Primary Actor
System

## Main Flow

1. The user selects a time.
2. The system compares the entered time with the allowed schedule.
3. If the time is within the valid range:
   - The system allows the process to continue.
4. If the time is outside the valid range:
   - The system displays an error notification.
   - The system blocks the operation.

## Business Rules

- Allowed operating hours:
  - Start: 10:00 AM
  - End: 10:00 PM

---

# Use Case 5 — Validate Reservation Conflict

## Objective
Prevent duplicate reservations for the same table.

## Primary Actor
System

## Main Flow

1. The system receives:
   - Selected table.
   - Date.
   - Time.
2. The system retrieves existing reservations.
3. The system compares:
   - Table.
   - Date.
   - Time.
4. If a match is found:
   - The reservation is rejected.
5. If no match is found:
   - The reservation can be registered.

## Business Rules

- Two reservations cannot exist with:
  - The same table.
  - The same date.
  - The same time.

---

# Use Case 6 — Select Table from Layout

## Objective
Allow the receptionist to visually select a table from the restaurant layout.

## Primary Actor
Receptionist

## Main Flow

1. The system displays the restaurant layout.
2. Each table shows:
   - Table number.
   - Maximum capacity.
   - Availability status.
3. The receptionist selects an available table.
4. The system assigns the table to the reservation.

## Business Rules

- Only available tables can be selected.
- Occupied tables do not allow interaction.

---

# Related Functional Requirements

- Register reservations.
- Validate operating hours.
- Display real-time availability.
- Prevent reservation conflicts.
- Display the restaurant's visual layout.
- View registered reservations.
- Manage tables and seating capacity.

---

# General System Rules

- The system operates through automatic validations.
- Availability depends on:
  - Date.
  - Time.
  - Selected table.
- The layout changes dynamically according to existing reservations.
- The system is intended for internal restaurant use by the receptionist.
