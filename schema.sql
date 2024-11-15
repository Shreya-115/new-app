-- Create the database
CREATE DATABASE userappdb;

-- Use the created database
USE userappdb;

-- Create Admin table
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Donor table
CREATE TABLE Donor (
    DonorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    DateOfBirth DATE,
    BloodType VARCHAR(3),
    RegistrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Hospital table
CREATE TABLE Hospital (
    HospitalID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create BloodDrive table
CREATE TABLE BloodDrive (
    BloodDriveID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(255) NOT NULL,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    AdminID INT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

-- Create DonationRequest table
CREATE TABLE DonationRequest (
    RequestID INT PRIMARY KEY AUTO_INCREMENT,
    HospitalID INT,
    BloodType VARCHAR(3),
    Quantity INT,
    RequestDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Pending', 'Fulfilled', 'Cancelled') DEFAULT 'Pending',
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (HospitalID) REFERENCES Hospital(HospitalID)
);

-- Create Donation table
CREATE TABLE Donation (
    DonationID INT PRIMARY KEY AUTO_INCREMENT,
    DonorID INT,
    BloodDriveID INT,
    DonationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Quantity INT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (DonorID) REFERENCES Donor(DonorID),
    FOREIGN KEY (BloodDriveID) REFERENCES BloodDrive(BloodDriveID)
);