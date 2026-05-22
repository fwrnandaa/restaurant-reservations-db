# Mochi House Reservation System

## Professional Reservation System

---

# General Project Information

## Project Name

Mochi House Reservation System

---

# General Description

The Mochi House reservation system was developed to manage table availability within a restaurant through dynamic control based on date, time, and selected table.

The main objective of the system is to prevent reservation conflicts and improve the restaurant’s operational organization through automatic validations and real-time visualization of available tables.

The system allows the receptionist to manage reservations using an interactive visual layout where each table has a specific capacity and dynamically changes its status depending on registered reservations.

The core logic of the system prevents a table from being reserved twice on the same date and time.

Additionally, the system validates that reservations can only be made during the restaurant’s operating hours, which are from 10:00 AM to 10:00 PM.

---

# General Objective

Develop a professional web-based restaurant reservation system that allows real-time table availability management through automatic validations of date, time, and capacity.

---

# Specific Objectives

* Implement an interactive visual layout for table selection.
* Automatically validate reservation conflicts.
* Control valid operating hours.
* Improve restaurant organization.
* Centralize registered reservations.
* Improve the receptionist’s operational experience.
* Prevent duplicate reservations.
* Display dynamic table availability.

---

# Project Scope

The system allows users to:

* Register reservations.
* Select date and time.
* Select tables from a visual layout.
* View available tables.
* Display registered reservations.
* Manage table capacities.
* Validate allowed schedules.
* Prevent reservation conflicts.

---

# System Limitations

* The system currently works for a single restaurant.
* It does not include online payments.
* It does not include user authentication.
* It does not include automatic notifications.
* It does not include mobile application integration.

---

# Technologies Used

| Technology | Purpose |
| ---------- | ------- |
| HTML | System structure |
| CSS | Visual design and styles |
| JavaScript | Dynamic logic and validations |
| PHP | Backend processing |
| MySQL | Database |
| XAMPP | Local server |
| GitHub | Version control |

---

# System Roles

## Receptionist

The receptionist is the main user of the system.

### Functions

* Register reservations.
* View available tables.
* Check reservations.
* Select tables.
* Confirm availability.
* Manage customer information.

---

# Scrum Team

| Member | Scrum Role | Responsibility |
| ------ | ----------- | -------------- |
| Alberto | Scrum Master | Team organization and coordination |
| Fernanda | Backend Logic Developer | Logic and validation development |
| Alexis | Frontend Developer | Visual design and graphical interface |
| Karen | Backend Developer | Programming and functional integration |

---

# Scrum Roles

## Scrum Master

Alberto is responsible for organizing team activities, coordinating progress, and ensuring sprint completion.

## Development Team

Fernanda, Alexis, and Karen directly participate in the technical development of the system.

## Product Owner

The team collectively defines the system’s functional requirements based on the restaurant’s operational needs.

---

# Functional Description of the System

## Main Page

The main page displays general system information and allows navigation between different sections:

* Home
* Reserve
* Tables
* Reservations

It also provides direct access to the reservation form.

---

# Reservation Form

The form allows users to enter:

* Full name
* Email address
* Phone number
* Date
* Time
* Special comments

Afterward, the user must select a table from the visual layout.

---

# Table Layout

The layout visually represents the restaurant’s table distribution.

Each table displays:

* Table number
* Capacity
* Availability status

Tables dynamically change depending on the selected date and time.

---

# Table Distribution

| Table | Capacity |
| ------ | -------- |
| Table 1 | 2 people |
| Table 2 | 4 people |
| Table 3 | 4 people |
| Table 4 | 6 people |
| Table 5 | 6 people |
| Table 6 | 2 people |
| Table 7 | 8 people |
| Table 8 | 4 people |

---

# Business Rules

## BR-01

The system will only allow reservations between 10:00 AM and 10:00 PM.

## BR-02

A table cannot be reserved if there is already a reservation registered for the same date and time.

## BR-03

A table can be reused on the same day if the reservation time is different.

## BR-04

The user must select a table before confirming the reservation.

## BR-05

The selected table must respect the maximum allowed capacity.

## BR-06

Tables dynamically change status according to the selected time.

## BR-07

All required fields must be completed before confirming the reservation.

---

# Functional Requirements

| Code | Requirement |
| ---- | ----------- |
| FR-01 | The system must allow reservation registration |
| FR-02 | The system must validate allowed schedules |
| FR-03 | The system must display available tables |
| FR-04 | The system must prevent duplicate reservations |
| FR-05 | The system must store reservations |
| FR-06 | The system must display registered reservations |
| FR-07 | The system must allow table selection from a layout |
| FR-08 | The system must display table capacities |
| FR-09 | The system must validate form data |
| FR-10 | The system must dynamically update table status |

---

# Non-Functional Requirements

| Code | Requirement |
| ---- | ----------- |
| NFR-01 | The system must have an intuitive interface |
| NFR-02 | The system must respond quickly |
| NFR-03 | The system must maintain visual consistency |
| NFR-04 | The system must be compatible with modern browsers |
| NFR-05 | The system must organize information correctly |
| NFR-06 | The system must allow future maintenance |

---

# Use Cases

## Use Case 1 — Register Reservation

### Main Actor

Receptionist

### Description

Allows the registration of a reservation within the allowed schedule.

### Main Flow

1. The receptionist enters the form.
2. Enters customer information.
3. Selects date and time.
4. Views available tables.
5. Selects a table.
6. The system validates availability.
7. The system stores the reservation.
8. A confirmation message is displayed.

### Alternative Flow

* If the table is already occupied, the system blocks the reservation.
* If the time is invalid, the system displays an error message.

---

## Use Case 2 — View Layout

### Main Actor

Receptionist

### Description

Allows visualization of table availability.

### Main Flow

1. The user selects date and time.
2. The system checks reservations.
3. The system updates table statuses.
4. Available and occupied tables are displayed.

---

## Use Case 3 — View Reservations

### Main Actor

Receptionist

### Description

Allows viewing all registered reservations.

### Main Flow

1. The user accesses the reservations section.
2. The system retrieves reservation information.
3. Registered reservations are displayed.

---

# User Stories

## Epic 1 — Reservation Management

### US-01

As a receptionist  
I want to register reservations  
so that I can properly organize restaurant tables.

#### Acceptance Criteria

* It must allow entering customer information.
* It must allow selecting date and time.
* It must allow selecting a table.
* It must save the reservation.

#### Priority

High

#### Story Points

8

---

### US-02

As a receptionist  
I want to view available tables  
so that I can avoid reservation conflicts.

#### Acceptance Criteria

* Available tables must be visually displayed.
* Occupied tables must be blocked.
* The layout must update dynamically.

#### Priority

High

#### Story Points

8

---

### US-03

As a receptionist  
I want to validate allowed schedules  
so that I can prevent reservations outside operating hours.

#### Acceptance Criteria

* The system must only allow schedules between 10:00 AM and 10:00 PM.
* It must display error messages.
* It must prevent saving invalid schedules.

#### Priority

High

#### Story Points

5

---

### US-04

As a receptionist  
I want to view registered reservations  
so that I can consult customer information.

#### Acceptance Criteria

* A reservation table must be displayed.
* It must include date, time, and table.
* It must include special comments.

#### Priority

Medium

#### Story Points

5

---

### US-05

As a receptionist  
I want to prevent duplicate reservations  
so that I can avoid conflicts between customers.

#### Acceptance Criteria

* Repeating the same table, date, and time must not be allowed.
* A conflict alert must be displayed.
* The system must validate automatically.

#### Priority

High

#### Story Points

8

---

## Epic 2 — Interface and Visual Experience

### US-06

As a receptionist  
I want an organized visual interface  
so that I can use the system easily.

#### Acceptance Criteria

* A navigation menu must exist.
* The design must be consistent.
* The interface must have good readability.

#### Priority

Medium

#### Story Points

3

---

### US-07

As a receptionist  
I want to select tables from a visual layout  
so that I can quickly identify capacities and availability.

#### Acceptance Criteria

* Each table must display capacity.
* Tables must be selectable.
* Visual state changes must exist.

#### Priority

High

#### Story Points

8

---

### US-08

As a receptionist  
I want to view validation messages  
so that I can identify errors during registration.

#### Acceptance Criteria

* Alerts must be displayed.
* Clear error messages must appear.
* The cause of the problem must be indicated.

#### Priority

Medium

#### Story Points

3

---

## Epic 3 — Persistence and Database

### US-09

As a developer  
I want to connect the system to MySQL  
so that reservations can be stored permanently.

#### Acceptance Criteria

* A functional connection must exist.
* Reservations must be stored.
* Saved data must be retrievable.

#### Priority

High

#### Story Points

13

---

### US-10

As a developer  
I want to properly structure the database  
so that information integrity can be maintained.

#### Acceptance Criteria

* Normalized tables must exist.
* Relationships must exist.
* Data integrity must be maintained.

#### Priority

High

#### Story Points

8

---

# Product Backlog

| ID | Story | Priority | Story Points | Status |
| --- | --- | --- | --- | --- |
| US-01 | Register reservations | High | 8 | Completed |
| US-02 | View available tables | High | 8 | Completed |
| US-03 | Validate allowed schedules | High | 5 | Completed |
| US-04 | View registered reservations | Medium | 5 | Completed |
| US-05 | Prevent duplicate reservations | High | 8 | Completed |
| US-06 | Organized interface | Medium | 3 | Completed |
| US-07 | Interactive visual layout | High | 8 | Completed |
| US-08 | Validation messages | Medium | 3 | Completed |
| US-09 | MySQL connection | High | 13 | Pending |
| US-10 | Database structure | High | 8 | Pending |

---

# Sprint Planning

## Sprint 1

### Objective

Design the initial visual structure of the system.

### Activities

* Interface design
* Main navbar
* Home page
* General design

### Included Stories

* US-06

### Main Responsible

Alexis

---

## Sprint 2

### Objective

Develop the reservation form.

### Activities

* Form fields
* Basic validations
* Responsive design

### Included Stories

* US-01
* US-03
* US-08

### Main Responsible

Karen

---

## Sprint 3

### Objective

Implement the interactive visual layout.

### Activities

* Table design
* Capacities
* Visual selection
* Dynamic states

### Included Stories

* US-02
* US-07

### Main Responsible

Alexis

---

## Sprint 4

### Objective

Implement validation logic.

### Activities

* Conflict validation
* Schedule restrictions
* Blocking occupied tables

### Included Stories

* US-05

### Main Responsible

Fernanda

---

## Sprint 5

### Objective

Connect the system to the database.

### Activities

* MySQL connection
* SQL queries
* Permanent storage
* Reservation queries

### Included Stories

* US-09
* US-10

### Main Responsible

Karen

---

# Sprint Backlog

| Sprint | Activity | Responsible | Status |
| ------ | -------- | ----------- | ------ |
| Sprint 1 | UI Design | Alexis | Completed |
| Sprint 1 | Navbar | Alexis | Completed |
| Sprint 1 | Main Page | Alexis | Completed |
| Sprint 2 | Reservation Form | Karen | Completed |
| Sprint 2 | Schedule Validation | Fernanda | Completed |
| Sprint 2 | Error Messages | Fernanda | Completed |
| Sprint 3 | Table Layout | Alexis | Completed |
| Sprint 3 | Dynamic States | Fernanda | Completed |
| Sprint 3 | Capacities | Alexis | Completed |
| Sprint 4 | Conflict Validation | Fernanda | Completed |
| Sprint 4 | Schedule Restrictions | Fernanda | Completed |
| Sprint 5 | MySQL Connection | Karen | Pending |
| Sprint 5 | SQL Queries | Karen | Pending |
| Sprint 5 | Data Persistence | Karen | Pending |

---

# Project Risks

| Risk | Impact | Solution |
| ---- | ------ | -------- |
| Reservation conflicts | High | Automatic validations |
| Schedule errors | High | Schedule restrictions |
| Data loss | High | MySQL usage |
| Visual errors | Medium | Interface testing |
| Integration problems | Medium | Version control with GitHub |

---

# General Architecture

## Frontend

* HTML
* CSS
* JavaScript

## Backend

* PHP

## Database

* MySQL

---

# Definition of Ready

A user story will be ready for development when:

* It is clearly defined.
* It has acceptance criteria.
* It has assigned priority.
* The team understands its objective.
* Tasks have been identified.

---

# Definition of Done

A feature will be considered completed when:

* The code works correctly.
* All validations are implemented.
* There are no critical errors.
* The interface works correctly.
* The feature can be demonstrated.
* The team approves the result.

---

# General System Flow

1. The receptionist accesses the system.
2. Enters the reservation section.
3. Captures customer information.
4. Selects a date.
5. Selects a time.
6. The system validates the allowed schedule.
7. The system updates the layout.
8. The user selects a table.
9. The system validates availability.
10. The reservation is stored.
11. The information appears in the reservations section.

---

# Conclusion

The Mochi House Reservation System was designed to optimize reservation management within a restaurant through dynamic table availability control.

The implementation of automatic validations, visual table selection, and conflict control improves operational organization and helps prevent common errors in manual reservation management.

The use of Scrum methodologies allowed the project to be properly organized through sprints, user stories, and clear responsibility distribution among team members.
