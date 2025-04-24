-- Week 3 - SQL - Problem 1
-- PART 1
-- Create a temporary table
CREATE TEMP TABLE mytable (
    column1 REAL
    );

-- Add data into the table
INSERT INTO mytable (column1) VALUES
    (5),
    (4),
    (300), 
    (NULL), 
    (23), 
    (6),
    (NULL);

-- AVG the column
SELECT 
    AVG(column1) AS avg_column1
FROM mytable;

-- If the function ignored NULLS, we would expect an average of 67.6
-- If the function factored in NULLS, we would expect an average of 48.3
-- The function returned an average of 67.6

-- ANSWER
-- In the presence of NULL values, the AVG function ignores those values and does not include them in the calculation.

-- PART 2
SELECT SUM(column1)/COUNT(*) FROM mytable;
SELECT SUM(column1)/COUNT(column1) FROM mytable;

-- SELECT SUM(column1)/COUNT(column1) FROM mytable; is the correct way to calculate average.
-- The second query gives an average of 67.6, which is what you would expect and want, if NULL values are ignored.
-- You want NULL values to be ignored because otherwise they are being treated as a value of 0.
-- The first query is using COUNT on all values in the column.
-- The second query is using COUNT on only counting non-NULL values.

DROP TABLE mytable;