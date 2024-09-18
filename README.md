# Data Analytics PowerBI Report

## Description:
- Given a large amount of sales data from different sources from a medium-sized retailer that wanted to improve their business intelligence, the aim was to transform and derive some actionable insights for better decision making.
- Aim was to design a Quarterly report using PowerBI
    - involved extracting and transforming data from various sources
    - designing a data model with a star-based schema
    - construting a multi-page report with high-level business summaries for different stakeholders with insights on factors such as:
        - Highest value customers segemnted by region
        - Detailed analysis of top-performing products categorised by type against sales targets
        - Visual map that highlights the performance metrics of the retail outlets across different areas



## Installation Instructions:
- To open the report, you can download the .pbix file 'Data Analytics PowerBI Report' and open this in PowerBI to view.


# PowerBI Report
## Summary 
The report on sales data is split into 4 key pages:
- Customer Detail Page
- Executive Summary Page
- Product Detail Page
- Stores Map Page

## Key Steps in carrying out the report
- Below is a brief summary of what was carried out in order to build the report.
- In order to gain more insight into the steps, use 'DetailedSteps.md' to get more detail.

## Importing the data into PowerBI
- Imported data from different sources such as Azure SQL Database, Azure Blob Storage, CSV files and combining a folder of CSV files into 1 Table
- Cleaned and transformed them; renaming columns, removing duplicates and nulls, split columns that contained data on date and time together into 2 separate cols, and created some new cols from existing columns
- Dataset consists of 4 tables: 
    - Orders fact table
    - Dimension Tables:
        - Products, Stores and Customers

## Creating the Data Model
- Built a date table to use as the basis for time intelligence in the Data Model
- Created relationships between key tables, building a star-based schema with one-to-many relationships and a single filter direction
- Created a measures table to create common measures such as Total customers, Total Profit, Profit YTD, Revenue YTD etc
- We have created a Hierarchy for date; separating it by Year, Quarter, Month and Week 
- We have created new columns in order to create a Hierarchy for Geography columns; separating it by Region, Country, Country Region


## Building the Customer Detail Page
Created a report page focusing on customer-level analysis with:

- card visuals for total distinct customers and revenue per customer:
- Line chart with weekly distinct customers
- Table with top 20 customers by total revenue
- Donut chart showing number of customers by country
- Bar chart showing number of customer by product category
- Card visuals to show name, number of orders and revenue for the top customer by revenue 
- A date slicer


## Building the Executive Summary Page
- Report page for high-level executive summary
- aim is to give an overview of the company's performance as a whole to get quick insights and check outcomes against key targets


Contains the following visuals:
- Card visuals showing Total Revenue, Total Profit and Total Orders
- Graph of revenue against time
- Donut charts showing orders and revenue by country
- Bar chart of orders by category
- KPIs for Quarterly revenue, customers and profit
- Table of the top 10 products


## Building the Product Detail Page
Product page for the product team
- aim is to provide an in-depth look at which product within the inventory are performing well, with the option to filter by product and region

- report page that provides insights for all products and regions combined.

Contains the following visuals:
- card visuals to show which filters are currently selected
- Gauge visuals to show how the selected category's revenue, profit and number of orders are performing against a quarterly target
- an area chart showing relative revenue performance of each category over time
- table with top 10 products by revenue
- scatter graph of quantity ordered against profit per item


## Building the Stores Map page
- Stores map page for the regional managers that allows them to easily check on the stores under their control.
- allows them to see which of the stores they are responsible for and most profitable and which are on track to reach their quarterly profit and revenue targets


## Access for non-PowerBI users
- Aim is to allow users with no access to tools such as PowerBI to get data insights and extract and share with others
- Use of SQL queries in order to extract key data without relying on PowerBI

- More information for this step can be found in the folder 'sql'