# 🍡 Product Backlog — Mochi House Reservation System

## Product Goal

Develop a reservation management system for Mochi House that allows efficient administration of tables, schedules, and customers while preventing reservation conflicts and improving restaurant organization.

---

# EPIC 1 — Reservation Management

## User Story 1
**As a** receptionist  
**I want** to create reservations  
**So that** I can organize the restaurant availability.

### Acceptance Criteria
- The system must allow entering:
  - customer name
  - phone number
  - date
  - time
  - number of guests
  - table
- Empty fields must not be allowed.
- The reservation must be stored in the database.

### Gherkin
```gherkin
Given the receptionist is on the reservation form
When all required information is entered correctly
And the "Save" button is pressed
Then the reservation must be stored in the database
