SELECT * FROM hotelbooking.booking;

INSERT INTO Booking (bookingNo,dateFrom,dateTo,guestNo,roomNo,hotelNo)
VALUES
('B001','2012-02-08',NULL,'G001','R001','H001'),
('B002','2013-01-01','2013-01-03','G002','R104','H002'),
('B003','2013-07-15',NULL,'G001','R210','H003'),
('B004','2012-12-31','2013-01-14','G003','R907','H004'),
('B005','0000-00-00','0000-00-00','0','R101','H002'),
('B006','0000-00-00','0000-00-00','0','R302','H002');




SELECT * FROM hotelbooking.guest;

INSERT INTO Guest (guestNo,guestName,guestAddress)
VALUES
('G001','Mary','Cork Ireland'),
('G002','Tom','NY USA'),
('G003','John','Dublin Ireland'),
('G004','Stephenie','Paris France');




SELECT * FROM hotelbooking.hotel;

INSERT INTO Hotel (hotelNo,hotelName,city)
VALUES
('H001','Meteor Garden','Washington'),
('H002','Hilton','Texas'),
('H003','Grosvenor','Boston'),
('H004','Imperical','New York');




SELECT * FROM hotelbooking.room;

INSERT INTO Room (roomNo,hotelNo,type,price)
VALUES
('R001','H001','Single',30),
('R104','H002','Double',90),
('R210','H003','Family',200),
('R907','H004','Family',200),
('R101','H001','Double',25),
('R110','H003','Double',35),
('R302','H001','Family',40),
('R101','H002','Single',57),
('R302','H002','Family',150);

