# Hawker-centre-management-database

Language used: SQL

As a group of 5, we created a fictional database for a hawker centre management system. It contains stalls, rentals, orders, payments, customer feedback, and NEA hygiene inspections. This would allow operators and NEA to monitor sales, customer satisfaction, rentals, and hygiene standards. 

## Business context
Operators and NEA need one place to answer questions such as: "Which payment methods bring in the most revenue?" "Who are the highest value customers?", and "How do customers build their orders?" The database was designed from a case brief and extended with our own assumptions (e.g. one stall per owner, feedback given online). 

## What business questions my queries answer

### 1. Total sales revenue by payment type

**Question**: Which payment methods are used most and bring in the most revenue?
Insight: Cash is the most used method in the sample data. So, stalls need enough change at peak periods. 

### 2. Top 5 spending customers
**Question**: Who are the highest value customers?
Insight: Identifies customers worth rewarding through a loyalty scheme, such as discounts on set meals, rewards on the 10th visit, or a birthday meal. 

### 3. Average items per order by customer
**Question**: Which customers order the most items per transaction?
Insight: Shows customers' ordering behaviour, which can guide upselling and bundles (e.g. main + drinks combo, or time-limited dinner sets). 

## SQL skills demonstrated
Relational design and normalisation, ER-to-relational mapping, multi-table `INNER JOIN`, `GROUP BY`, aggregate functions (`COUNT DISTINCT`, `SUM`, `AVG`, `ROUND`), `TOP`, computed columns and aliasing. 
