CREATE DATABASE task3;
use task3;

CREATE TABLE novel_info (
    novel_id INT,
    title VARCHAR(50),
    author VARCHAR(50),
    genre VARCHAR(30),
    price DECIMAL(8,2),
    pages INT,
    language VARCHAR(20),
    bestseller_status VARCHAR(10)
);

CREATE TABLE building_info (
    building_id INT,
    name VARCHAR(50),
    flat_number VARCHAR(10),
    owner_name VARCHAR(50),
    city VARCHAR(30),
    floor INT,
    rent DECIMAL(10,2),
    occupancy_status VARCHAR(10)
);

CREATE TABLE appliance_info (
    appliance_id INT,
    product_name VARCHAR(50),
    brand VARCHAR(30),
    category VARCHAR(30),
    power_watts INT,
    warranty INT,
    rating FLOAT,
    availability VARCHAR(10)
);



INSERT INTO novel_info VALUES (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 350.00, 336, 'English', 'Yes'),
(2, 'Sapiens', 'Yuval Noah Harari', 'History', 450.00, 498, 'English', 'Yes'),
(3, 'The Alchemist', 'Paulo Coelho', 'Fiction', 299.00, 208, 'English', 'Yes'),
(4, '1984', 'George Orwell', 'Dystopian', 280.00, 328, 'English', 'Yes'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 320.00, 281, 'English', 'Yes'),
(6, 'The Silent Patient', 'James Clear', 'Self-help', 370.00, 320, 'English', 'Yes'),
(7, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 400.00, 310, 'English', 'Yes'),
(8, 'Becoming', 'Michelle Obama', 'Biography', 420.00, 448, 'English', 'Yes'),
(9, 'The Power of Now', 'Eckhart Tolle', 'Spiritual', 390.00, 236, 'English', 'Yes'),
(10, 'Inferno', 'Dan Brown', 'Thriller', 399.00, 463, 'English', 'Yes'),
(11, 'The Da Vinci Code', 'Dan Brown', 'Mystery', 450.00, 489, 'English', 'Yes'),
(12, 'Angels and Demons', 'Dan Brown', 'Thriller', 420.00, 572, 'English', 'Yes'),
(13, 'The Monk Who Sold His Ferrari', 'Robin Sharma', 'Self-help', 320.00, 198, 'English', 'Yes'),
(14, 'Think and Grow Rich', 'Napoleon Hill', 'Finance', 310.00, 238, 'English', 'Yes'),
(15, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 350.00, 336, 'English', 'Yes'),
(16, 'Ikigai', 'Héctor García', 'Philosophy', 330.00, 208, 'English', 'Yes'),
(17, 'The Secret', 'Rhonda Byrne', 'Spiritual', 360.00, 216, 'English', 'Yes'),
(18, 'Life’s Amazing Secrets', 'Gaur Gopal Das', 'Motivational', 299.00, 232, 'English', 'Yes'),
(19, 'Steve Jobs', 'Walter Isaacson', 'Biography', 550.00, 656, 'English', 'Yes'),
(20, 'Brief Answers to the Big Questions', 'Stephen Hawking', 'Science', 400.00, 256, 'English', 'Yes');



INSERT INTO building_info VALUES (1, 'Green Heights', 'A101', 'Ravi Kumar', 'Bangalore', 1, 12000.00, 'Occupied'),
(2, 'Sky Residency', 'B204', 'Neha Sharma', 'Mumbai', 2, 0.00, 'Vacant'),
(3, 'Sunview Towers', 'C305', 'Amit Patel', 'Delhi', 3, 15000.00, 'Occupied'),
(4, 'Lake View', 'D402', 'Sonia Mehra', 'Pune', 4, 16000.00, 'Occupied'),
(5, 'Palm Grove', 'E503', 'Arun Rao', 'Hyderabad', 5, 0.00, 'Vacant'),
(6, 'Ocean Breeze', 'F601', 'Meena Das', 'Chennai', 6, 18000.00, 'Occupied'),
(7, 'Hillside Estate', 'G702', 'John Mathew', 'Kochi', 7, 14000.00, 'Occupied'),
(8, 'Orchid Bloom', 'H803', 'Kavita Rao', 'Ahmedabad', 8, 0.00, 'Vacant'),
(9, 'Crystal Homes', 'I904', 'Rahul Jain', 'Bhopal', 9, 17000.00, 'Occupied'),
(10, 'Pearl Heights', 'J1005', 'Anjali Verma', 'Lucknow', 10, 0.00, 'Vacant'),
(11, 'Maple Apartments', 'K1106', 'Tarun Joshi', 'Nagpur', 11, 15500.00, 'Occupied'),
(12, 'Silver Sands', 'L1207', 'Pooja Iyer', 'Indore', 12, 13000.00, 'Occupied'),
(13, 'Golden Nest', 'M1308', 'Deepak Sinha', 'Jaipur', 13, 19000.00, 'Occupied'),
(14, 'Sapphire Park', 'N1409', 'Shweta Ghosh', 'Surat', 14, 0.00, 'Vacant'),
(15, 'Cedar Valley', 'O1501', 'Harsh Desai', 'Vadodara', 15, 14500.00, 'Occupied'),
(16, 'Emerald Enclave', 'P1602', 'Ritika Shah', 'Nashik', 16, 0.00, 'Vacant'),
(17, 'Sunrise Point', 'Q1703', 'Jaya Nair', 'Thrissur', 17, 12500.00, 'Occupied'),
(18, 'Galaxy Heights', 'R1804', 'Vikram Menon', 'Coimbatore', 18, 0.00, 'Vacant'),
(19, 'Zenith Tower', 'S1905', 'Anita George', 'Mysore', 19, 13500.00, 'Occupied'),
(20, 'Moonlight Complex', 'T2006', 'Rohan Bhatt', 'Hubli', 20, 16500.00, 'Occupied');



INSERT INTO appliance_info VALUES (1, 'Refrigerator', 'LG', 'Cooling', 180, 2, 4.5, 'Yes'),
(2, 'Microwave Oven', 'Samsung', 'Cooking', 1200, 1, 4.3, 'Yes'),
(3, 'Washing Machine', 'Whirlpool', 'Laundry', 500, 3, 4.2, 'Yes'),
(4, 'Air Conditioner', 'Voltas', 'Cooling', 1500, 2, 4.4, 'Yes'),
(5, 'Television', 'Sony', 'Entertainment', 120, 2, 4.5, 'Yes'),
(6, 'Vacuum Cleaner', 'Eureka', 'Cleaning', 1000, 1, 4.0, 'Yes'),
(7, 'Water Purifier', 'Kent', 'Purification', 60, 2, 4.1, 'Yes'),
(8, 'Heater', 'Havells', 'Heating', 2000, 1, 4.3, 'Yes'),
(9, 'Toaster', 'Morphy Richards', 'Cooking', 800, 1, 3.9, 'Yes'),
(10, 'Coffee Maker', 'Philips', 'Kitchen', 750, 2, 4.2, 'Yes'),
(11, 'Ceiling Fan', 'Usha', 'Cooling', 70, 3, 3.8, 'Yes'),
(12, 'Electric Kettle', 'Prestige', 'Kitchen', 1500, 1, 4.4, 'Yes'),
(13, 'Dishwasher', 'Bosch', 'Kitchen', 2400, 2, 4.5, 'Yes'),
(14, 'Hair Dryer', 'Panasonic', 'Personal Care', 1800, 1, 4.1, 'Yes'),
(15, 'Induction Cooktop', 'Bajaj', 'Cooking', 2100, 2, 4.3, 'Yes'),
(16, 'Mixer Grinder', 'Preethi', 'Kitchen', 750, 2, 4.0, 'Yes'),
(17, 'Geyser', 'AO Smith', 'Heating', 2000, 3, 4.2, 'Yes'),
(18, 'Air Purifier', 'Dyson', 'Purification', 1200, 2, 4.6, 'Yes'),
(19, 'Smart Light', 'Syska', 'Lighting', 10, 1, 4.3, 'Yes'),
(20, 'Router', 'TP-Link', 'Networking', 25, 2, 4.0, 'Yes');

UPDATE novel_info SET price = 499 WHERE genre = 'Thriller' AND pages BETWEEN 200 AND 400;
UPDATE novel_info SET language = 'English' WHERE genre IN ('Mystery', 'Fiction');
UPDATE novel_info SET bestseller_status = 'No' WHERE novel_id IN (3, 6, 9);
UPDATE novel_info SET bestseller_status = 'Yes' WHERE novel_id NOT IN (2, 4, 6);
UPDATE novel_info SET language = 'Hindi' WHERE novel_id NOT BETWEEN 5 AND 10;
UPDATE novel_info SET bestseller_status = 'Yes' WHERE pages BETWEEN 250 AND 350;



UPDATE building_info SET rent = 15000 WHERE floor BETWEEN 2 AND 4;
UPDATE building_info SET occupancy_status = 'Vacant' WHERE rent > 10000;
UPDATE building_info SET rent = 0 WHERE occupancy_status = 'Vacant' AND city = 'Mumbai';
UPDATE building_info SET city = 'Bangalore' WHERE floor < 2 OR rent > 20000;
UPDATE building_info SET rent = 12000 WHERE rent BETWEEN 10000 AND 18000;



UPDATE appliance_info SET rating = 4.9 WHERE brand IN ('Samsung', 'LG');
UPDATE appliance_info SET rating = 4.2 WHERE brand NOT IN ('Sony', 'Apple');
UPDATE appliance_info SET warranty = 3 WHERE power_watts BETWEEN 800 AND 2000;
UPDATE appliance_info SET availability = 'No' WHERE power_watts > 1000 AND rating < 4.0;
UPDATE appliance_info SET availability = 'Yes' WHERE brand NOT IN ('Voltas', 'Onida');


DELETE FROM novel_info WHERE price < 200;
DELETE FROM novel_info WHERE novel_id IN (3, 5, 7);
DELETE FROM building_info WHERE floor NOT BETWEEN 1 AND 5;
DELETE FROM appliance_info WHERE availability = 'No' OR rating < 3.5;
DELETE FROM appliance_info WHERE appliance_id NOT BETWEEN 5 AND 15;


SELECT * FROM novel_info WHERE genre = 'Fiction';
SELECT * FROM building_info WHERE city = 'Delhi';
SELECT * FROM appliance_info WHERE category = 'Kitchen';

SELECT * FROM novel_info WHERE genre = 'Mystery' AND pages > 300;
SELECT * FROM building_info WHERE city IN ('Mumbai', 'Bangalore');
SELECT * FROM appliance_info WHERE rating BETWEEN 4.0 AND 4.8;
SELECT * FROM appliance_info WHERE appliance_id NOT BETWEEN 10 AND 15;


select count(*)from novel_info;


select count(novel_id) from novel_info;

select count(*) As total_pages from novel_info;

select sum(Pages) As total_pages from novel_info; 

select max(title) As title from novel_info;

select min(price) As total_price from novel_info;

select avg(language) As language from novel_info;

select max(title) As t from novel_info where title ='The Silent Patient';

select sum(price) As p from novel_info group by author having p<400; 


