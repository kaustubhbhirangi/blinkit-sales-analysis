-- View the raw data
SELECT * FROM blinkit_data;

-- Check unique values in a categorical column
SELECT DISTINCT Item_Fat_Content FROM blinkit_data;

-- Clean inconsistent values in Item_Fat_Content
UPDATE blinkit_data
SET Item_Fat_Content = CASE 
    WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
    WHEN Item_Fat_Content IN ('reg', 'Reguler') THEN 'Regular'
    ELSE Item_Fat_Content
END;

-- Optional: Check if cleaning worked
SELECT DISTINCT Item_Fat_Content FROM blinkit_data;
