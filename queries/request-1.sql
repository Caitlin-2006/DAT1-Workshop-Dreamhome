.open ../dreamhome.sqlite
.mode column
.mode box

-- 1.1
--We need a list of all our property postcodes for a mailing campaign.--
SELECT DISTINCT postcode
FROM branch;


-- 1.2
--Provide a list of all properties and their viewing history, including those that haven't been viewed, to plan maintenance visits.--
SELECT propertyno,viewdate,comment
FROM viewing;

-- 1.3
--We're considering expanding to areas with postcode starting 'BS1'. Can you confirm if we have any properties in these areas?--
SELECT propertyno,postcode
FROM propertyforrent
WHERE postcode = 'BS1';
