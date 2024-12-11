-- Count the number if athletes from each country

select country, count(*) as TotalAthletes
from athletes
group by country 
order by TotalAthletes desc;

-- calculate total number of medals won by each country

select 
TeamCountry,
sum(Gold) Total_Gold,
sum(Silver) Total_Silver,
sum(Bronze) Total_Bronze
from medals
group by TeamCountry
order by Total_Gold desc;

-- Calculate the average number of entries by gender for each discipline

select Discipline,
avg(Male) Avg_Male,
avg(Female) Avg_Female
from entriesgender
group by discipline;