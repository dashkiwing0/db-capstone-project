DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(IN BookDate DATE, IN TableNo INT, IN Guests INT, IN CustId INT, IN BookingId INT)
BEGIN
INSERT INTO BOOKINGS (table_id,DATETIME, NO_OF_GUESTS, Customer_CUSTOMER_ID, booking_id) VALUES (TableNo, BookDate, Guests, CustId, BookingId);
SELECT concat("NEW BOOKING ADDED") AS CONFIRMATION;
END//
DELIMITER ;
CALL AddBooking("2021-11-17", 5, 3,4,24);
SELECT * FROM BOOKINGS;