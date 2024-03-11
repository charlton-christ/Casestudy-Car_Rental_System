CREATE DATABASE CAR_RENTAL

CREATE TABLE Vehicle
(
    VehicleID INT PRIMARY KEY,
    Vehicle_Make VARCHAR(20),
    Vehicle_Model VARCHAR(20),
    Vehicle_Year INT,
    Vehicle_Rate DECIMAL(7,2),
    Vehicle_Status VARCHAR(30),
    Passanger_Capacity INT,
    Engine_Capacity DECIMAL(2,1)
);

CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(40),
    Customer_mail VARCHAR(50),
    Customer_Number VARCHAR(10)
);

CREATE TABLE Lease
(
    LeaseID INT PRIMARY KEY,
    VehicleID INT,
    CustomerID INT,
    StartDate DATE,
    EndDate DATE,
    Lease_Type VARCHAR(30)
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    LeaseID INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (LeaseID) REFERENCES Lease(LeaseID),
);


