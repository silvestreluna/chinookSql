select 
top(1)
BillingCountry, count(total) as total_sale_for_country
from Invoice
group by BillingCountry
order by total_sale_for_country desc