-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

-- Define the table schema for category
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Define the table schema for subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Define the table schema for contacts
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(3),
    launch_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    end_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    category_id VARCHAR(50),
    subcategory_id VARCHAR(50),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
-- Check data in table
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;