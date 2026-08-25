-- Scenario: STUDENT_ID = 303 (Charan) was accidentally deleted from TIME_TRAVEL_STUDENTS

-- Recover the deleted record using Time Travel and re-insert it
INSERT INTO TIME_TRAVEL_STUDENTS
    SELECT *
    FROM TIME_TRAVEL_STUDENTS
    AT(TIMESTAMP => $BEFORE_CHANGE)
    WHERE STUDENT_ID = 303;

-- Verify the record has been recovered
SELECT * FROM TIME_TRAVEL_STUDENTS
    ORDER BY STUDENT_ID;