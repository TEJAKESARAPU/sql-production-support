-- Drop tables if already exist (for rerun safety)
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS tickets;

-- creating Database
create database Production_Support;
use Production_Support;

-- Table 1: Customers
create table customers (
	customer_id int,
    name varchar(50),
    email varchar(50),
    signup_date date
);

-- Table 2: Transactions
create table transactions (
	transaction_id int,
    customer_id int,
    amount decimal(10,2),
    status varchar (20),
    transaction_date date
);

-- Table 3: Tickets
create table tickets (
	ticket_id int,
    issue_type varchar(50),
    status varchar(20),
    created_date date,
    resolved_date date
);
