New Vehicle Additions:

When a new vehicle is added to the fleet, a record is inserted into the Vehicles table.
Initially, there won't be any corresponding rental agreement in the Rental_Agreements table because the vehicle is not yet rented out.
The one-to-one relationship ensures that each vehicle can be associated with at most one rental agreement, so there will be no conflicts with existing rental agreements.

Rental Agreement Updates:

When a vehicle is rented out, a new rental agreement record is created in the Rental_Agreements table, referencing the vehicle's vehicle_id.
If the rental agreement needs to be updated (e.g., change of rental rate, extension of rental period), the corresponding record in the Rental_Agreements table can be updated accordingly.
The one-to-one relationship ensures that each vehicle is associated with only one rental agreement at a time, so there won't be any confusion or conflicts with multiple rental agreements for the same vehicle.

Vehicle Availability Checks:

To check the availability of a vehicle, the system queries the Rental_Agreements table for the specified vehicle_id.
If there is no rental agreement associated with the vehicle (i.e., NULL value for the vehicle_id in Rental_Agreements), the vehicle is available for rent.
If there is an existing rental agreement for the vehicle, it indicates that the vehicle is currently rented out and unavailable for rent.

Returning Rented Vehicles:

When a rented vehicle is returned, the corresponding rental agreement record in the Rental_Agreements table is updated or deleted, depending on the business rules.
If the rental agreement is deleted, the vehicle becomes available for rent again, and the rental history is updated accordingly.