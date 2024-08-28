## Milestone 2
- We have imported data from different sources such as Azure SQL Database, Azure Blob Storage, CSV files and combining a folder of CSV files into 1 Table
- We have cleaned and transformed them; renaming columns, removing duplicates and nulls, split columns that contained data on date and time together into 2 separate cols, and created some new cols from existing columns


## Milestone 3
- We have created a continuous date table with common data such as Day, Month, Quarter, Year and columns for the start of each. 

![Dates](https://github.com/user-attachments/assets/c0149528-e2ae-4063-881d-73343869fce0)

- We have created a measures table to create common measures such as Total customers, Total Profit, Profit YTD, Revenue YTD etc

![Total Profit](https://github.com/user-attachments/assets/54678f84-d1fd-4401-a8e8-e829e6c81824)

![Revenue YTD](https://github.com/user-attachments/assets/b8b6414a-768a-4a71-9000-0d21615c35bc)

- We have created a Hierarchy for date; separating it by Year, Quarter, Month and Week 


- We have created new columns in order to create a Hierarchy for Geography columns; separating it by Region, Country, Country Region

![Country](https://github.com/user-attachments/assets/f48e5fa8-c1cd-4a14-b233-3e3026208fc1)
---

### Current Data Model:
![DataModel](https://github.com/user-attachments/assets/137b6d9e-e9d0-4d8a-8110-7a044a832ee9)


## Milestone 4 & 5
Building the Customer Detail Page
- First created cards:
    - Unique Customer: Total Customer measure we created. 
    - Revenue Per Customer: Created this measure by doing Total Revenue / Total Customers 

![Card Visuals](https://github.com/user-attachments/assets/33323d15-619b-4c1b-807a-c16dbd179bc5)

- Created some charts:
    - Donut chart: showing total customers for each country by filtering total customer measure by the country column from the users table.
    - Column chart: showing number of customers for each product category by filtering total customer measure by the category column from the products table
    - Line chart: Total customers against Date hierarchy
        - Adding a trend line and forecast for the next 10 periods with a 95% confidence interval

![Charts](https://github.com/user-attachments/assets/002be664-2943-4be0-a571-85554f1aa3c3)

- Created a New table for top 20 customers:
    - Top 20 by revenue with customers full name, revenue and number of orders
    - Displaying these metrics on card visuals for the top customer only
    - Added a date slicer to filter by year

![New table](https://github.com/user-attachments/assets/ad8e9fab-6b97-4855-a64d-b6f7030ce476)

![Top Customer Cards](https://github.com/user-attachments/assets/ff6e946c-42a6-435f-a770-e816e5620c5a)



