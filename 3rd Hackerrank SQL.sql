/* 1. Given the CITY and COUNTRY tables, query the sum of 
the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
 */

select sum(city.population)
from city
inner join country
on city.countrycode = country.code
where country.continent = 'Asia';

/* 2. Given the CITY and COUNTRY tables, query the names of 
all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
select city.name
from city
inner join country
on city.countrycode = country.code
where country.continent = 'Africa';

/* 3. Given the CITY and COUNTRY tables, query the names of all the continents 
(COUNTRY.Continent) and their respective average city 
populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
select country.continent, floor(avg(city.population))
from city
inner join country
on city.countrycode = country.code
group by country.continent;





