# Airbnb Database – Data Mart in SQL

**Academic Project | IU International University of Applied Sciences**  
**Course:** Build a Data Mart in SQL (DLBDSPBDM01)  
**Student:** Habiba Zahid | Matriculation #: 92129618  
**Phase:** 2 – Development Phase

---

## Project Overview

This project involves designing and implementing a fully functional relational database modeled after the **Airbnb platform**. The database was built using MySQL and covers all core operations of a property rental platform — from user management and property listings to bookings, payments, reviews, and notifications.

---

## Database Tables (20+ Tables)

| # | Table | Description |
|---|-------|-------------|
| 1 | `User` | Stores personal info for all users (Guest, Host, Admin) |
| 2 | `Host` | Host profiles linked to users with verification status |
| 3 | `Guest` | Guest profiles with preferred locations and booking history |
| 4 | `Properties` | Property listings with address, type, price, availability |
| 5 | `Booking` | Booking records with check-in/out dates and total cost |
| 6 | `Payments` | Payment transactions linked to bookings |
| 7 | `Transactions` | Financial transaction records with status tracking |
| 8 | `Reviews` | Guest reviews for properties and hosts with ratings |
| 9 | `Messages` | Communication between guests and hosts |
| 10 | `Cancellations` | Booking cancellation records with reasons |
| 11 | `Host_Verification` | Host document verification status |
| 12 | `Guest_Identity_Verification` | Guest identity document verification |
| 13 | `Property_Images` | Multiple image URLs per property |
| 14 | `Listing_Amenities` | Amenities per property (Wi-Fi, Pool, Parking, etc.) |
| 15 | `Guest_Preferences` | Guest location and price range preferences |
| 16 | `Booking_History` | Historical record of all past bookings |
| 17 | `Notifications` | System notifications for users (read/unread) |
| 18 | `Promotions` | Discount promotions with expiry dates |
| 19 | `Discounts` | Property-specific discount types and values |
| 20 | `Blacklist` | Banned users with reasons and dates |
| 21 | `Admins` | Platform administrators with roles |
| 22 | `Social_Media_Links` | User Facebook and LinkedIn profile links |

---

## Entity Relationship Model (ERM)

The database follows a fully normalized relational structure with:
- **Primary Keys** on every table
- **Foreign Keys** maintaining referential integrity across all related tables
- **1:1, 1:M, and M:M** relationships between entities

---

## Technologies Used

- **MySQL** – Database creation and management
- **SQL** – DDL (CREATE TABLE) and DML (INSERT, SELECT)
- **ER Modeling** – Entity Relationship Diagram design

---

## Test Cases

### Test Case 1 – Data Integrity Between Booking and User Tables
Validates that every booking is linked to a valid user using an `INNER JOIN` between the `Booking` and `User` tables.

### Test Case 2 – Payment and Transaction Consistency
Validates that every completed payment has a matching completed transaction, flagging any mismatches between `Payments` and `Transactions` tables.

---

## Files in This Repository

| File | Description |
|------|-------------|
| `Airbnb_DB.sql` | Full SQL script – all CREATE TABLE and INSERT statements |
| `README.md` | Project documentation |

---

## How to Run

1. Open **MySQL Workbench** or any MySQL client
2. Open the file `Airbnb_DB.sql`
3. Run the script – it will create the database, all tables, and insert sample data
4. Use `SELECT * FROM <table_name>;` to explore the data

```sql
-- Example
USE Airbnb_DB;
SELECT * FROM Booking;
SELECT * FROM User;
```

---

## Author

**Habiba Zahid**  
Student at IU International University of Applied Sciences  
[LinkedIn] www.linkedin.com/in/habibazahid03

---

*This project was submitted as part of the academic curriculum at IU International University of Applied Sciences.*
