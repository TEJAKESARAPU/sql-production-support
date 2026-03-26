-- SLA & Ticket Analysis

-- Scenario 1: Average Resolution Time
select ticket_id, 
	datediff(resolved_date, created_date) as resolution_days
from tickets
where status = 'CLOSED';

-- Scenario 2: Open vs Closed Tickets
select status, count(*)
from tickets
group by status;