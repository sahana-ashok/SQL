CREATE DATABASE cloud;
use cloud;


CREATE TABLE airlines_info (
    airline_id INT,
    airline_name VARCHAR(100),
    country VARCHAR(50),
    fleet_size INT,
    founded_year INT
);

CREATE TABLE country_info (
    country_id INT,
    country_name VARCHAR(50),
    population BIGINT,
    continent VARCHAR(50),
    capital VARCHAR(50)
);

CREATE TABLE state_info (
    state_id INT,
    state_name VARCHAR(50),
    country_id INT,
    population INT,
    area_sqkm INT
);



ALTER TABLE airlines_info
ADD headquarters VARCHAR(100),
ADD ceo VARCHAR(100),
ADD international BOOLEAN;


ALTER TABLE country_info
ADD language VARCHAR(50),
ADD currency VARCHAR(50),
ADD timezone VARCHAR(50);


ALTER TABLE state_info
ADD official_language VARCHAR(50),
ADD literacy_rate DECIMAL(5,2),
ADD gdp DECIMAL(10,2);


ALTER TABLE airlines_info
RENAME COLUMN airline_name TO name,
RENAME COLUMN fleet_size TO total_planes,
RENAME COLUMN founded_year TO year_founded;


ALTER TABLE country_info
RENAME COLUMN country_name TO name,
RENAME COLUMN capital TO capital_city,
RENAME COLUMN population TO total_population;


ALTER TABLE state_info
RENAME COLUMN state_name TO name,
RENAME COLUMN area_sqkm TO area_km2,
RENAME COLUMN population TO total_population;

INSERT INTO airlines_info (airline_id, name, country, total_planes, year_founded, headquarters, ceo, international)
VALUES
(1, 'Air India', 'India', 120, 1932, 'Delhi', 'Campbell Wilson', 1),
(2, 'IndiGo', 'India', 300, 2006, 'Gurgaon', 'Pieter Elbers', 1),
(3, 'SpiceJet', 'India', 100, 2005, 'Gurgaon', 'Ajay Singh', 1),
(4, 'Go First', 'India', 65, 2005, 'Mumbai', 'Kaushik Khona', 1),
(5, 'Vistara', 'India', 55, 2015, 'Gurgaon', 'Vinod Kannan', 1),
(6, 'AirAsia India', 'India', 45, 2013, 'Bangalore', 'Aloke Singh', 1),
(7, 'Alliance Air', 'India', 30, 1996, 'Delhi', 'Vineet Sood', 0),
(8, 'Qatar Airways', 'Qatar', 250, 1993, 'Doha', 'Akbar Al Baker', 1),
(9, 'Emirates', 'UAE', 260, 1985, 'Dubai', 'Tim Clark', 1),
(10, 'Lufthansa', 'Germany', 280, 1953, 'Frankfurt', 'Carsten Spohr', 1),
(11, 'Singapore Airlines', 'Singapore', 150, 1947, 'Singapore', 'Goh Choon Phong', 1),
(12, 'Turkish Airlines', 'Turkey', 340, 1933, 'Istanbul', 'Ahmet Bolat', 1),
(13, 'Delta Air Lines', 'USA', 850, 1924, 'Atlanta', 'Ed Bastian', 1),
(14, 'United Airlines', 'USA', 750, 1926, 'Chicago', 'Scott Kirby', 1),
(15, 'American Airlines', 'USA', 950, 1930, 'Fort Worth', 'Robert Isom', 1),
(16, 'British Airways', 'UK', 280, 1974, 'London', 'Sean Doyle', 1),
(17, 'Japan Airlines', 'Japan', 230, 1951, 'Tokyo', 'Yuji Akasaka', 1),
(18, 'Korean Air', 'South Korea', 170, 1946, 'Seoul', 'Walter Cho', 1),
(19, 'Air France', 'France', 210, 1933, 'Paris', 'Anne Rigail', 1),
(20, 'Nepal Airlines', 'Nepal', 10, 1958, 'Kathmandu', 'Yubraj Adhikari', 1);

INSERT INTO country_info (country_id, name, total_population, continent, capital_city, language, currency, timezone)
VALUES
(1, 'India', 1400000000, 'Asia', 'New Delhi', 'Hindi', 'INR', 'UTC+5:30'),
(2, 'USA', 331000000, 'North America', 'Washington, D.C.', 'English', 'USD', 'UTC-5'),
(3, 'China', 1440000000, 'Asia', 'Beijing', 'Mandarin', 'CNY', 'UTC+8'),
(4, 'Germany', 83000000, 'Europe', 'Berlin', 'German', 'EUR', 'UTC+1'),
(5, 'France', 67000000, 'Europe', 'Paris', 'French', 'EUR', 'UTC+1'),
(6, 'UK', 67000000, 'Europe', 'London', 'English', 'GBP', 'UTC+0'),
(7, 'Japan', 125000000, 'Asia', 'Tokyo', 'Japanese', 'JPY', 'UTC+9'),
(8, 'Australia', 26000000, 'Australia', 'Canberra', 'English', 'AUD', 'UTC+10'),
(9, 'Canada', 38000000, 'North America', 'Ottawa', 'English/French', 'CAD', 'UTC-5'),
(10, 'Brazil', 213000000, 'South America', 'Brasília', 'Portuguese', 'BRL', 'UTC-3'),
(11, 'Russia', 146000000, 'Europe/Asia', 'Moscow', 'Russian', 'RUB', 'UTC+3'),
(12, 'South Korea', 52000000, 'Asia', 'Seoul', 'Korean', 'KRW', 'UTC+9'),
(13, 'Italy', 60000000, 'Europe', 'Rome', 'Italian', 'EUR', 'UTC+1'),
(14, 'Mexico', 128000000, 'North America', 'Mexico City', 'Spanish', 'MXN', 'UTC-6'),
(15, 'Indonesia', 273000000, 'Asia', 'Jakarta', 'Indonesian', 'IDR', 'UTC+7'),
(16, 'Saudi Arabia', 35000000, 'Asia', 'Riyadh', 'Arabic', 'SAR', 'UTC+3'),
(17, 'South Africa', 60000000, 'Africa', 'Pretoria', 'Zulu/English', 'ZAR', 'UTC+2'),
(18, 'Spain', 47000000, 'Europe', 'Madrid', 'Spanish', 'EUR', 'UTC+1'),
(19, 'Thailand', 70000000, 'Asia', 'Bangkok', 'Thai', 'THB', 'UTC+7'),
(20, 'Nepal', 30000000, 'Asia', 'Kathmandu', 'Nepali', 'NPR', 'UTC+5:45');

INSERT INTO state_info (state_id, name, country_id, total_population, area_km2, official_language, literacy_rate, gdp)
VALUES
(1, 'Karnataka', 1, 68000000, 191791, 'Kannada', 75.6, 250.5),
(2, 'California', 2, 39500000, 423970, 'English', 80.0, 3200.0),
(3, 'Bavaria', 4, 13000000, 70550, 'German', 99.0, 700.0),
(4, 'Ile-de-France', 5, 12100000, 12011, 'French', 99.0, 850.0),
(5, 'Tokyo Prefecture', 7, 14000000, 2191, 'Japanese', 100.0, 1000.0),
(6, 'New South Wales', 8, 8200000, 80000, 'English', 96.0, 600.0),
(7, 'Ontario', 9, 14700000, 1076395, 'English/French', 98.0, 900.0),
(8, 'Sao Paulo', 10, 46000000, 248222, 'Portuguese', 95.0, 1200.0),
(9, 'Moscow Region', 11, 7800000, 44600, 'Russian', 99.0, 950.0),
(10, 'Gyeonggi-do', 12, 13000000, 10171, 'Korean', 100.0, 1100.0),
(11, 'Lombardy', 13, 10000000, 23863, 'Italian', 99.0, 800.0),
(12, 'Jalisco', 14, 8400000, 78599, 'Spanish', 95.0, 650.0),
(13, 'Java', 15, 150000000, 128297, 'Indonesian', 94.0, 1800.0),
(14, 'Riyadh Region', 16, 8100000, 40400, 'Arabic', 97.0, 850.0),
(15, 'Gauteng', 17, 15000000, 18178, 'English/Zulu', 93.0, 950.0),
(16, 'Catalonia', 18, 7600000, 32114, 'Spanish/Catalan', 98.0, 820.0),
(17, 'Bangkok', 19, 10500000, 1569, 'Thai', 96.0, 670.0),
(18, 'Bagmati', 20, 6000000, 13600, 'Nepali', 85.0, 450.0),
(19, 'Texas', 2, 29000000, 695662, 'English', 89.0, 2100.0),
(20, 'West Bengal', 1, 97000000, 88752, 'Bengali', 77.0, 300.0);

SELECT * FROM airlines_info;
SELECT * FROM country_info;
SELECT * from state_info;

