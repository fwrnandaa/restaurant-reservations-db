# 🍡 MOCHI HOUSE – SPRINT 2

## Reservation Management and Table Availability

### Duration
4 Weeks

### Total Estimated Hours
86 Hours

---

# User Story US-MH-02-01

## Create Reservation

**As a customer,**

I want to reserve a table,

**So that** I can visit the restaurant on a specific date and time.

### Related Tasks

| ID | Task | Responsible | Description | Hours |
|------|------|------|------|------|
| T-16 | Reservation Schema | Database Administrator | Create reservation collection | 5 |
| T-17 | Reservation API | Backend Developer | Develop reservation endpoints | 8 |
| T-18 | Reservation Form | Frontend Developer | Build reservation interface | 8 |
| T-19 | Date Validation | Backend Developer | Validate reservation dates | 5 |

### Acceptance Criteria

```gherkin
Feature: Create Reservation

Scenario: Valid reservation
Given tables are available
When the customer creates a reservation
Then the reservation should be stored successfully

Scenario: Missing information
Given required information is missing
When the reservation is submitted
Then validation errors should be displayed
```

---

# User Story US-MH-02-02

## Table Availability Validation

### Related Tasks

| ID | Task | Responsible | Description | Hours |
|------|------|------|------|------|
| T-20 | Availability Logic | Backend Developer | Validate occupied tables | 8 |
| T-21 | Conflict Detection | Backend Developer | Prevent duplicate reservations | 6 |
| T-22 | Availability Display | Frontend Developer | Show available tables | 6 |

### Acceptance Criteria

```gherkin
Feature: Table Availability

Scenario: Available table
Given a table is available
When the customer selects the table
Then the reservation should proceed

Scenario: Occupied table
Given a table is already reserved
When another customer attempts to reserve it
Then the reservation should be rejected
```

---

# User Story US-MH-02-03

## Reservation History

### Related Tasks

| ID | Task | Responsible | Description | Hours |
|------|------|------|------|------|
| T-23 | Reservation Listing API | Backend Developer | Retrieve reservation history | 7 |
| T-24 | History Interface | Frontend Developer | Display user reservations | 7 |
| T-25 | Reservation Testing | QA Tester | Validate reservation processes | 6 |

### Acceptance Criteria

```gherkin
Feature: Reservation History

Scenario: Existing reservations
Given the user has reservations
When the history page loads
Then all reservations should be displayed

Scenario: No reservations
Given the user has no reservations
When the history page loads
Then an empty state message should appear
```

---

# Weekly Planning

| Week | Activities Completed | Hours |
|--------|--------|--------|
| Week 1 | T-16, T-17 | 13 |
| Week 2 | T-18, T-19 | 13 |
| Week 3 | T-20, T-21, T-22 | 20 |
| Week 4 | T-23, T-24, T-25 | 20 |

## Sprint Total

86 Hours

---

# Definition of Done

- [x] Reservation module completed
- [x] Reservation validations implemented
- [x] Table conflict prevention working
- [x] Reservation history available
- [x] API tested successfully
- [x] Frontend integrated with backend
