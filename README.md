#  Mochi House Reservation System

![Status](https://img.shields.io/badge/status-development-ff69b4)
![Frontend](https://img.shields.io/badge/frontend-HTML%20%7C%20CSS%20%7C%20JavaScript-f8c8dc)
![Backend](https://img.shields.io/badge/backend-PHP-8993be)
![Database](https://img.shields.io/badge/database-MySQL-4479A1)
![Environment](https://img.shields.io/badge/environment-XAMPP-orange)
![License](https://img.shields.io/badge/license-Academic-lightgrey)

> Mochi House is a restaurant reservation management system developed as an academic project using PHP and MySQL. The system allows users to manage reservations through an interactive table layout while preventing scheduling conflicts based on date, time, and selected table.

---

# 📖 Table of Contents

- [📌 About the Project](#-about-the-project)
- [✨ Features](#-features)
- [🛠️ Technologies](#️-technologies)
- [⚡ Installation](#-installation)
- [💻 System Usage](#-system-usage)
- [🗄️ Database Structure](#️-database-structure)
- [📂 Project Structure](#-project-structure)
- [🎨 Interface Design](#-interface-design)
- [🔒 Reservation Validation Logic](#-reservation-validation-logic)
- [🚀 Future Improvements](#-future-improvements)
- [👨‍💻 Authors](#-authors)
- [📄 License](#-license)

---

#  About the Project

Mochi House Reservation System was developed to improve restaurant organization by providing a digital solution for reservation management.

The system focuses on preventing reservation conflicts and improving the customer experience through an intuitive and visually appealing interface inspired by Japanese kawaii aesthetics.

One of the main features of the project is the interactive restaurant layout, where reservations are assigned directly to tables according to the selected date and time.

The project was developed as part of a relational database and web development academic course.

---

#  Features

- Interactive restaurant table layout
- Reservation registration system
- Validation of reservation conflicts
- Date and time availability control
- Visual organization of restaurant tables
- Responsive and modern interface
- Digital menu integration
- Reservation management panel
- User role management
- Database connection with MySQL

---

# Technologies

## Frontend
- HTML5
- CSS3
- JavaScript

## Backend
- PHP

## Database
- MySQL

## Development Tools
- XAMPP
- phpMyAdmin
- Git & GitHub
- Figma
- Visual Studio Code

---

#  Installation

## Prerequisites

Before running the project, install the following tools:

- XAMPP
- Git
- Modern web browser

---

## 1. Clone the Repository

```bash
git clone https://github.com/your-username/mochi-house.git
```

---

## 2. Move the Project Folder

Place the project folder inside:

```txt
C:\xampp\htdocs\
```

---

## 3. Start Apache and MySQL

Open the XAMPP Control Panel and start:

- Apache
- MySQL

---

## 4. Import the Database

Open phpMyAdmin:

```txt
http://localhost/phpmyadmin
```

Then:

1. Create a new database
2. Import the `schema.sql` file
3. Import additional SQL files if necessary

---

## 5. Run the Project

Open your browser and navigate to:

```txt
http://localhost/mochi_house
```

---

#  System Usage

The system allows restaurant staff to manage reservations efficiently through a visual interface.

## Reservation Flow

1. The user selects a reservation date
2. The user selects an available time
3. A table is selected directly from the restaurant layout
4. Reservation information is stored in the database
5. The system validates whether the selected table is already reserved for the same date and time
6. If no conflict exists, the reservation is successfully registered

---

# 🗄️ Database Structure

The project uses a relational database model developed in MySQL.

## Main Entities

- Users
- Clients
- Reservations
- Tables
- Roles
- Menu products

## Database Features

- Primary and foreign keys
- Reservation validation logic
- Relational integrity
- Organized reservation management
- SQL-based structure

---

#  Project Structure

```txt
MochiHouse/
│
├── assets/
│
├── css/
│   └── style.css
│
├── database/
│   ├── schema.sql
│   ├── inserts.sql
│   ├── consultas.sql
│   ├── triggers.sql
│   └── modelo_relacional.sql
│
├── images/
│
├── js/
│   └── script.js
│
├── php/
│   ├── conexion.php
│   ├── reservaciones.php
│   └── layout.php
│
├── index.php
│
└── README.md
```

> The structure may continue evolving during development.

---

#  Interface Design

The visual identity of Mochi House was inspired by soft pastel colors and Japanese kawaii aesthetics.

The interface was designed to create a friendly and modern experience while maintaining usability and organization.

## Design Characteristics

- Pink pastel color palette
- Rounded UI components
- Responsive layout
- Interactive table visualization
- Clean reservation forms
- Animated visual elements

The interface prototypes were initially designed in Figma before implementation.

---

#  Reservation Validation Logic

One of the most important features of the system is the reservation validation process.

The system prevents duplicate reservations by validating:

- Selected date
- Reservation time
- Selected table

If a table is already reserved at the same date and time, the system blocks the reservation and prevents conflicts.

However, the same table can still be reserved at different times without issues.

This logic helps maintain proper restaurant organization and availability control.

---

#  Future Improvements

Possible future updates include:

- Authentication system
- Online customer reservations
- Email confirmations
- Admin dashboard
- Mobile optimization
- Reservation history
- Real-time table availability
- Automated reports
- Payment integration

---

#  Authors

- Fernanda Martinez Martinez
- Karen Yazbeth Rivera Aguirre
- Alberto Leonel Elizalde Vian
- Alexis Benitez Fuentes

---

#  License

This project was developed for academic and educational purposes only.

No commercial license currently applies.

---
