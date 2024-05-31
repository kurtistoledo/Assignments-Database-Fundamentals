-- Create Vehicles Table
CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20),
    mileage INT,
    registration_number VARCHAR(20) UNIQUE
);

-- Create Rental_Agreements Table
CREATE TABLE Rental_Agreements (
    agreement_id INT PRIMARY KEY,
    vehicle_id INT UNIQUE,
    start_date DATE,
    end_date DATE,
    rental_rate DECIMAL(10, 2),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);
