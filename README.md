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

![Current pbix file](https://github.com/user-attachments/assets/fd4cba4c-83f3-465d-8e44-bad499fde3b0)

## Milestone 6
- Created card visuals for Total Revenue, Total Orders and Total Profit 
![Cards](https://github.com/user-attachments/assets/a543d73a-bda7-4fb3-8b30-515dfeec5ddf)

- Line chart for Total Revenue against Date, where we can filter up to Month level

- 2 Donut charts:
    - one for Total Revenue broken by country from store table
    - one for Total Revenue broken by store type from store table

- Bar chart for Total customers by Product Category 

- Adding KPI Visuals:
    - Created new measures for the following:
        - Previous Quarter Profit
        - Previous Quarter Revenue
        - Previous Quarter Orders
        - Target Profit, Target Revenue and Target Orders which were all equal to 5% growth in each measure compared to the previous quarter, so doing 1.05 * Previous Quarters measure for each.

![Previous Quarter Calculation e.g.](https://github.com/user-attachments/assets/d20cabcb-512b-42ea-89d1-b7855f1bae49)
        
![Target Calculation e.g.](https://github.com/user-attachments/assets/b517f945-bcdc-4d5c-b3f8-92ce7bce2a29)

    - Created the KPI Visuals for each target
        - Value: held the total for each measure
        - Trend Axis: start of Quarter for all
        - Target: target measure we created for each

![KPI Visual card e.g.](https://github.com/user-attachments/assets/ca19d50d-3767-4292-9340-c54404b4c670)

![current pbix file](https://github.com/user-attachments/assets/760bc291-2f8c-4ce1-9062-87296fed2810)


## Milestone 7 

- Added gauges to show the current quarterly performance in comparison to the target quarterly performance
- Created new measures for quarterly targets and for the gaps between target and current 

![gauges](https://github.com/user-attachments/assets/5dfd4c66-90c3-4073-8244-9612a6d6bc05)

- Created new cards to show the filter state of the slicers
![filter cards](https://github.com/user-attachments/assets/4788507a-1b9c-4a33-9c30-0a3de589f43d)

- Added an area chart to show performance of different product categories in terms of revenue over time
![area chart](https://github.com/user-attachments/assets/eb28ed92-9b1c-4d77-928d-b9f26dad26b8)

- Added a top 10 products table 
![top 10 products](https://github.com/user-attachments/assets/a15b7da8-a88c-4150-8ef7-ca7aedc236bb)

- Added a scatter graph to see which product ranges are top selling and profitable
![scatter graph](https://github.com/user-attachments/assets/461ae6d6-2e0a-41b2-811f-866edf2dc89e)

- Created a pop-out toolbar 
    - created a larger navigation bar that would hold the slicers
    - added 2 slicers for products category and stores country
    - used the bookmarks pane to create bookmarks in the different states of the page. i.e. one when the toolbar is closed and another when it is open 
    - added action buttons to the filter icon and back button icon to configure the bookmarks we created
![pop-out toolbar](https://github.com/user-attachments/assets/75e853f7-2616-47fe-95d0-bf91a750d3d6)

Current state of report
![report](https://github.com/user-attachments/assets/852e2bb6-443b-409d-afe3-a0240ad1f4c8)

