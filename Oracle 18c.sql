select * from covid_data where rownum<=5

--1
Select continent,count(distinct(country)) as  No_of_Countries from covid_data  group by continent order by No_of_Countries desc

--2
select country,cases from covid_data where cases=(select max(cases) from covid_data)
select country,max(cases) from covid_data group by country order by max(cases) desc

--3
select month,round(avg(deaths),2) as Avg_Deaths,continent from covid_data  group by month,continent order by continent
select  month ,avg(deaths),continent from covid_data  group by month,continent order by continent

--4
select min(cases) as MIN_CASES ,max(cases) AS Max_CASES,max(cases)-min(cases) as rangeofcases,country,population from covid_data group by population,country order by population desc fetch first 5 rows only








------------------------------------------practise--------------------------------
select  country from covid_data group by country order by (population) desc


select cases from covid_data where country='Uganda' fetch last 5 rows only

select avg(deaths) as avgdeaths,continent from covid_data  group by continent order by avgdeaths desc
select month,sum(deaths) as totaldeaths from covid_data group by month order by totaldeaths desc fetch first 1 row only
select population from covid_data where rownum<=3

select avg(deaths),month from covid_data  group by month 
select avg(deaths),month from covid_data where continent='Asia' group by month

select range(cases) from covid_data


select country,sum(deaths) from covid_data group by country order by population desc


select sum(deaths) as death, country from covid_data group by country order by population desc

select country from covid_data where rownum<=5 order by population 

select country ,sum(deaths) as death from covid_data group by country order by population desc


select continent,count(distinct(country)) as  No_of_Countries from covid_data  group by continent
select continent,count(COUNTRY) as NO_Of_Countries from covid_data group by continent
