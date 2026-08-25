-- Create table to load data into
CREATE TABLE STUDENT_LOAD (
    STUDENT_ID INT,
    NAME VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    YEAR INT,
    MARKS INT
);

-- Set context
USE DATABASE COLLEGE_DB;
USE SCHEMA COLLEGE_SCHEMA;
USE WAREHOUSE COLLEGE_WH;

-- Upload local CSV file to the stage
PUT 'file:///C:/Users/CICT/Documents/student.csv' @STUDENT_STAGE AUTO_COMPRESS=FALSE;

-- Ensure stage exists
CREATE STAGE IF NOT EXISTS STUDENT_STAGE;

-- Load data from stage into table
COPY INTO STUDENT_LOAD
    FROM @STUDENT_STAGE
    FILE_FORMAT = (
        TYPE = CSV
        SKIP_HEADER = 1
        FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    );

-- Verify data loaded successfully
SELECT * FROM STUDENT_LOAD;