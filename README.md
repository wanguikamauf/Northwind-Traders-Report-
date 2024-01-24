# PROJECT NAME: NORTHWIND TRADERS SALES REPORT

---
# PROJECT OBJECTIVES:
The objectives of this analysis was to identify sales trends, both current  and historical so as to help make stategic decisions, to evaluate perfomance of the sales teams, to analyze trends in different demographics so as to tailor different sales and advertisements stategically depending on different market needs. The prject also aims at appraising success and rofitability of different products and categories of products along different demographics so as to inform inventory decisions as well as other market strategies.

---
#DATA SOURCING
The data was obtained from the MAVEN ANALYTICS website.
The link used is :https://mavenanalytics.io/challenges/maven-northwind-challenge/24

---
#DATA CLEANING AND TRANSFORMATION
The data was in different tables.. I created a database by the name of 'Northwind Traders' in SQL and then uploaded the tables there. 
I used SQL select,sum,join and group by functions to join columns from different tables and create on table with the details i needed for analysis.
The queries used to gererate the tables used both in the Microsoft Excel and power BI anaalysis are uploaded in this repository.
I then used the queries to upload the data for cleaning and aalysis on Excel and power BI
In excel i used power query to clean and transform the data
Some of the names in the table had special characters that are not supported by SQL. As a result, the names had '?' in place of this characters. 
I used Excel's find and replace function to clean this characters. 
I then loaded the data for analysis.
The data was analyzed using pivot tables and charts.
![Northwind Traders Dashboard](https://github.com/wanguikamauf/Northwind-Traders-Report-/assets/133157010/00cdc713-a2b2-4a02-a4a5-c617b9322ab3)
![Northwind Traders 2](https://github.com/wanguikamauf/Northwind-Traders-Report-/assets/133157010/790ed60b-f554-4355-962c-b71c3366d468)
On power BI I used the query to replace the '?' resulting from the characters not supported by SQL.
I then split the date column to get separate columns for day, month and year.
After loading the data to Power BI, I used DAX' measure functions to calculate totals as well as averages of various columns.
The visualization was done using various visuals supported by Power BI.
![Northwind Traders Power BI Page 1](https://github.com/wanguikamauf/Northwind-Traders-Report-/assets/133157010/74ff3a23-14de-4111-9960-78cd1e27083e)
![NORTHWIND TRADERS POWER BI PAGE 2](https://github.com/wanguikamauf/Northwind-Traders-Report-/assets/133157010/89802817-acfb-4e1a-ac60-87b786dc2736)

---
#FINDINGS
The company had 2155 oeders, sold 51000 units and gave discounts to the tune of 121.04. From this, the company was able to generate 1.35M in revenue.
Between the Year 2013 and 2014, there was a 432.05K increase in revenue. This is a 190.94% increase. It is however important to note that the analysis for 2013 had only 5 months of data. Between 2014 and 2015, there was a decrease of 188.6K  This is however not a true reflection of the perfomance that year since analysis is for the first five months of the year and not the whole year which is the case in 2014. There is also a similar trend in the volume of sales.
USA, Germany, Austria, Brazil and Venezuela are the countries generating the highest revenue.
Beverages, Dairy products, Meat & Poutry are the highest revenue generating categories of products. While meat & pouutry generated more revenue compared to the units they  sold. This can be attributed to pricing as well as the fact that they did not offer much discounts. This means that meat & poutry have a relatively higher demand.
QUICK-Stop, Save-a-lot Markets and Ernst Handel are the highest revenue generating customers. QUICK-Stop high sales can be attributed to the high purchase of products from the confections category where there is a 4700 gap between them and the customer Ernst Handel.
Cote de Blaye is the highest revenue generating product. This can be due to its large success in the USA and Brazil where it generated very high revenues compared to other products. In the USA for example,there was a 22455 difference in revenue between Cote de Blaye and Thuringer Rostbratwurst which was the second best perfoming product.
Our best perfoming employees were Margaret Peacock, Janet Leverling and Nancy Davolio.
The most preffered shipping company is United Package. It shipped 42.28% of the sales.
In most cases, increase in discount resulted in increase in sales.

---
#RECOMENDATIONS
It is clear that different products sold differently in different countries. Tailoring inventory and advertisements to this would help reduce expenses and increase profits.
Discounts resulted in increase in sales. Therefore, maintaining thee discount policies for well perfoming products and revising them for the poorly perfoming products would help increase sales.
Maintaining the sales trend will improve business perfomance as the trend shows increase in revenue.

---
