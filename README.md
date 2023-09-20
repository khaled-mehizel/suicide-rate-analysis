# world-happiness-report-vs-suicide-statistics
 EDA and a visualization on datasets related to the suicide statistics, and the world happiness report.

# Overview
It's a dark topic, but being a man who struggles a lot with mental health, I felt it would be appropriate. It's definitely a topic worth addressing, as I know from first-hand experience how devastating it can be to the people close to the departed.

The WHR dataset provides the indexes from 2015 to 2022.
The second dataset provides information on the countries, and their suicide rates as per the year 2016
Third dataset provides population data in the year 2016.

Timeframe: 2016


# Goals
- Compare the changes of the suicide numbers between age groups.
- Compare the suicide rate between genders.
- Verify the correlation between suicide rate and happiness index.
- See if the Perception of Corruption and suicide rates are correlated (food for thought).


# Resources and Tools Used
- [Suicide rate data](https://www.kaggle.com/datasets/twinkle0705/mental-health-and-suicide-rates) provided by [Twinkle Khanna](https://www.kaggle.com/twinkle0705).
- [World Happiness Report Over the Years](https://www.kaggle.com/datasets/mathurinache/world-happiness-report) provided by [Mathurin Aché](https://www.kaggle.com/mathurinache) (he lives near Le Mans, lucky)
- [Total World Population 2016](https://data.worldbank.org/indicator/SP.POP.TOTL) from the World DataBank.
- Used Power Query for preliminary examination of the data as well as unpivoting the age bracket columns into row as single column with rows instead
- CSV Lint to convert the .CSV files into .sql scripts.
- MySQL Workbench for cleaning and extracting the data.
- Power BI to visualization and make the dashboard.

# Preliminary check and removing unneeded rows
- Turned the age bracket columns into rows thanks to the unpivot feature in Power Query.
- Verified the data types.
- Got rid of unneeded columns.
- Replaced the NULL values with 0 or the mean where appropriate.
- Got rid of the statistics of people 70 years old and up.


# Importing the data into MySQL Workbench
- Importing all the happiness tables into one table by converting the CSV files into .sql scripts.
- Imported the suicide statistics table.
- We query our database to extract the aforementioned insights, and export the views into .csv files for import in Power BI.

# Visualizing in Power BI
- Added a card that shows the total suicide rate for the selected area (world if nothing is selected)
- Added an ArcGIS map because the filled map kept adding a different color for each country, it's extremely slow and needs work, heh.
- Added a table showing the list of countries, their happiness scores, and their suicide rates.
- Added regression plots to show the correlation between the suicide rate and the happiness score, which is basically non existent.
- Added a separate sheet for all the insights that I will copy here.

# Insights
- The highest regions in terms of suicide rate are Africa (Lesotho, Ivory Coast, Nigeria) as well as Central Europe (Slovenia, Hungary, Belarus), and the Baltic (Lithuania and Finland), despite Finland being the happiest country.
- Male population suffers from a massive increase in suicide rate over the Female population.
- The age group with the highest suicide rate is the 60-69 bracket (possible data discrepancy, it makes no sense)
- The only Western European Country with a suicide rate over 20 is Belgium, very likely due to their policies on Doctor-Assisted Suicide.
- There appears to be very little correlation between the suicide rates of a country with its citizens' Perception of Government Corruption, nor with its Happiness Score


# Recap
- Acquired a dataset from multiple sources.
- Performed the data prep and EDA via Excel, Power Query.
- Queried the data and exported multiple views in MySQL.
- Visualized the data, built a dashboard and brought correlations (and lack thereof) to light with regression plots.

I'm very unhappy with the project, I'll try to improve it, but it definitely won't be a highlight. A topic like this deserves better.


