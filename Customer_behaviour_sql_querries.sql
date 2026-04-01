select * from customers limit 20

----1.Total Number of Customer
select  count(*) as total_customers
from customers

----2.Subscription rate...how many customers has subscribed
SELECT 
    COUNT(CASE WHEN subscription_status = 'Yes' THEN 1 END) AS subscribers,
    COUNT(*) AS total_customers,
    ROUND(
        COUNT(CASE WHEN subscription_status = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 
        2
    ) AS subscription_rate
FROM customers;

----3.Customers Segmention as New, Returning and Loyal
SELECT *,
    CASE
        WHEN previous_purchases = 0 THEN 'New'
        WHEN previous_purchases BETWEEN 1 AND 5 THEN 'Returning'
        ELSE 'Loyal'
    END AS customer_segment
FROM customers;

----4.segment vs subscription...which segment subscribe more
SELECT 
    CASE 
        WHEN previous_purchases = 0 THEN 'New'
        WHEN previous_purchases BETWEEN 1 AND 5 THEN 'Returning'
        ELSE 'Loyal'
    END AS customer_segment,
    subscription_status,
    COUNT(*) AS total
FROM customers
GROUP BY customer_segment, subscription_status;

----5.Top  product category based on purchase count
select category, count(*) as total_purchases
from customers
group by category
order by total_purchases Desc;

----6.Discount impact
SELECT 
    discount_applied,
    subscription_status,
    COUNT(*) AS total
FROM customers
GROUP BY discount_applied, subscription_status;

----7.location with highest sales
SELECT location, SUM(purchase_amount) AS total_sales
FROM customers
GROUP BY location
ORDER BY total_sales DESC;

----8.segment with highest subscription rate
SELECT 
    CASE 
        WHEN previous_purchases = 0 THEN 'New'
        WHEN previous_purchases BETWEEN 1 AND 5 THEN 'Returning'
        ELSE 'Loyal'
    END AS customer_segment,
    COUNT(CASE WHEN subscription_status = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS subscription_rate
FROM customers
GROUP BY customer_segment
ORDER BY subscription_rate DESC;

