-- 1. Update the price of all rooms by 5 percent.
UPDATE Room SET price = (price * 1.05);


-- 2. List all double or family rooms with a price below $40 per night, in ascending order of price.
SELECT * FROM Room
WHERE price < 40
ORDER BY price ASC;


-- 3. What is the average price of a room?


-- 4. List the rooms that are currently unoccupied at the Hilton Hotel.


-- 5. List the number of rooms in each hotel in Washington.


-- 6. List the bookings for which no dateTo has been specified.


-- 7. List full details of all hotels in London


-- 8. How many hotels are there?


-- 9. What is the total revenue per night from all double rooms?


-- 10. Suppose Mary wants to cancel all her hotel bookings, create a command to delete all Mary’s hotel


bookings