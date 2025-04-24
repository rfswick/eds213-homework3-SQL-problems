-- Week 3 - SQL - Problem 2
-- PART 1
SELECT Site_name, MAX(Area) FROM Site;
-- This throws an error because when using an aggregate function, like MAX(Area), SQL is trying to reduce the table
-- to a single row.
-- However, when we also ask for Site_name, which is not an aggregate, it does not know how to combine multiple site
-- names into one.
-- SQL throws an error to prevent giving an ambiguous or misleading result.

-- PART 2
-- Find the site name and area of the site having the largest area.
SELECT Site_name, Area
    FROM Site
    ORDER BY Area DESC
    LIMIT 1;

-- PART 3
-- Do the same, but use a nested query. 
SELECT Site_name, Area
    FROM Site
    WHERE Area = (
        SELECT MAX(Area)
        FROM Site
        );
