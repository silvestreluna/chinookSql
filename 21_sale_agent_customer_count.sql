select 
EmployeeId, e.LastName + e.LastName as agent_name, count(CustomerId) as number_of_customers_assigned
from Employee as e
inner join Customer as c
on e.EmployeeId = c.SupportRepId
group by EmployeeId, e.LastName + e.LastName

