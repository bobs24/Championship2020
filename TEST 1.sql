/*SELECT *
FROM medals_total t JOIN medals m on m.countrycode = t.countrycode
*/

/*SELECT *
FROM medals_total t JOIN medals m ON m.countrycode = t.countrycode
JOIN coaches c ON m.countrycode = c.country_code
JOIN technical_officials o ON o.discipline = m.discipline
*/

/*UPDATE medals
SET country = REPLACE(country,"Islamic Republic of Iran","Republic of Iran")
*/

/*DELETE FROM medals
WHERE country = "Kosovo" 
*/
/*, o.function Role, UPPER(c.name) Coach_Name, c.function Function, 
UPPER(m.longname), m.discipline,  m.country,m.medaltype,t.rank, t.goldmedal,t.silvermedal,t.bronzemedal,t.total
UPPER(o.name), o.function,*/
/*SELECT distinct(country)
FROM medals
*/

SELECT UPPER(m.longname) Participant_Name ,m.discipline sports, m.country Country,UPPER(c.name) Coach_Name,
c.function Role,UPPER(o.name) Judge_Name,o.function Judge_Role, m.medaltype Medal,t.rank Ranking, t.goldmedal GoldMedal,t.silvermedal SilverMedal,t.bronzemedal BronzeMedal,t.total TotalMedal
FROM medals_total t JOIN medals m ON m.countrycode = t.countrycode
JOIN coaches c ON m.countrycode = c.country_code
JOIN technical_officials o ON o.discipline = m.discipline
ORDER BY t.rank, m.medaltype

