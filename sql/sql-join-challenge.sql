-- 1. How many plots from each type are there?

-- plot_type n
--------------
--     type1 x
--     type2 y
--         ...

-- See
SELECT  *
FROM plots

-- Count
SELECT  COUNT(*)
FROM plots

-- Group
SELECT  COUNT(*)
FROM plots
GROUP BY plot_type

-- Tidy
SELECT  plot_type, COUNT(*) AS n
FROM plots
GROUP BY plot_type



-- 2. How many specimens of each sex are there for each year?

-- species_id sex year n
------------------------
--              F   y1 x
--              F   y2 y
--              M   y1 z
--                   ...

-- See
SELECT *
FROM surveys

-- Count
SELECT sex, year, COUNT(*)
FROM surveys

-- Fix sex (different than in lesson)
SELECT IFNULL(sex, "U") AS sex2, year, COUNT(*)
FROM surveys

-- Group
SELECT IFNULL(sex, "U") AS sex2, year, COUNT(*)
FROM surveys
GROUP BY sex2, year

-- Tidy
SELECT IFNULL(sex, "U") AS sex, year, COUNT(*) AS n
FROM surveys
GROUP BY sex, year



-- 3. Skipping.



-- 4. What is the average weight of each taxa?

-- taxa weight_avg
------------------
--  tx1          x
--  tx2          y
--             ...

SELECT taxa, weight
FROM species
JOIN surveys
USING (species_id)

SELECT taxa, AVG(weight)
FROM species
JOIN surveys
USING (species_id)
GROUP BY taxa



-- 5. to 7. Skipping.