-- Insert Sample Data (With Issues)
-- Customers (duplicate + null issues)
INSERT INTO customers VALUES
(1, 'Teja', 'teja@gmail.com', '2024-01-01'),
(2, 'Anusha', NULL, '2024-01-05'),
(1, 'Teja', 'teja@gmail.com', '2024-01-01'); -- duplicate

-- Transactions (invalid + missing)
INSERT INTO transactions VALUES
(101, 1, 500, 'SUCCESS', '2024-02-01'),
(102, 2, NULL, 'FAILED', '2024-02-02'),
(103, 5, 300, 'SUCCESS', '2024-02-03'); -- invalid customer_id

-- Tickets
INSERT INTO tickets VALUES
(201, 'Missing Data', 'OPEN', '2024-02-05', NULL),
(202, 'Incorrect Amount', 'CLOSED', '2024-02-01', '2024-02-02');
