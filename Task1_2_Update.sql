-- Modify Rental_Agreements Table to Add Unique Constraint

ALTER TABLE Rental_Agreements
ADD CONSTRAINT uc_vehicle_id UNIQUE (vehicle_id);


