-- =====================================================
-- PROJECT: BILLIONAIRE WEALTH INVESTIGATION
-- DATABASE: Billionaire_Wealth.db
-- TABLE: billionaire_wealth
-- TOTAL RECORDS: 200
-- =====================================================


-- QUESTION 1:
-- Retrieve the 20 richest billionaires.

SELECT *
FROM billionaire_wealth
ORDER BY Networt_billion_US_dollars DESC
LIMIT 20;


-- QUESTION 2:
-- Identify the five youngest billionaires.

SELECT *
FROM billionaire_wealth
ORDER BY Age ASC
LIMIT 5;


-- QUESTION 3:
-- Calculate the average age and average net worth.

SELECT
    AVG(Age) AS average_age,
    AVG(Networt_billion_US_dollars) AS average_net_worth
FROM billionaire_wealth;


-- QUESTION 4:
-- Find the five countries with the highest number of billionaires.

SELECT
    Country,
    COUNT(*) AS number_of_billionaires
FROM billionaire_wealth
GROUP BY Country
ORDER BY number_of_billionaires DESC
LIMIT 5;


-- QUESTION 5:
-- Calculate the combined net worth of billionaires in each country.

SELECT
    Country,
    SUM(Networt_billion_US_dollars) AS total_net_worth
FROM billionaire_wealth
GROUP BY Country
ORDER BY total_net_worth DESC;


-- QUESTION 6:
-- Find the five industries with the highest number of billionaires.

SELECT
    Industry,
    COUNT(*) AS number_of_billionaires
FROM billionaire_wealth
GROUP BY Industry
ORDER BY number_of_billionaires DESC
LIMIT 5;


-- QUESTION 7:
-- Find countries with at least five billionaires.

SELECT
    Country,
    COUNT(*) AS number_of_billionaires
FROM billionaire_wealth
GROUP BY Country
HAVING COUNT(*) >= 5
ORDER BY number_of_billionaires DESC;


-- QUESTION 8:
-- Calculate the total net worth of billionaires below age 50.

SELECT
    SUM(Networt_billion_US_dollars) AS total_net_worth_under_50
FROM billionaire_wealth
WHERE Age < 50;


-- QUESTION 9:
-- Find billionaires whose net worth is above the overall average.

SELECT *
FROM billionaire_wealth
WHERE Networt_billion_US_dollars > (
    SELECT AVG(Networt_billion_US_dollars)
    FROM billionaire_wealth
)
ORDER BY Networt_billion_US_dollars DESC;


-- QUESTION 10:
-- Find the industry with the highest average net worth.

SELECT
    Industry,
    AVG(Networt_billion_US_dollars) AS average_net_worth
FROM billionaire_wealth
GROUP BY Industry
ORDER BY AVG(Networt_billion_US_dollars) DESC
LIMIT 1;


-- QUESTION 11:
-- Retrieve the ten oldest billionaires.

SELECT *
FROM billionaire_wealth
ORDER BY Age DESC
LIMIT 10;


-- QUESTION 12:
-- Count the number of billionaires below age 40.

SELECT
    COUNT(*) AS billionaires_below_40
FROM billionaire_wealth
WHERE Age < 40;


-- QUESTION 13:
-- Find the highest net worth recorded in each country.

SELECT
    Country,
    MAX(Networt_billion_US_dollars) AS highest_net_worth
FROM billionaire_wealth
GROUP BY Country
ORDER BY MAX(Networt_billion_US_dollars) DESC;


-- QUESTION 14:
-- Find industries with an average net worth above $30 billion.

SELECT
    Industry,
    AVG(Networt_billion_US_dollars) AS average_net_worth
FROM billionaire_wealth
GROUP BY Industry
HAVING AVG(Networt_billion_US_dollars) > 30
ORDER BY AVG(Networt_billion_US_dollars) DESC;


-- QUESTION 15:
-- Calculate the difference between the highest and lowest net worth.

SELECT
    MAX(Networt_billion_US_dollars) AS highest_net_worth,
    MIN(Networt_billion_US_dollars) AS lowest_net_worth,
    MAX(Networt_billion_US_dollars) -
    MIN(Networt_billion_US_dollars) AS net_worth_difference
FROM billionaire_wealth;


-- =====================================================
-- END OF PROJECT QUERIES
-- =====================================================

-- Project completed by: Faizah Funmilayo Akogun
-- Tool used: SQLite