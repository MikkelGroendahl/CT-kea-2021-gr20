-- Difference statements to eg. alter/Rename table name and drop/add/modify tables and columss to CT_Quiz_DB 

USE CT_Quiz_DB

-- Rename table name
ALTER TABLE 'Table_name' RENAME 'New_Table_Name';

-- If need to rename multiple tables names
RENAME TABLE 'Table_Name_1' TO 'New_Table_Name_1',
RENAME TABLE 'Table_Name_2' TO 'New_Table_Name_2',
RENAME TABLE 'Table_Name_3'	TO 'New_Table_Name_3';

-- Need to add Column to table
ALTER TABLE table_name
ADD column_name datatype;

-- Drop an object eg. database,table, index or view
-- The drop statement is used to delete the datebase or tabels

-- For dropping a table
DROP TABLE table_name;
 
-- For dropping a Database
DROP DATABASE database_name;

-- If only need to delete data in a table 
TRUNCATE TABLE table_name;