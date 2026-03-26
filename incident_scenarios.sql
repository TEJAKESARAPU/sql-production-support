-- Incident Scenarios

-- Scenario 1: Incorrect Revenue
SELECT SUM(DISTINCT amount)
FROM transactions
WHERE status = 'SUCCESS'
AND amount IS NOT NULL;

-- Scenario 2: Missing Customer Data
SELECT *
FROM customers
WHERE email IS NULL;

-- Scenario 3: Orphan Transactions
SELECT t.*
FROM transactions t
LEFT JOIN customers c
ON t.customer_id = c.customer_id
WHERE c.customer_id IS NULL;