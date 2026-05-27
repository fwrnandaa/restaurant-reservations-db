# 🍡 Product Backlog — Mochi House Reservation System

---

# Product Goal

Develop a reservation management system for Mochi House that allows staff to organize reservations efficiently, avoid table conflicts, manage restaurant availability, and improve customer service.

---

# EPIC 1 — Reservation Management

## User Story 1 — Create Reservations

**As a** receptionist  
**I want** to create reservations  
**So that** customers can secure a table in advance.

### Acceptance Criteria
- The system must allow entering customer reservation information.
- The reservation must be saved successfully.
- A confirmation message must be displayed.

### Gherkin
```gherkin
Feature: Create Reservation

Scenario: Successful reservation creation
Given the receptionist is on the reservation form
When all required information is entered correctly
And the "Save" button is pressed
Then the reservation must be stored successfully
And a confirmation message must be displayed
```

---

## User Story 2 — Prevent Duplicate Reservations

**As a** receptionist  
**I want** to prevent duplicate reservations  
**So that** table conflicts are avoided.

### Acceptance Criteria
- The system must detect reservation conflicts.
- The system must block duplicate reservations.
- An error message must be displayed.

### Gherkin
```gherkin
Feature: Prevent Duplicate Reservations

Scenario: Table already reserved
Given a reservation already exists for a table
When the receptionist tries to reserve the same table at the same date and time
Then the system must block the reservation
And display a conflict message
```

---

## User Story 3 — Cancel Reservations

**As a** receptionist  
**I want** to cancel reservations  
**So that** tables become available again.

### Acceptance Criteria
- The system must allow reservation cancellation.
- Cancelled reservations must free the assigned table.
- A confirmation message must be displayed.

### Gherkin
```gherkin
Feature: Cancel Reservation

Scenario: Reservation cancellation
Given a reservation exists
When the receptionist cancels the reservation
Then the reservation must be removed
And the table must become available
```

---

## User Story 4 — Edit Reservations

**As a** receptionist  
**I want** to edit reservations  
**So that** reservation information can be updated when needed.

### Acceptance Criteria
- The system must allow reservation updates.
- Updated information must be saved successfully.
- Reservation validations must still apply.

### Gherkin
```gherkin
Feature: Edit Reservation

Scenario: Successful reservation update
Given a reservation already exists
When the receptionist edits the reservation information
And saves the changes
Then the system must update the reservation successfully
```

---

# EPIC 2 — Table Management

## User Story 5 — Register Tables

**As an** administrator  
**I want** to register restaurant tables  
**So that** table availability can be managed correctly.

### Acceptance Criteria
- The system must allow registering tables.
- Each table must have a unique identifier.
- Registered tables must appear in the system.

### Gherkin
```gherkin
Feature: Register Tables

Scenario: Register a new table
Given the administrator is in the table management section
When a new table is registered
Then the table must be stored successfully
```

---

## User Story 6 — View Available Tables

**As a** receptionist  
**I want** to view available tables  
**So that** I can assign tables quickly to customers.

### Acceptance Criteria
- The system must display table availability.
- Occupied and available tables must be clearly identified.
- Information must update automatically.

### Gherkin
```gherkin
Feature: View Available Tables

Scenario: Display table availability
Given reservations already exist
When the receptionist checks the tables
Then the system must display the updated status of each table
```

---

# EPIC 3 — Reservation Validations

## User Story 7 — Validate Reservation Schedules

**As a** system  
**I want** to validate reservation schedules  
**So that** reservations outside business hours are prevented.

### Acceptance Criteria
- Reservations must only be allowed during business hours.
- Invalid schedules must display an error message.

### Gherkin
```gherkin
Feature: Validate Reservation Schedule

Scenario: Reservation outside business hours
Given the restaurant has established business hours
When a reservation is attempted outside allowed hours
Then the system must reject the reservation
```

---

## User Story 8 — Validate Table Capacity

**As a** system  
**I want** to validate table capacity  
**So that** customers are assigned suitable tables.

### Acceptance Criteria
- The system must validate the number of guests.
- Reservations exceeding table capacity must not be allowed.
- An error message must be displayed.

### Gherkin
```gherkin
Feature: Validate Table Capacity

Scenario: Exceeding table capacity
Given a table has limited capacity
When the number of guests exceeds the table capacity
Then the system must prevent the reservation
```

---

# EPIC 4 — User Access

## User Story 9 — Login System

**As an** administrator  
**I want** to log into the system  
**So that** access to reservation management is protected.

### Acceptance Criteria
- The system must request login credentials.
- Valid credentials must allow access.
- Invalid credentials must be rejected.

### Gherkin
```gherkin
Feature: Login System

Scenario: Successful login
Given the user is on the login screen
When valid credentials are entered
Then the system must allow access
```

---

# EPIC 5 — Reservation Search and Reports

## User Story 10 — Search Reservations

**As a** receptionist  
**I want** to search reservations  
**So that** I can find reservation information quickly.

### Acceptance Criteria
- The system must allow reservation searches.
- Matching results must be displayed clearly.

### Gherkin
```gherkin
Feature: Search Reservations

Scenario: Search reservation
Given reservations exist in the system
When the receptionist performs a search
Then the system must display matching reservations
```

---

## User Story 11 — Generate Reports

**As an** administrator  
**I want** to generate reservation reports  
**So that** I can analyze restaurant occupancy.

### Acceptance Criteria
- The system must generate reservation reports.
- Reports must display restaurant occupancy information.
- Reports must update automatically.

### Gherkin
```gherkin
Feature: Generate Reports

Scenario: Generate occupancy report
Given reservation data exists
When the administrator opens the reports section
Then the system must generate reservation statistics
```

---

# Backlog Priority

| Priority | User Story |
|---|---|
| High | Create reservations |
| High | Prevent duplicate reservations |
| High | View available tables |
| High | Validate reservation schedules |
| High | Validate table capacity |
| Medium | Cancel reservations |
| Medium | Edit reservations |
| Medium | Register tables |
| Medium | Login system |
| Low | Search reservations |
| Low | Generate reports |

---
