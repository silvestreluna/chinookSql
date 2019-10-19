select 
BillingCountry, count(total) as total_sale_for_country
from Invoice
group by BillingCountry
