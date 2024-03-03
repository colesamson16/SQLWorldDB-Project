use world;

#Task 1 Using count, get the number of cities in the USA​

select count(*) as Number_of_Cities_in_USA from city
where CountryCode = "USA";
select * from country;
#Task 2 Find out what the population and average life expectancy for people in Argentina (ARG) is

Select population, LifeExpectancy from country
where Name = "Argentina";

#Task 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?

select Name from country
order by LifeExpectancy DESC limit 1;

#Task 4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.

select Name from city
where Name like "F%" limit 25;

/*Task 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit
results to first 10 rows only */​

Select ID, Name, CountryCode, District, Population from city
order by ID asc limit 10;

/*Task 6 Create a SQL statement to find only those cities from city table whose population is larger than 
2000000 */

select Name from city
where Population > 2000000;

#Task 7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix

select Name from city
where Name Like "Be%";

/*Task 8 Create a SQL statement to find only those cities from city table whose population is between
500000-1000000 */

select Name from city
where population between 500000 and 1000000;

#Task 9 Create a SQL statement to find a city with the lowest population in the city table

select Name from city
order by Population ASC Limit 1;

#Bonus Task 1 Create a SQL statement to find the capital of Spain (ESP)

select city.Name from country
inner join city
on country.Capital = city.ID 
where country.Name = "Spain";

#Bonus Task 2 Create a SQL statement to list all the languages spoken in the Caribbean region

select distinct language from countrylanguage
inner join country
on countrylanguage.CountryCode = country.Code
where Region = "Caribbean";

#Bonus Task 3 Create a SQL statement to find all cities from the Europe continent

select city.Name from city
inner join country
on city.CountryCode = country.Code
where country.Continent like "Europe";
