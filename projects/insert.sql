-- Inserting sample data into Locations
INSERT INTO Locations (LocationID, LocationName, Address, City, State, ZipCode) VALUES
(1, 'Downtown', '123 Main St', 'New York', 'NY', '10001'),
(2, 'Airport', '456 Terminal Rd', 'Los Angeles', 'CA', '90045'),
(3, 'Suburban', '789 Maple Ave', 'Chicago', 'IL', '60614');

-- Inserting sample data into Customers
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, DateOfBirth, LicenseNumber, CreatedAt) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '101 Elm St, NY', '1985-05-15', 'DL123456', CURRENT_TIMESTAMP),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '202 Oak St, LA', '1990-03-22', 'DL789012', CURRENT_TIMESTAMP),
(3, 'Mike', 'Johnson', 'mike.johnson@example.com', '345-678-9012', '303 Pine St, CH', '1988-08-08', 'DL345678', CURRENT_TIMESTAMP);

-- Inserting sample data into Vehicles
INSERT INTO Vehicles (VehicleID, LicensePlate, Make, Model, Year, VehicleType, DailyRate, Status, LocationID) VALUES
(1, 'ABC123', 'Toyota', 'Camry', 2020, 'Sedan', 50.00, 'Available', 1),
(2, 'XYZ789', 'Honda', 'Civic', 2019, 'Sedan', 45.00, 'Available', 1),
(3, 'LMN456', 'Ford', 'Focus', 2021, 'Sedan', 55.00, 'Available', 2),
(4, 'QWE123', 'Chevrolet', 'Malibu', 2018, 'Sedan', 40.00, 'Available', 2),
(5, 'RTY456', 'Jeep', 'Wrangler', 2022, 'SUV', 80.00, 'Available', 3),
(6, 'UIO789', 'Tesla', 'Model 3', 2023, 'Electric', 100.00, 'Available', 3);

-- Inserting sample data into RentalAgreements
INSERT INTO RentalAgreements (RentalID, CustomerID, VehicleID, RentalStartDate, RentalEndDate, TotalAmount, PaymentStatus) VALUES
(1, 1, 1, '2024-11-01', '2024-11-05', 250.00, 'Paid'),
(2, 2, 3, '2024-11-10', '2024-11-12', 110.00, 'Paid'),
(3, 3, 5, '2024-11-15', '2024-11-20', 400.00, 'Pending');

-- Inserting sample data into Payments
INSERT INTO Payments (PaymentID, RentalID, PaymentDate, AmountPaid, PaymentMethod) VALUES
(1, 1, '2024-11-01', 250.00, 'Credit Card'),
(2, 2, '2024-11-10', 110.00, 'Debit Card');

-- Inserting sample data into VehicleMaintenance
INSERT INTO VehicleMaintenance (MaintenanceID, VehicleID, MaintenanceDate, MaintenanceDescription, Cost, NextMaintenanceDate) VALUES
(1, 1, '2024-10-01', 'Oil Change', 30.00, '2025-01-01'),
(2, 3, '2024-09-15', 'Tire Replacement', 200.00, '2025-03-15'),
(3, 5, '2024-08-10', 'Brake Pad Replacement', 150.00, '2025-02-10');

-- Inserting sample data into Staff
INSERT INTO Staff (StaffID, FirstName, LastName, Position, LocationID) VALUES
(1, 'Alice', 'Brown', 'Manager', 1),
(2, 'Bob', 'Davis', 'Clerk', 2),
(3, 'Carol', 'Wilson', 'Technician', 3);
