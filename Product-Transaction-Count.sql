select t.product_id, i.product_name, count(t.transaction_id) as n_ts 
from excel_sql_transaction_data t
left join excel_sql_inventory_data i 
on t.product_id = i.product_id
group by t.product_id, i.product_name
order by t.product_id
