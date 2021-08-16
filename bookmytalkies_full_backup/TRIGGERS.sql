--------------------------------------------------------
--  DDL for Trigger TRG_ADULT_BKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_ADULT_BKG" 
    BEFORE INSERT OR UPDATE
    ON CS669.BOOKING
    FOR EACH ROW
DECLARE
    V_CUS_AGE  NUMBER;
    V_ADULT_YN VARCHAR2(15);
BEGIN

    -- Get age of the customer making the booking
    SELECT CAST(MONTHS_BETWEEN(TRUNC(SYSDATE), (SELECT CUS_DOB
                                                FROM CS669.CUSTOMER C
                                                WHERE C.CUSTOMER_ID = :NEW.CUSTOMER_ID)) / 12 AS INTEGER)
    INTO V_CUS_AGE
    FROM DUAL;

    -- See if the movie being booked is marked as adult
    SELECT MOV_ADULT_YN
    INTO V_ADULT_YN
    FROM CS669.MOVIE M
             INNER JOIN SHOWTIME S on M.MOVIE_ID = S.MOVIE_ID
    WHERE S.SHOWTIME_ID = :NEW.SHOWTIME_ID;

    IF (UPPER(V_ADULT_YN) = 'Y' AND V_CUS_AGE < 18)
    THEN
        RAISE_APPLICATION_ERROR(-20001, 'You must be at least 18 years of age to book an R rated movie!');
    END IF;
END;
/
ALTER TRIGGER "CS669"."TRG_ADULT_BKG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CUST_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_CUST_HISTORY" 
    BEFORE UPDATE
    ON CS669.CUSTOMER
    FOR EACH ROW
BEGIN
    IF (:OLD.CUS_PHONE_NUM <> :NEW.CUS_PHONE_NUM) OR (:OLD.CUS_ZIPCODE <> :NEW.CUS_ZIPCODE) THEN
        -- PHONE NUMBER CHANGE
        INSERT INTO CS669.CUSTOMER_HISTORY (CUSTOMER_ID, CUS_OLD_PHONE, CUS_NEW_PHONE, CUS_OLD_ZIP, CUS_NEW_ZIP)
        VALUES (:NEW.CUSTOMER_ID, :OLD.CUS_PHONE_NUM, :NEW.CUS_PHONE_NUM, :OLD.CUS_ZIPCODE, :NEW.CUS_ZIPCODE);

    END IF;

END;
/
ALTER TRIGGER "CS669"."TRG_CUST_HISTORY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CUST_SIGNUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_CUST_SIGNUP" 
    BEFORE INSERT OR UPDATE
    ON CS669.CUSTOMER
    FOR EACH ROW
DECLARE
    V_CUS_AGE NUMBER;
BEGIN

    SELECT CAST(MONTHS_BETWEEN(TRUNC(SYSDATE), :NEW.CUS_DOB) / 12 AS INTEGER)
    INTO V_CUS_AGE
    FROM  DUAL;

    IF V_CUS_AGE < 13
    THEN
        RAISE_APPLICATION_ERROR(-20001, 'You must be at least 13 years of age to sign up!');
    END IF;
END;
/
ALTER TRIGGER "CS669"."TRG_CUST_SIGNUP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_ADULT_BKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_ADULT_BKG" 
    BEFORE INSERT OR UPDATE
    ON CS669.BOOKING
    FOR EACH ROW
DECLARE
    V_CUS_AGE  NUMBER;
    V_ADULT_YN VARCHAR2(15);
BEGIN

    -- Get age of the customer making the booking
    SELECT CAST(MONTHS_BETWEEN(TRUNC(SYSDATE), (SELECT CUS_DOB
                                                FROM CS669.CUSTOMER C
                                                WHERE C.CUSTOMER_ID = :NEW.CUSTOMER_ID)) / 12 AS INTEGER)
    INTO V_CUS_AGE
    FROM DUAL;

    -- See if the movie being booked is marked as adult
    SELECT MOV_ADULT_YN
    INTO V_ADULT_YN
    FROM CS669.MOVIE M
             INNER JOIN SHOWTIME S on M.MOVIE_ID = S.MOVIE_ID
    WHERE S.SHOWTIME_ID = :NEW.SHOWTIME_ID;

    IF (UPPER(V_ADULT_YN) = 'Y' AND V_CUS_AGE < 18)
    THEN
        RAISE_APPLICATION_ERROR(-20001, 'You must be at least 18 years of age to book an R rated movie!');
    END IF;
END;
/
ALTER TRIGGER "CS669"."TRG_ADULT_BKG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CUST_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_CUST_HISTORY" 
    BEFORE UPDATE
    ON CS669.CUSTOMER
    FOR EACH ROW
BEGIN
    IF (:OLD.CUS_PHONE_NUM <> :NEW.CUS_PHONE_NUM) OR (:OLD.CUS_ZIPCODE <> :NEW.CUS_ZIPCODE) THEN
        -- PHONE NUMBER CHANGE
        INSERT INTO CS669.CUSTOMER_HISTORY (CUSTOMER_ID, CUS_OLD_PHONE, CUS_NEW_PHONE, CUS_OLD_ZIP, CUS_NEW_ZIP)
        VALUES (:NEW.CUSTOMER_ID, :OLD.CUS_PHONE_NUM, :NEW.CUS_PHONE_NUM, :OLD.CUS_ZIPCODE, :NEW.CUS_ZIPCODE);

    END IF;

END;
/
ALTER TRIGGER "CS669"."TRG_CUST_HISTORY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_CUST_SIGNUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_CUST_SIGNUP" 
    BEFORE INSERT OR UPDATE
    ON CS669.CUSTOMER
    FOR EACH ROW
DECLARE
    V_CUS_AGE NUMBER;
BEGIN

    SELECT CAST(MONTHS_BETWEEN(TRUNC(SYSDATE), :NEW.CUS_DOB) / 12 AS INTEGER)
    INTO V_CUS_AGE
    FROM  DUAL;

    IF V_CUS_AGE < 13
    THEN
        RAISE_APPLICATION_ERROR(-20001, 'You must be at least 13 years of age to sign up!');
    END IF;
END;
/
ALTER TRIGGER "CS669"."TRG_CUST_SIGNUP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_MOVIE_ID
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CS669"."TRG_MOVIE_ID" BEFORE
	INSERT ON CS669.MOVIE
	FOR EACH ROW
BEGIN
	IF INSERTING THEN
		SELECT SEQ_MOVIE_ID.NEXTVAL
		INTO :NEW.MOVIE_ID
		FROM DUAL;

	END IF;
END;

/
ALTER TRIGGER "CS669"."TRG_MOVIE_ID" ENABLE;
