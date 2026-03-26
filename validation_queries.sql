-- Data Validation Queries

-- Scenario 1: Find duplicated customers
select customer_id, count(*)
from customers
group by customer_id
having count(*) > 1;

-- Scenario 2: Find null values
select customer_id,
	case
		When email is null then 'Missing Email'
        else 'Valid'
	END AS email_status
from customers;

-- Scenario 3: Find invalid foreign keys
SELECT t.*
FROM transactions t
LEFT JOIN customers c
ON t.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
