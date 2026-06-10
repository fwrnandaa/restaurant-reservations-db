# 🍡 MOCHI HOUSE – SPRINT 1

## User Authentication, Database Setup, and Initial Interface

### Duration
4 Weeks

### Total Estimated Hours
84 Hours

---

# User Story US-MH-01-01

## User Registration

**As a customer,**

I want to create an account using my personal information,

**So that** I can access the reservation system.

### Related Tasks

| ID | Task | Responsible | Description | Hours |
|------|------|------|------|------|
| T-01 | Development Environment Setup | Scrum Team | Configure Node.js, MongoDB, Git and dependencies | 4 |
| T-02 | Backend Initialization | Backend Developer | Create Express.js project structure | 5 |
| T-03 | MongoDB Configuration | Database Administrator | Configure MongoDB Atlas connection | 4 |
| T-04 | User Collection Design | Database Administrator | Create user schema and validations | 5 |
| T-05 | Registration API Development | Backend Developer | Create user registration endpoint | 6 |
| T-06 | Password Encryption | Backend Developer | Implement bcrypt password hashing | 4 |
| T-07 | Registration Form Development | Frontend Developer | Create registration interface | 6 |

### Total

34 Hours

### Acceptance Criteria

```gherkin
Feature: User Registration

Scenario: Successful registration
Given the user is on the registration page
When the user enters valid information
And submits the form
Then the account should be created successfully

Scenario: Duplicate email
Given an existing account uses the same email
When the user submits the registration form
Then the system should display an error message

Scenario: Required fields validation
Given the registration form is incomplete
When the user submits the form
Then the system should prevent registration
```

---

# User Story US-MH-01-02

## User Login

**As a registered customer,**

I want to securely log into my account,

**So that** I can manage my reservations.

### Related Tasks

| ID | Task | Responsible | Description | Hours |
|------|------|------|------|------|
| T-08 | Login API Development | Backend Developer | Create authentication endpoints | 6 |
| T-09 | Session Management | Backend Developer | Configure JWT authentication | 5 |
| T-10 | Login Interface Development | Frontend Developer | Create login form | 5 |
| T-11 | Authentication Testing | QA Tester | Validate login functionality | 4 |

### Total

20 Hours

### Acceptance Criteria

```gherkin
Feature: User Login

Scenario: Successful login
Given the user has a valid account
When the user enters valid credentials
Then the system should grant access

Scenario: Invalid credentials
Given the user enters incorrect credentials
When the login form is submitted
Then an error message should be displayed

Scenario: Protected routes
Given the user is not authenticated
When attempting to access protected pages
Then access should be denied
```

---

# User Story US-MH-01-03

## Initial Dashboard

**As a logged-in customer,**

I want to view the main dashboard,

**So that** I can navigate through the system.

### Related Tasks

| ID | Task | Responsible | Description | Hours |
|------|------|------|------|------|
| T-12 | Dashboard Design | UI Designer | Create dashboard layout | 5 |
| T-13 | Navigation Menu | Frontend Developer | Implement navigation structure | 5 |
| T-14 | Dashboard Development | Frontend Developer | Build dashboard interface | 8 |
| T-15 | Interface Testing | QA Tester | Validate navigation and responsiveness | 4 |

### Total

22 Hours

### Acceptance Criteria

```gherkin
Feature: Dashboard Access

Scenario: Dashboard display
Given the user is authenticated
When the dashboard loads
Then the main options should be visible

Scenario: Navigation menu
Given the dashboard is displayed
When the user selects a menu option
Then the corresponding page should open
```

---

# Weekly Planning

| Week | Activities Completed | Hours |
|--------|--------|--------|
| Week 1 | T-01, T-02, T-03, T-04 | 18 |
| Week 2 | T-05, T-06, T-07 | 16 |
| Week 3 | T-08, T-09, T-10, T-11 | 20 |
| Week 4 | T-12, T-13, T-14, T-15 | 30 |

## Sprint Total

84 Hours

---

# Definition of Done

- [x] MongoDB connected
- [x] User collection created
- [x] Registration working
- [x] Login working
- [x] JWT authentication implemented
- [x] Dashboard accessible
- [x] Functional tests completed
- [x] No critical bugs detected
