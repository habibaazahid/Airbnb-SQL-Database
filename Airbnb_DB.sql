CREATE DATABASE Airbnb_DB;
USE Airbnb_DB;

-- Table structure for table `User`

CREATE TABLE User (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(20) CHECK (LENGTH(Phone) >= 10),
    Address VARCHAR(255),
    Profile_Picture VARCHAR(255),
    Role ENUM('Guest', 'Host', 'Admin') NOT NULL
);

-- Dumping data for table `User`

INSERT INTO User (Name, Email, Phone, Address, Profile_Picture, Role) VALUES
('John Doe', 'johndoe@example.com', '123-456-7890', '123 Elm St', 'profile1.jpg', 'Host'),
('Jane Smith', 'janesmith@example.com', '987-654-3210', '456 Oak St', 'profile2.jpg', 'Admin'),
('Mike Johnson', 'mikej@example.com', '555-555-5555', '789 Pine St', 'profile3.jpg', 'Guest'),
('Sarah Brown', 'sarahbrown@example.com', '444-555-6666', '101 Maple Ave', 'profile4.jpg', 'Host'),
('David Wilson', 'davidwilson@example.com', '777-888-9999', '202 Birch Rd', 'profile5.jpg', 'Guest'),
('Anna Taylor', 'annataylor@example.com', '111-222-3333', '303 Cedar Blvd', 'profile6.jpg', 'Host'),
('James White', 'jameswhite@example.com', '333-444-5555', '404 Elmwood St', 'profile7.jpg', 'Admin'),
('Emily Harris', 'emilyh@example.com', '555-777-8888', '505 Pine Grove', 'profile8.jpg', 'Guest'),
('Liam Martinez', 'liammartinez@example.com', '654-987-5432', '1405 Oak Creek', 'profile9.jpg', 'Host'),
('Mason King', 'masonking@example.com', '765-094-8888', '1506 Birch Bay', 'profile10.jpg', 'Guest'),
('Avery Scott', 'averyscott@example.com', '876-539-4321', '1607 Cedar Hills', 'profile11.jpg', 'Guest'),
('Harper Nelson', 'harpernelson@example.com', '987-432-5543', '1708 Maple Plains', 'profile12.jpg', 'Guest'),
('Olivia Brown', 'oliviabrown@example.com', '222-333-4444', '503 Redwood St', 'profile13.jpg', 'Host'),
('William Davis', 'williamdavis@example.com', '555-444-5555', '654 Cedar Blvd', 'profile14.jpg', 'Admin'),
('Ethan Clark', 'ethanclark@example.com', '123-321-6547', '710 Birch Rd', 'profile15.jpg', 'Guest'),
('Mia Garcia', 'miagarcia@example.com', '444-555-6666', '121 Maple St', 'profile16.jpg', 'Host'),
('Oliver Harris', 'oliverharris@example.com', '555-777-8888', '902 Elmwood Dr', 'profile17.jpg', 'Admin'),
('Charlotte Lewis', 'charlottelewis@example.com', '111-222-3333', '115 Birch Ave', 'profile18.jpg', 'Guest'),
('Amelia Wilson', 'ameliawilson@example.com', '666-555-4444', '230 Cedar Blvd', 'profile20.jpg', 'Admin');

-- Table Structure

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
    Payment_ID INT,
    User_ID INT,
    Amount DECIMAL(10,2),
    Status ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Payment_ID) REFERENCES Payments(Payment_ID),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping data  

INSERT INTO Transactions (Payment_ID, User_ID, Amount, Status) VALUES
(1, 1, 1500.00, 'Completed'),
(2, 2, 2100.00, 'Failed'),
(3, 3, 1000.00, 'Completed'),
(4, 4, 2800.00, 'Pending'),
(5, 5, 3200.00, 'Completed'),
(6, 6, 900.00, 'Completed'),
(7, 7, 1800.00, 'Failed'),
(8, 8, 1100.00, 'Completed'),
(9, 9, 600.00, 'Completed'),
(10, 10, 2000.00, 'Completed'),
(11, 11, 1200.00, 'Completed'),
(12, 12, 700.00, 'Failed'),
(13, 13, 1500.00, 'Completed'),
(14, 14, 2500.00, 'Completed'),
(15, 15, 1300.00, 'Completed'),
(16, 16, 900.00, 'Pending'),
(17, 17, 1600.00, 'Completed'),
(18, 18, 2700.00, 'Completed'),
(19, 19, 1500.00, 'Completed'),
(20, 20, 2000.00, 'Completed');


-- Table Structure

CREATE TABLE Social_Media_Links (
    User_ID INT PRIMARY KEY,
    Facebook VARCHAR(255),
    LinkedIn VARCHAR(255),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping data 

INSERT INTO Social_Media_Links (User_ID, Facebook, LinkedIn) VALUES
(1, 'https://www.facebook.com/johndoe', 'https://www.linkedin.com/in/johndoe'),
(2, 'https://www.facebook.com/janesmith', 'https://www.linkedin.com/in/janesmith'),
(3, 'https://www.facebook.com/mikejohnson', 'https://www.linkedin.com/in/mikejohnson'),
(4, 'https://www.facebook.com/sarahbrown', 'https://www.linkedin.com/in/sarahbrown'),
(5, 'https://www.facebook.com/davidwilson', 'https://www.linkedin.com/in/davidwilson'),
(6, 'https://www.facebook.com/annataylor', 'https://www.linkedin.com/in/annataylor'),
(7, 'https://www.facebook.com/jameswhite', 'https://www.linkedin.com/in/jameswhite'),
(8, 'https://www.facebook.com/emilyharris', 'https://www.linkedin.com/in/emilyharris'),
(9, 'https://www.facebook.com/liammartinez', 'https://www.linkedin.com/in/liammartinez'),
(10, 'https://www.facebook.com/masonking', 'https://www.linkedin.com/in/masonking'),
(11, 'https://www.facebook.com/averyscott', 'https://www.linkedin.com/in/averyscott'),
(12, 'https://www.facebook.com/harpernelson', 'https://www.linkedin.com/in/harpernelson'),
(13, 'https://www.facebook.com/oliviabrown', 'https://www.linkedin.com/in/oliviabrown'),
(14, 'https://www.facebook.com/williamdavis', 'https://www.linkedin.com/in/williamdavis'),
(15, 'https://www.facebook.com/ethanclark', 'https://www.linkedin.com/in/ethanclark'),
(16, 'https://www.facebook.com/miagarcia', 'https://www.linkedin.com/in/miagarcia'),
(17, 'https://www.facebook.com/sophiaevans', 'https://www.linkedin.com/in/sophiaevans'),
(18, 'https://www.facebook.com/oliverharris', 'https://www.linkedin.com/in/oliverharris'),
(19, 'https://www.facebook.com/charlottelewis', 'https://www.linkedin.com/in/charlottelewis'),
(20, 'https://www.facebook.com/ameliawilson', 'https://www.linkedin.com/in/ameliawilson');


-- Table Structure

CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Host_ID INT,
    Property_ID INT,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comments TEXT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Host_ID) REFERENCES Host(Host_ID),
    FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
);

-- Dumping Data 

INSERT INTO Reviews (Guest_ID, Host_ID, Property_ID, Rating, Comments) VALUES
(1, 1, 1, 5, 'Excellent stay! The apartment was clean and well-located.'),
(2, 2, 4, 4, 'Good place, but the Wi-Fi was slow.'),
(3, 3, 3, 3, 'The location was okay, but the room didn’t match the pictures.'),
(4, 4, 5, 5, 'Wonderful experience! The host was very accommodating.'),
(5, 5, 6, 2, 'The property was not as described. Disappointed with the amenities.'),
(6, 6, 6, 5, 'Amazing! The view was fantastic and the apartment was very spacious.'),
(7, 7, 7, 4, 'Nice place, but the heating didn’t work properly.'),
(8, 8, 8, 5, 'Perfect for a weekend getaway! Highly recommend it.'),
(9, 9, 9, 3, 'The room was clean, but the check-in process was a bit confusing.'),
(10, 10, 10, 4, 'Good value for money. Great location!'),
(11, 11, 11, 5, 'Lovely property and the host was very helpful. Would stay again.'),
(12, 12, 12, 2, 'Not impressed. The property was not as expected.'),
(13, 13, 13, 5, 'Beautiful place, very peaceful and quiet. Great for relaxation.'),
(14, 14, 14, 3, 'Nice house, but there was some noise from the neighbors at night.'),
(15, 15, 15, 3, 'Average stay. The property was decent but could use some updates.'),
(16, 16, 16, 5, 'Amazing experience! The host was super helpful and the property was perfect.'),
(17, 17, 17, 1, 'Worst experience ever. The property was dirty and unkempt.'),
(18, 18, 18, 4, 'Great place for a short stay. The host was friendly and responsive.'),
(19, 19, 19, 5, 'I loved it! The property was stunning and the amenities were top-notch.'),
(20, 20, 20, 3, 'Decent stay, but there were some issues with cleanliness.');

-- Table Structure

CREATE TABLE Property_Images (
    Image_ID INT PRIMARY KEY AUTO_INCREMENT,
    Property_ID INT,
    Image_URL VARCHAR(255),
    FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
);

-- Dumping Data  

INSERT INTO Property_Images (Property_ID, Image_URL) VALUES
(1, 'https://example.com/images/property1_image1.jpg'),
(1, 'https://example.com/images/property1_image2.jpg'),
(2, 'https://example.com/images/property2_image1.jpg'),
(2, 'https://example.com/images/property2_image2.jpg'),
(3, 'https://example.com/images/property3_image1.jpg'),
(3, 'https://example.com/images/property3_image2.jpg'),
(4, 'https://example.com/images/property4_image1.jpg'),
(4, 'https://example.com/images/property4_image2.jpg'),
(5, 'https://example.com/images/property5_image1.jpg'),
(5, 'https://example.com/images/property5_image2.jpg'),
(6, 'https://example.com/images/property6_image1.jpg'),
(6, 'https://example.com/images/property6_image2.jpg'),
(7, 'https://example.com/images/property7_image1.jpg'),
(7, 'https://example.com/images/property7_image2.jpg'),
(8, 'https://example.com/images/property8_image1.jpg'),
(8, 'https://example.com/images/property8_image2.jpg'),
(9, 'https://example.com/images/property9_image1.jpg'),
(9, 'https://example.com/images/property9_image2.jpg'),
(10, 'https://example.com/images/property10_image1.jpg'),
(10, 'https://example.com/images/property10_image2.jpg');

-- Table Structure

CREATE TABLE Properties (
    Property_ID INT PRIMARY KEY AUTO_INCREMENT,
    Host_ID INT,
    Address VARCHAR(255),
    Type VARCHAR(50),
    Price DECIMAL(10,2),
    Availability_Status ENUM('Available', 'Booked', 'Unavailable') NOT NULL,
    FOREIGN KEY (Host_ID) REFERENCES Host(Host_ID)
);

-- Dumping Data 

INSERT INTO Properties (Host_ID, Address, Type, Price, Availability_Status) VALUES
(1, '123 Central Park West, New York', 'Apartment', 250.00, 'Available'),
(2, '456 Sunset Blvd, Los Angeles', 'House', 350.00, 'Booked'),
(3, '789 Golden Gate Ave, San Francisco', 'Condo', 200.00, 'Available'),
(4, '101 Eiffel Tower Rd, Paris', 'Apartment', 400.00, 'Unavailable'),
(5, '202 Hyde Park, London', 'House', 450.00, 'Available'),
(6, '303 Shibuya Crossing, Tokyo', 'Studio', 150.00, 'Available'),
(7, '504 Burj Khalifa St, Dubai', 'Apartment', 500.00, 'Booked'),
(8, '505 Opera House St, Sydney', 'Penthouse', 550.00, 'Unavailable'),
(9, '606 Colosseum Blvd, Rome', 'Villa', 300.00, 'Available'),
(10, '707 Sagrada Familia Rd, Barcelona', 'Condo', 250.00, 'Booked'),
(11, '808 Amsterdam Canal St, Amsterdam', 'Houseboat', 200.00, 'Available'),
(12, '909 Khao San Rd, Bangkok', 'Hostel', 100.00, 'Unavailable'),
(13, '101 Brandenburg Gate Rd, Berlin', 'Apartment', 350.00, 'Available'),
(14, '202 CN Tower Rd, Toronto', 'House', 450.00, 'Booked'),
(15, '303 Zócalo Plaza, Mexico City', 'Condo', 200.00, 'Available'),
(16, '404 Red Square, Moscow', 'Apartment', 300.00, 'Available'),
(17, '505 Marina Bay Sands Rd, Singapore', 'Luxury Villa', 1000.00, 'Available'),
(18, '606 Hagia Sophia St, Istanbul', 'Apartment', 150.00, 'Unavailable'),
(19, '707 Table Mountain Rd, Cape Town', 'House', 400.00, 'Available'),
(20, '808 Roppongi Hills, Tokyo', 'Penthouse', 500.00, 'Booked');

-- Table Structure

CREATE TABLE Promotions (
    Promotion_ID INT PRIMARY KEY AUTO_INCREMENT,
    Description VARCHAR(255),
    Discount DECIMAL(5,2),
    Expiry_Date DATE
);

-- Dumping Data  

INSERT INTO Promotions (Description, Discount, Expiry_Date) VALUES
('Summer Sale: 10% off on all bookings', 10.00, '2024-06-30'),
('Weekend Special: 15% off on weekend stays', 15.00, '2024-07-15'),
('New Year Offer: 20% off for first-time users', 20.00, '2025-01-01'),
('Holiday Deal: 25% off on stays for over 7 days', 25.00, '2024-12-31'),
('Christmas Special: 30% off on selected properties', 30.00, '2024-12-25'),
('Winter Promotion: 12% off on all bookings', 12.00, '2024-02-28'),
('Discount for returning guests: 5% off', 5.00, '2024-11-30'),
('Limited Time: 18% off on properties in New York', 18.00, '2024-07-01'),
('Special Offer for families: 15% off on family suites', 15.00, '2024-08-31'),
('Spring Offer: 10% off on bookings made in March', 10.00, '2024-03-31'),
('Stay More, Save More: 20% off on 5+ nights stays', 20.00, '2024-06-15'),
('Corporate Discount: 10% off for business travelers', 10.00, '2024-12-15'),
('Early Bird Discount: 25% off on future bookings', 25.00, '2025-01-01'),
('Referral Program: 15% off for referring a friend', 15.00, '2024-10-01'),
('Book in advance: 20% off for early bookings', 20.00, '2024-03-15'),
('Flash Sale: 40% off for 24 hours only', 40.00, '2024-05-01'),
('Student Discount: 10% off for students', 10.00, '2024-08-01'),
('Last Minute Deal: 30% off on last-minute bookings', 30.00, '2024-05-15'),
('Loyalty Offer: 15% off for frequent guests', 15.00, '2024-12-31'),
('Exclusive Discount: 10% off for members', 10.00, '2024-09-30');

-- Table Structure

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Booking_ID INT,
    Payment_Date DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Payment_Method ENUM('Credit Card', 'PayPal', 'Bank Transfer', 'Cash') NOT NULL,
    Payment_Status ENUM('Completed', 'Pending', 'Failed') NOT NULL,
    FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID)
);

-- Dumping Data 

INSERT INTO Payments (Booking_ID, Payment_Date, Amount, Payment_Method, Payment_Status) VALUES
(1, '2024-05-02', 1500.00, 'Credit Card', 'Completed'),
(2, '2024-06-01', 2100.00, 'PayPal', 'Failed'),
(3, '2024-07-02', 1000.00, 'Credit Card', 'Completed'),
(4, '2024-08-01', 2800.00, 'Bank Transfer', 'Pending'),
(5, '2024-09-01', 3200.00, 'Cash', 'Completed'),
(6, '2024-10-01', 900.00, 'PayPal', 'Completed'),
(7, '2024-11-01', 1800.00, 'Bank Transfer', 'Failed'),
(8, '2024-12-01', 1600.00, 'Credit Card', 'Completed'),
(9, '2024-01-01', 600.00, 'Cash', 'Completed'),
(10, '2024-02-01', 2200.00, 'PayPal', 'Completed'),
(11, '2024-03-01', 1200.00, 'Bank Transfer', 'Completed'),
(12, '2024-04-01', 700.00, 'Credit Card', 'Failed'),
(13, '2024-05-01', 1500.00, 'Credit Card', 'Completed'),
(14, '2024-06-01', 2500.00, 'PayPal', 'Completed'),
(15, '2024-07-01', 500.00, 'Cash', 'Completed'),
(16, '2024-08-01', 900.00, 'Bank Transfer', 'Pending'),
(17, '2024-09-01', 1600.00, 'Credit Card', 'Completed'),
(18, '2024-10-01', 1500.00, 'PayPal', 'Completed'),
(19, '2024-11-01', 1300.00, 'Credit Card', 'Completed'),
(20, '2024-12-01', 2000.00, 'Bank Transfer', 'Completed');

-- Table Structure

CREATE TABLE Notifications (
    Notification_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Message TEXT,
    Status ENUM('Unread', 'Read') NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping Data 

INSERT INTO Notifications (User_ID, Message, Status) VALUES
(1, 'Your booking for Property 1 has been confirmed.', 'Unread'),
(2, 'You have a new message from Host 2.', 'Read'),
(3, 'Your booking for Property 3 has been canceled.', 'Unread'),
(4, 'Payment for your booking has been successfully processed.', 'Read'),
(5, 'Your booking for Property 5 is confirmed, enjoy your stay!', 'Unread'),
(6, 'Your booking for Property 6 has been rejected by the host.', 'Read'),
(7, 'Host 7 has responded to your inquiry.', 'Unread'),
(8, 'Your refund has been processed for booking 8.', 'Read'),
(9, 'New review posted for your property 9.', 'Unread'),
(10, 'Your booking for Property 10 has been successfully checked in.', 'Read'),
(11, 'Reminder: Your booking for Property 11 is tomorrow.', 'Unread'),
(12, 'Host 12 has declined your booking request.', 'Read'),
(13, 'You have been blacklisted from Property 13 due to multiple cancellations.', 'Unread'),
(14, 'Congratulations! You have received a 10% discount for your next booking.', 'Read'),
(15, 'Your booking for Property 15 has been modified.', 'Unread'),
(16, 'You have been sent a new promotion for Property 16.', 'Read'),
(17, 'Your account has been verified. You can now book properties!', 'Unread'),
(18, 'Reminder: Your payment for booking 18 is due tomorrow.', 'Read'),
(19, 'Your property 19 has been approved for listing.', 'Unread'),
(20, 'Booking for Property 20 is confirmed.', 'Unread');


-- Table Structure

CREATE TABLE Messages (
    Message_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sender_ID INT,
    Receiver_ID INT,
    Content TEXT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Sender_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Receiver_ID) REFERENCES User(User_ID)
);

-- Dumping Data 

INSERT INTO Messages (Sender_ID, Receiver_ID, Content) VALUES
(1, 2, 'Hi, I have a question about the availability of your property.'),
(2, 1, 'Hello, the property is available. Let me know if you would like to proceed with the booking.'),
(3, 4, 'Can you confirm the amenities available at your place?'),
(4, 3, 'Sure! The place has Wi-Fi, a kitchen, and air conditioning.'),
(5, 6, 'I’d like to extend my booking. Is that possible?'),
(6, 5, 'I will check the availability and get back to you.'),
(7, 8, 'Is there parking available at the property?'),
(8, 7, 'Yes, there is free parking available for guests.'),
(9, 10, 'I want to cancel my booking. How do I proceed?'),
(10, 9, 'Please contact support for assistance with cancellations.'),
(11, 12, 'Could you provide a late checkout option?'),
(12, 11, 'Late checkout is available for an additional fee.'),
(13, 14, 'I have a question about the property’s location.'),
(14, 13, 'The property is located near the city center, just a 5-minute walk to restaurants.'),
(15, 16, 'Is it possible to change the payment method?'),
(16, 15, 'You can change your payment method by updating your booking details.'),
(17, 18, 'Do you offer any discounts for long-term stays?'),
(18, 17, 'Yes, we offer a 10% discount for stays over 7 days.'),
(19, 20, 'How do I know if the property is verified?'),
(20, 19, 'All properties listed on Airbnb are verified by our team.');


-- Table Structure

CREATE TABLE Guest_Preferences (
    Preference_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Preferred_Location VARCHAR(100),
    Price_Range DECIMAL(10,2),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID)
);

-- Dumping Data 

INSERT INTO Guest_Preferences (Guest_ID, Preferred_Location, Price_Range) VALUES
(1, 'New York', 150.00),
(2, 'Los Angeles', 200.00),
(3, 'San Francisco', 250.00),
(4, 'Paris', 300.00),
(5, 'London', 350.00),
(6, 'Tokyo', 400.00),
(7, 'Dubai', 500.00),
(8, 'Sydney', 550.00),
(9, 'Rome', 600.00),
(10, 'Barcelona', 650.00),
(11, 'Amsterdam', 700.00),
(12, 'Bangkok', 750.00),
(13, 'Berlin', 800.00),
(14, 'Toronto', 850.00),
(15, 'Mexico City', 900.00),
(16, 'Moscow', 950.00),
(17, 'Singapore', 1000.00),
(18, 'Istanbul', 1050.00),
(19, 'Cape Town', 1100.00),
(20, 'Cairo', 1150.00);

-- Table Structure

CREATE TABLE Host (
    Host_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Verification_Status ENUM('Pending', 'Approved', 'Rejected') NOT NULL,
    Business_License VARCHAR(255),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping Data 

INSERT INTO Host (User_ID, Verification_Status, Business_License) VALUES
(1, 'Approved', 'LICENSE123'),
(2, 'Pending', 'LICENSE124'),
(3, 'Approved', 'LICENSE125'),
(4, 'Approved', 'LICENSE126'),
(5, 'Approved', 'LICENSE127'),
(6, 'Pending', 'LICENSE128'),
(7, 'Approved', 'LICENSE129'),
(8, 'Approved', 'LICENSE130'),
(9, 'Pending', 'LICENSE131'),
(10, 'Approved', 'LICENSE132'),
(11, 'Pending', 'LICENSE133'),
(12, 'Approved', 'LICENSE134'),
(13, 'Rejected', 'LICENSE135'),
(14, 'Approved', 'LICENSE136'),
(15, 'Approved', 'LICENSE137'),
(16, 'Pending', 'LICENSE138'),
(17, 'Approved', 'LICENSE139'),
(18, 'Rejected', 'LICENSE140'),
(19, 'Approved', 'LICENSE141'),
(20, 'Approved', 'LICENSE142');

-- Table Structure

CREATE TABLE Guest_Identity_Verification (
    Identity_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Document_Type VARCHAR(100),
    Verification_Status ENUM('Pending', 'Approved', 'Rejected'),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID)
);

-- Dumping Data
 
INSERT INTO Guest_Identity_Verification (Guest_ID, Document_Type, Verification_Status) VALUES
(1, 'Passport', 'Approved'),
(2, 'Driver License', 'Pending'),
(3, 'National ID', 'Rejected'),
(4, 'Passport', 'Approved'),
(5, 'Driver License', 'Pending'),
(6, 'National ID', 'Approved'),
(7, 'Passport', 'Rejected'),
(8, 'Driver License', 'Approved'),
(9, 'National ID', 'Pending'),
(10, 'Passport', 'Approved'),
(11, 'Driver License', 'Rejected'),
(12, 'National ID', 'Pending'),
(13, 'Passport', 'Approved'),
(14, 'Driver License', 'Approved'),
(15, 'National ID', 'Rejected'),
(16, 'Passport', 'Pending'),
(17, 'Driver License', 'Approved'),
(18, 'National ID', 'Approved'),
(19, 'Passport', 'Rejected'),
(20, 'Driver License', 'Pending');


-- Table Structure

CREATE TABLE Guest (
    Guest_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Preferred_Location VARCHAR(100),
    Booking_History TEXT,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping Data 

INSERT INTO Guest (User_ID, Preferred_Location, Booking_History) VALUES
(1, 'New York', 'Booked 3 times in 2024: Central Park, Manhattan'),
(2, 'Los Angeles', 'Booked 2 times in 2023: Santa Monica Beach, Beverly Hills'),
(3, 'San Francisco', 'Booked 1 time in 2022: Golden Gate Bridge area'),
(4, 'Paris', 'Booked 5 times in 2023: Eiffel Tower, Champs-Élysées'),
(5, 'London', 'Booked 3 times in 2021: Buckingham Palace, Hyde Park'),
(6, 'Tokyo', 'Booked 2 times in 2023: Shibuya, Shinjuku'),
(7, 'Dubai', 'Booked 4 times in 2024: Burj Khalifa, Palm Jumeirah'),
(8, 'Sydney', 'Booked 3 times in 2024: Opera House, Bondi Beach'),
(9, 'Rome', 'Booked 1 time in 2022: Colosseum, Vatican City'),
(10, 'Barcelona', 'Booked 2 times in 2023: La Sagrada Familia, Park Güell'),
(11, 'Amsterdam', 'Booked 1 time in 2023: Canal View, Museum District'),
(12, 'Bangkok', 'Booked 3 times in 2023: Grand Palace, Khao San Road'),
(13, 'Berlin', 'Booked 2 times in 2024: Brandenburg Gate, Berlin Wall'),
(14, 'Toronto', 'Booked 4 times in 2022: CN Tower, Royal Ontario Museum'),
(15, 'Mexico City', 'Booked 1 time in 2021: Zócalo, Chapultepec Park'),
(16, 'Moscow', 'Booked 2 times in 2023: Red Square, Kremlin'),
(17, 'Dubai', 'Booked 1 time in 2024: Burj Al Arab, Dubai Mall'),
(18, 'Singapore', 'Booked 3 times in 2024: Marina Bay Sands, Gardens by the Bay'),
(19, 'Istanbul', 'Booked 2 times in 2023: Hagia Sophia, Bosphorus Cruise'),
(20, 'Cape Town', 'Booked 1 time in 2022: Table Mountain, V&A Waterfront');

-- Table Structure

CREATE TABLE Host_Verification (
    Verification_ID INT PRIMARY KEY AUTO_INCREMENT,
    Host_ID INT,
    Document_Type VARCHAR(100),
    Verification_Status ENUM('Pending', 'Approved', 'Rejected'),
    FOREIGN KEY (Host_ID) REFERENCES Host(Host_ID)
);

-- Dumping Data 

INSERT INTO Host_Verification (Host_ID, Document_Type, Verification_Status) VALUES
(1, 'Business License', 'Approved'),
(2, 'Government ID', 'Pending'),
(3, 'Business License', 'Rejected'),
(4, 'Business License', 'Approved'),
(5, 'Government ID', 'Pending'),
(6, 'Business License', 'Approved'),
(7, 'Government ID', 'Rejected'),
(8, 'Business License', 'Approved'),
(9, 'Government ID', 'Pending'),
(10, 'Business License', 'Approved'),
(11, 'Government ID', 'Approved'),
(12, 'Business License', 'Rejected'),
(13, 'Business License', 'Approved'),
(14, 'Government ID', 'Approved'),
(15, 'Business License', 'Pending'),
(16, 'Government ID', 'Approved'),
(17, 'Business License', 'Rejected'),
(18, 'Government ID', 'Approved'),
(19, 'Business License', 'Pending'),
(20, 'Government ID', 'Approved');

-- Table Structure

CREATE TABLE Notifications (
    Notification_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Message TEXT,
    Status ENUM('Unread', 'Read') NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping Data 

INSERT INTO Notifications (User_ID, Message, Status) VALUES
(1, 'Your booking for Property 1 has been confirmed.', 'Unread'),
(2, 'You have a new message from Host 2.', 'Read'),
(3, 'Your booking for Property 3 has been canceled.', 'Unread'),
(4, 'Payment for your booking has been successfully processed.', 'Read'),
(5, 'Your booking for Property 5 is confirmed, enjoy your stay!', 'Unread'),
(6, 'Your booking for Property 6 has been rejected by the host.', 'Read'),
(7, 'Host 7 has responded to your inquiry.', 'Unread'),
(8, 'Your refund has been processed for booking 8.', 'Read'),
(9, 'New review posted for your property 9.', 'Unread'),
(10, 'Your booking for Property 10 has been successfully checked in.', 'Read'),
(11, 'Reminder: Your booking for Property 11 is tomorrow.', 'Unread'),
(12, 'Host 12 has declined your booking request.', 'Read'),
(13, 'You have been blacklisted from Property 13 due to multiple cancellations.', 'Unread'),
(14, 'Congratulations! You have received a 10% discount for your next booking.', 'Read'),
(15, 'Your booking for Property 15 has been modified.', 'Unread'),
(16, 'You have been sent a new promotion for Property 16.', 'Read'),
(17, 'Your account has been verified. You can now book properties!', 'Unread'),
(18, 'Reminder: Your payment for booking 18 is due tomorrow.', 'Read'),
(19, 'Your property 19 has been approved for listing.', 'Unread'),
(20, 'Booking for Property 20 is confirmed.', 'Unread');

-- Table Structure

CREATE TABLE Cancellations (
    Cancellation_ID INT PRIMARY KEY AUTO_INCREMENT,
    Booking_ID INT,
    Reason TEXT,
    Date DATE,
    FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID)
);

-- Dumping Data 

INSERT INTO Cancellations (Booking_ID, Reason, Date) VALUES
(1, 'Guest changed travel plans', '2024-05-01'),
(2, 'Booking error', '2024-06-01'),
(3, 'Property not as described', '2024-07-02'),
(4, 'Guest no longer needs accommodation', '2024-08-01'),
(5, 'Changed to another property', '2024-09-01'),
(6, 'Family emergency', '2024-10-01'),
(7, 'Double booking', '2024-11-01'),
(8, 'Guest’s travel restrictions', '2024-12-01'),
(9, 'Property maintenance issues', '2024-01-02'),
(10, 'Overbooked dates', '2024-02-01'),
(11, 'Personal reasons', '2024-03-01'),
(12, 'No-show by the guest', '2024-04-01'),
(13, 'Guest had a change of mind', '2024-05-03'),
(14, 'Inability to confirm check-in', '2024-06-02'),
(15, 'Booking conflict', '2024-07-03'),
(16, 'Guest felt unsafe', '2024-08-03'),
(17, 'Accommodation was not available', '2024-09-02'),
(18, 'Guest decided to stay elsewhere', '2024-10-02'),
(19, 'Payment issues', '2024-11-03'),
(20, 'Lack of necessary amenities', '2024-12-02');

-- Table Structure

CREATE TABLE Booking (
    Booking_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Property_ID INT,
    Check_in_Date DATE,
    Check_out_Date DATE,
    Status ENUM('Confirmed', 'Cancelled', 'Completed') NOT NULL,
    Total_Cost DECIMAL(10, 2),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
);

-- Dumping Data 

INSERT INTO Booking (Guest_ID, Property_ID, Check_in_Date, Check_out_Date, Status, Total_Cost) VALUES
(1, 1, '2024-05-01', '2024-05-07', 'Confirmed', 1500.00),
(2, 2, '2024-06-01', '2024-06-07', 'Cancelled', 2100.00),
(3, 3, '2024-07-01', '2024-07-05', 'Completed', 1000.00),
(4, 4, '2024-08-01', '2024-08-07', 'Confirmed', 2800.00),
(5, 5, '2024-09-01', '2024-09-07', 'Completed', 900.00),
(6, 6, '2024-10-01', '2024-10-05', 'Confirmed', 1900.00),
(7, 7, '2024-11-01', '2024-11-07', 'Cancelled', 1000.00),
(8, 8, '2024-12-01', '2024-12-05', 'Confirmed', 1600.00),
(9, 9, '2024-01-01', '2024-01-07', 'Confirmed', 1200.00),
(10, 10, '2024-02-01', '2024-02-07', 'Completed', 600.00),
(11, 11, '2024-03-01', '2024-03-05', 'Confirmed', 2000.00),
(12, 12, '2024-04-01', '2024-04-03', 'Cancelled', 700.00),
(13, 13, '2024-05-01', '2024-05-05', 'Completed', 2500.00),
(14, 14, '2024-06-01', '2024-06-07', 'Confirmed', 1300.00),
(15, 15, '2024-07-01', '2024-07-05', 'Completed', 1600.00),
(16, 16, '2024-08-01', '2024-08-07', 'Completed', 2700.00),
(17, 17, '2024-09-01', '2024-09-04', 'Confirmed', 1500.00),
(18, 18, '2024-10-01', '2024-10-05', 'Completed', 2300.00),
(19, 19, '2024-11-01', '2024-11-07', 'Cancelled', 1500.00),
(20, 20, '2024-12-01', '2024-12-06', 'Confirmed', 2000.00);

-- Table Structure

CREATE TABLE Booking_History (
    History_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT,
    Property_ID INT,
    Booking_Date DATE,
    Check_in_Date DATE,
    Check_out_Date DATE,
    Total_Cost DECIMAL(10,2),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
);

-- Dumping Data 

INSERT INTO Booking_History (Guest_ID, Property_ID, Booking_Date, Check_in_Date, Check_out_Date, Total_Cost) VALUES
(1, 1, '2024-05-01', '2024-05-05', '2024-05-07', 1500.00),
(2, 2, '2024-06-01', '2024-06-03', '2024-06-05', 2100.00),
(3, 3, '2024-07-01', '2024-07-03', '2024-07-05', 1000.00),
(4, 4, '2024-08-01', '2024-08-03', '2024-08-05', 2800.00),
(5, 5, '2024-09-01', '2024-09-03', '2024-09-05', 3200.00),
(6, 6, '2024-10-01', '2024-10-03', '2024-10-05', 900.00),
(7, 7, '2024-11-01', '2024-11-03', '2024-11-05', 1200.00),
(8, 8, '2024-12-01', '2024-12-03', '2024-12-05', 600.00),
(9, 9, '2024-01-01', '2024-01-03', '2024-01-05', 2000.00),
(10, 10, '2024-02-01', '2024-02-03', '2024-02-05', 700.00),
(11, 11, '2024-03-01', '2024-03-03', '2024-03-05', 1500.00),
(12, 12, '2024-04-01', '2024-04-03', '2024-04-05', 1200.00),
(13, 13, '2024-05-01', '2024-05-03', '2024-05-05', 2500.00),
(14, 14, '2024-06-01', '2024-06-03', '2024-06-05', 1800.00),
(15, 15, '2024-07-01', '2024-07-03', '2024-07-05', 2700.00),
(16, 16, '2024-08-01', '2024-08-03', '2024-08-05', 2300.00),
(17, 17, '2024-09-01', '2024-09-03', '2024-09-05', 1900.00),
(18, 18, '2024-10-01', '2024-10-03', '2024-10-05', 2200.00),
(19, 19, '2024-11-01', '2024-11-03', '2024-11-05', 2700.00),
(20, 20, '2024-12-01', '2024-12-03', '2024-12-05', 2000.00);

-- Table Structure

CREATE TABLE Blacklist (
    Blacklist_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Reason TEXT,
    Date DATE,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Dumping Data 

INSERT INTO Blacklist (User_ID, Reason, Date) VALUES
(1, 'Fraudulent activity', '2024-05-01'),
(2, 'Inappropriate behavior', '2024-06-01'),
(3, 'Repeated cancellations', '2024-07-02'),
(4, 'Violating property rules', '2024-08-01'),
(5, 'Fake reviews', '2024-09-01'),
(6, 'Non-payment of dues', '2024-10-01'),
(7, 'Misrepresentation of property', '2024-11-01'),
(8, 'Unethical conduct', '2024-12-01'),
(9, 'Harassment towards other users', '2024-01-02'),
(10, 'Damaging property', '2024-02-01'),
(11, 'Unprofessional behavior', '2024-03-01'),
(12, 'Failure to verify identity', '2024-04-01'),
(13, 'Illegal activities on property', '2024-05-03'),
(14, 'Host discrimination', '2024-06-02'),
(15, 'Guests not following guidelines', '2024-07-03'),
(16, 'Property damage complaints', '2024-08-03'),
(17, 'Repeated violation of terms', '2024-09-02'),
(18, 'Inconsistent communication', '2024-10-02'),
(19, 'Repeated booking cancellations', '2024-11-03'),
(20, 'Unresolved disputes', '2024-12-02');

-- Table Structure

CREATE TABLE Discounts (
    Discount_ID INT PRIMARY KEY AUTO_INCREMENT,
    Property_ID INT,
    Discount_Type VARCHAR(100),
    Discount_Value DECIMAL(10,2),
    FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
);

-- Dumping Data 

INSERT INTO Discounts (Property_ID, Discount_Type, Discount_Value) VALUES
(1, 'Seasonal', 10.00),
(2, 'Loyalty', 5.00),
(3, 'Flash Sale', 20.00),
(4, 'New User', 15.00),
(5, 'Early Bird', 25.00),
(6, 'Weekend Special', 30.00),
(7, 'Last Minute', 18.00),
(8, 'Extended Stay', 12.00),
(9, 'Referral', 10.00),
(10, 'Holiday Offer', 30.00),
(11, 'Group Booking', 10.00),
(12, 'Corporate', 15.00),
(13, 'Festive Discount', 20.00),
(14, 'Summer Sale', 15.00),
(15, 'Weekly Discount', 8.00),
(16, 'Birthday Special', 5.00),
(17, 'Christmas Sale', 40.00),
(18, 'VIP Customer', 12.00),
(19, 'Member Discount', 10.00),
(20, 'Flash Deal', 25.00);

-- Table Structure

CREATE TABLE Admins (
    Admin_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Role VARCHAR(50)
);

-- Dumping Data 

INSERT INTO Admins (Name, Contact, Role) VALUES
('John Doe', '1234567890', 'Platform Manager'),
('Jane Smith', '0987654321', 'Customer Support'),
('Mike Johnson', '1122334455', 'Operations Head'),
('Sara Brown', '2233445566', 'Guest Relations'),
('David Wilson', '3344556677', 'Host Support'),
('Anna Taylor', '4455667788', 'Finance Manager'),
('James White', '5566778899', 'Marketing Head'),
('Emily Harris', '6677889900', 'User Support'),
('Liam Martinez', '7788990011', 'HR Manager'),
('Mason King', '8899001122', 'Community Manager'),
('Avery Scott', '9900112233', 'Tech Support'),
('Harper Nelson', '1011121314', 'Business Development'),
('Olivia Brown', '1213141516', 'Customer Success'),
('William Davis', '1314151617', 'Admin Lead'),
('Ethan Clark', '1415161718', 'Quality Assurance'),
('Mia Garcia', '1516171819', 'Customer Experience'),
('Sophia Evans', '1617181920', 'Social Media Manager'),
('Oliver Harris', '1718192021', 'Content Manager'),
('Charlotte Lewis', '1819202122', 'Legal Support');


