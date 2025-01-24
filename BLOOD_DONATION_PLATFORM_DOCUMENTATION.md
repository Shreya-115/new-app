
# BLOOD DONATION PLATFORM DOCUMENTATION

## TABLE OF CONTENTS

 - Introduction
 - Project Overview
 - Features
 - Technologies Used
 - System Design
 - Usage
 - Conslusion 


## Introduction

The Blood Donation Platform is a web-based application designed to facilitate the connection between blood donors and hospitals in need of blood. This platform aims to streamline the management of blood donation drives and requests, making it easier for donors to contribute and for hospitals to manage their blood supply needs.


# Project Overview

The platform allows users to register as donors or hospitals, view upcoming blood donation drives, and manage their respective data. Admins have the ability to oversee user registrations, manage blood drives, and fulfill donation requests. The system is designed to be user-friendly and efficient, ensuring that blood donation processes are as seamless as possible..

# Features

## User Types
Admin: 
- Manages users, blood drives, and donation requests.
- Oversees the entire platform to ensure smooth operations.
Donor:
- Registers for blood drives.
- Schedules donations and tracks their contribution history.
Hospital:
- Requests specific blood types.
- Manages donation records and tracks blood inventory.

## Functionalities for Admin
Drive Management:
- Input: Event details (location, date, time, blood type).
- Output: Confirmation message for event creation/update.
- Functionality: Manage blood donation events and track participation.
Donor Management:
- Input: Donor details (name, blood type).
- Output: Confirmation message for donor registration.
- Functionality: Manage donor accounts and track donation history.
Request Fulfillment:
- Input: Hospital requests (blood type, quantity).
- Output: Confirmation message for successful request fulfillment.
- Functionality: Match blood donors with hospital requests and track availability.
Notifications:
- Input: Drive and request details (location, urgency).
- Output: Real-time notifications to donors and hospitals.
- Functionality: Send alerts for urgent donation needs or upcoming blood drives.

# Technologies Used
 Frontend:
- HTML/CSS: For structuring and styling the web pages.
- JavaScript: For client-side interactivity.
- React.js: For building a responsive user interface.
Backend:
- Spring Boot: For building the server-side application.
- Hibernate: For ORM (Object-Relational Mapping) to interact with the database.
- MySQL: For storing user data, blood donation records, and event details.
Authentication:
- Spring Security: For secure user authentication and authorization.

# System Design 
Presentation Layer:
- Built using React.js, this layer handles user interactions and displays data to users.
Service Layer:
- Contains business logic and handles communication between the presentation layer and the data layer.
Data Layer:
- Utilizes Hibernate to interact with the MySQL database, managing data persistence and retrieval.
Security Layer:
- Implements Spring Security for user authentication and authorization, ensuring that sensitive data is protected.

# Database 
CREATE DATABASE userappdb;

USE userappdb;

CREATE TABLE Admin (
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

# Usage
For Donors:

- Register on the platform.
- View upcoming blood donation drives.
- Schedule appointments for donations.
- Track donation history.
For Hospitals:
- Register and log in to the platform.
- Request specific blood types and quantities.
- Manage donation records and track inventory.
For Admins:
- Log in to manage users and drives.
- Fulfill hospital requests and send notifications.

# Conclusion

The Blood Donation Platform effectively connects donors with hospitals, streamlining the management of blood donation drives and requests. With user-friendly interfaces for donors, hospitals, and administrators, the platform enhances the donation process through features like real-time notifications and secure authentication.

Utilizing modern technologies such as Spring Boot and React.js, the platform ensures reliability and scalability. Rigorous testing and validation have been implemented to guarantee a smooth user experience. Overall, the Blood Donation Platform not only facilitates efficient blood donation logistics but also fosters a supportive community, ultimately contributing to improved healthcare outcomes.


