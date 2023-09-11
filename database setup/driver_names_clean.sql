/* I noticed that many of the driver names contained special characters. For readability of output, I wanted to remove those special characters */
/* The query above highlights 119 drivers with special characters either in their forename or surname */
SELECT forename, surname 
FROM drivers 
WHERE surname ~ '[^A-Za-z0-9]' OR forename ~ '[^A-Za-z0-9]';

/*Looking at the extract from the query above, I then needed to identify each special character used and replace with appropriate character */
/* There might be a more systematic way to do this, maybe drawing upon a database of replacement characters somewhere */
UPDATE drivers SET forename = REPLACE(forename, 'Ú', 'e'), surname = REPLACE(surname, 'Ú', 'e');
UPDATE drivers SET forename =REPLACE(forename, 'õ', 'a'), surname = REPLACE(surname, 'õ', 'a');
UPDATE drivers SET forename =REPLACE(forename, '÷', 'o'), surname = REPLACE(surname, '÷', 'o');
UPDATE drivers SET forename =REPLACE(forename, 'Ü', 's'), surname = REPLACE(surname, 'Ü', 's');
UPDATE drivers SET forename =REPLACE(forename, 'ß', 'a'), surname = REPLACE(surname, 'ß', 'a');
UPDATE drivers SET forename =REPLACE(forename, '╔', 'e'), surname = REPLACE(surname, '╔', 'e');
UPDATE drivers SET forename =REPLACE(forename, '¶', 'o'), surname = REPLACE(surname, '¶', 'o');
UPDATE drivers SET forename =REPLACE(forename, '¾', 'o'), surname = REPLACE(surname, '¾', 'o');
UPDATE drivers SET forename =REPLACE(forename, 'þ', 'c'), surname = REPLACE(surname, 'þ', 'c');
UPDATE drivers SET forename =REPLACE(forename, '┴', 'a'), surname = REPLACE(surname, '┴', 'a');
UPDATE drivers SET forename =REPLACE(forename, '±', 'n'), surname = REPLACE(surname, '±', 'n');
UPDATE drivers SET forename =REPLACE(forename, 'Þ', 'e'), surname = REPLACE(surname, 'Þ', 'e');
UPDATE drivers SET forename =REPLACE(forename, '°', 'o'), surname = REPLACE(surname, '°', 'o');
UPDATE drivers SET forename =REPLACE(forename, 'Ý', 'i'), surname = REPLACE(surname, 'Ý', 'i');
UPDATE drivers SET forename =REPLACE(forename, '·', 'u'), surname = REPLACE(surname, '·', 'u');
UPDATE drivers SET forename =REPLACE(forename, '³', 'u'), surname = REPLACE(surname, '³', 'u');
UPDATE drivers SET forename =REPLACE(forename, '├│', 'o'), surname = REPLACE(surname, '├│', 'o');
UPDATE drivers SET forename =REPLACE(forename, '├®', 'e'), surname = REPLACE(surname, '├®', 'e');
UPDATE drivers SET forename =REPLACE(forename, '├ñ', 'a'), surname = REPLACE(surname, '├ñ', 'a');
UPDATE drivers SET forename =REPLACE(forename, '├Â', 'o'), surname = REPLACE(surname, '├Â', 'o');
UPDATE drivers SET forename =REPLACE(forename, '├│', 'o'), surname = REPLACE(surname, '├│', 'o');
UPDATE drivers SET forename =REPLACE(forename, '├í', 'a'), surname = REPLACE(surname, '├í', 'a');
UPDATE drivers SET forename =REPLACE(forename, '┼í', 's'), surname = REPLACE(surname, '┼í', 's');
UPDATE drivers SET forename =REPLACE(forename, '├ë', 'e'), surname = REPLACE(surname, '├ë', 'e');
UPDATE drivers SET forename =REPLACE(forename, '├▒', 'n'), surname = REPLACE(surname, '├▒', 'n');
UPDATE drivers SET forename =REPLACE(forename, '├¿', 'e'), surname = REPLACE(surname, '├¿', 'e');
UPDATE drivers SET forename =REPLACE(forename, '├©', 'o'), surname = REPLACE(surname, '├©', 'o');
UPDATE drivers SET forename =REPLACE(forename, '├¡', 'i'), surname = REPLACE(surname, '├¡', 'i');
UPDATE drivers SET forename =REPLACE(forename, '├║', 'u'), surname = REPLACE(surname, '├║', 'u');
UPDATE drivers SET forename =REPLACE(forename, '├╝', 'u'), surname = REPLACE(surname, '├╝', 'u');
UPDATE drivers SET forename =REPLACE(forename, '├º', 'c'), surname = REPLACE(surname, '├º', 'c');

