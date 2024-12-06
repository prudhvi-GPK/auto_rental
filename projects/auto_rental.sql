CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT,
    DateOfBirth DATE,
    LicenseNumber VARCHAR(20),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Vehicles (
    VehicleID SERIAL PRIMARY KEY,
    LicensePlate VARCHAR(20) UNIQUE NOT NULL,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    VehicleType VARCHAR(50),
    DailyRate DECIMAL(10, 2),
    Status VARCHAR(20) DEFAULT 'Available',
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

CREATE TABLE Locations (
    LocationID SERIAL PRIMARY KEY,
    LocationName VARCHAR(100),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

CREATE TABLE RentalAgreements (
    RentalID SERIAL PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    RentalStartDate DATE,
    RentalEndDate DATE,
    TotalAmount DECIMAL(10, 2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

CREATE TABLE Payments (
    PaymentID SERIAL PRIMARY KEY,
    RentalID INT,
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    AmountPaid DECIMAL(10, 2),
    PaymentMethod VARCHAR(20),
    FOREIGN KEY (RentalID) REFERENCES RentalAgreements(RentalID)
);

CREATE TABLE VehicleMaintenance (
    MaintenanceID SERIAL PRIMARY KEY,
    VehicleID INT,
    MaintenanceDate DATE,
    MaintenanceDescription TEXT,
    Cost DECIMAL(10, 2),
    NextMaintenanceDate DATE,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

CREATE TABLE Staff (
    StaffID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);
