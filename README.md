# world-happiness-report-vs-suicide-statistics
 EDA and a visualization on a data set related to the World Happiness Index, and another on suicide statstics.

# Overview
It's a dark topic, but being a man who struggles a lot with mental health, I felt it would be appropriate. I also hear that male suicide rate is over the roof in Finland, despite it being one of the happiest countries.

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


