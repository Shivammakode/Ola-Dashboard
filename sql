Create View Successful_Bookings As
 SELECT * FROMbookings
 WHEREBooking_Status = 'Success';
 #2. Find the average ride distance for each vehicle type:
 Create View ride_distance_for_each_vehicle As
 SELECT Vehicle_Type, AVG(Ride_Distance)
 as avg_distance FROM bookings
 GROUPBYVehicle_Type;
 #3. Get the total number of cancelled rides by customers:
 Create View cancelled_rides_by_customers As
 SELECT COUNT(*) FROM bookings
 WHEREBooking_Status = 'cancelled by Customer';
 #4. List the top 5 customers who booked the highest number of rides:
 Create View Top_5_Customers As
 SELECT Customer_ID, COUNT(Booking_ID) as total_rides
 FROMbookings
 GROUPBYCustomer_ID
 ORDERBYtotal_rides DESC LIMIT 5;
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 Create View Rides_cancelled_by_Drivers_P_C_Issues As
 SELECT COUNT(*) FROM bookings
 WHEREcancelled_Rides_by_Driver = 'Personal & Car related issue';
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Create View Max_Min_Driver_Rating As
 SELECT MAX(Driver_Ratings) as max_rating,
 MIN(Driver_Ratings) as min_rating
 FROMbookings WHERE Vehicle_Type = 'Prime Sedan';
