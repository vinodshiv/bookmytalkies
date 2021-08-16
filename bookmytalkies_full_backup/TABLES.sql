--------------------------------------------------------
--  DDL for Table ACCESSIBLE_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."ACCESSIBLE_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table BOOKING
--------------------------------------------------------

  CREATE TABLE "CS669"."BOOKING" 
   (	"BOOKING_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"BKG_BOOKING_TIME" TIMESTAMP (6), 
	"BKG_NET_AMOUNT" NUMBER(12,2), 
	"BKG_TAXES" NUMBER(12,2), 
	"CUSTOMER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SHOWTIME_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"BKG_STATUS" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table BOX_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."BOX_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CS669"."CUSTOMER" 
   (	"CUSTOMER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_FIRST_NAME" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_LAST_NAME" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_PHONE_NUM" NUMBER, 
	"CUS_EMAIL" VARCHAR2(500 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_ZIPCODE" NUMBER, 
	"CUS_DOB" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER_HISTORY
--------------------------------------------------------

  CREATE TABLE "CS669"."CUSTOMER_HISTORY" 
   (	"CUSTOMER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_OLD_PHONE" NUMBER, 
	"CUS_NEW_PHONE" NUMBER, 
	"CUS_OLD_ZIP" NUMBER, 
	"CUS_NEW_ZIP" NUMBER, 
	"UPDATE_TS" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table MOVIE
--------------------------------------------------------

  CREATE TABLE "CS669"."MOVIE" 
   (	"MOVIE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"MOV_MOVIE_TITLE" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"MOV_RELEASE_DATE" DATE, 
	"MOV_RUNTIME" NUMBER, 
	"MOV_STATUS" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"MOV_ADULT_YN" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table NORMAL_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."NORMAL_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table RECLINING_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."RECLINING_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SEAT_ROW" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SEAT_NUMBER" NUMBER, 
	"THEATER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SEAT_RESERVATION
--------------------------------------------------------

  CREATE TABLE "CS669"."SEAT_RESERVATION" 
   (	"SEAT_RES_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"BOOKING_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SHOWTIME_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SHIPPING_OFFERING
--------------------------------------------------------

  CREATE TABLE "CS669"."SHIPPING_OFFERING" 
   (	"SHIPPING_OFFERING_ID" NUMBER(12,0), 
	"OFFERING" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SHOWTIME
--------------------------------------------------------

  CREATE TABLE "CS669"."SHOWTIME" 
   (	"SHOWTIME_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SHW_START_DATE" DATE, 
	"SHW_END_DATE" DATE, 
	"SHW_START_TIME" TIMESTAMP (6), 
	"SHW_END_TIME" TIMESTAMP (6), 
	"SHW_LANGUAGE" VARCHAR2(30 BYTE) COLLATE "USING_NLS_COMP", 
	"SHW_PRICE" NUMBER(4,2), 
	"THEATER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"MOVIE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table TAX_RATES
--------------------------------------------------------

  CREATE TABLE "CS669"."TAX_RATES" 
   (	"TAX_RATE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"STATE_CODE" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"STATE_NAME" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"TAX_RATE" NUMBER(4,2)
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table THEATER
--------------------------------------------------------

  CREATE TABLE "CS669"."THEATER" 
   (	"THEATER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"THEATER_NAME" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_STREET" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_CITY" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_STATE" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_ZIPCODE" NUMBER, 
	"TAX_RATE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SEAT_ROW" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SEAT_NUMBER" NUMBER, 
	"THEATER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CS669"."CUSTOMER" 
   (	"CUSTOMER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_FIRST_NAME" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_LAST_NAME" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_PHONE_NUM" NUMBER, 
	"CUS_EMAIL" VARCHAR2(500 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_ZIPCODE" NUMBER, 
	"CUS_DOB" DATE
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SHOWTIME
--------------------------------------------------------

  CREATE TABLE "CS669"."SHOWTIME" 
   (	"SHOWTIME_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SHW_START_DATE" DATE, 
	"SHW_END_DATE" DATE, 
	"SHW_START_TIME" TIMESTAMP (6), 
	"SHW_END_TIME" TIMESTAMP (6), 
	"SHW_LANGUAGE" VARCHAR2(30 BYTE) COLLATE "USING_NLS_COMP", 
	"SHW_PRICE" NUMBER(4,2), 
	"THEATER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"MOVIE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table THEATER
--------------------------------------------------------

  CREATE TABLE "CS669"."THEATER" 
   (	"THEATER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"THEATER_NAME" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_STREET" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_CITY" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_STATE" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"THTR_ZIPCODE" NUMBER, 
	"TAX_RATE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table BOOKING
--------------------------------------------------------

  CREATE TABLE "CS669"."BOOKING" 
   (	"BOOKING_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"BKG_BOOKING_TIME" TIMESTAMP (6), 
	"BKG_NET_AMOUNT" NUMBER(12,2), 
	"BKG_TAXES" NUMBER(12,2), 
	"CUSTOMER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SHOWTIME_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"BKG_STATUS" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table MOVIE
--------------------------------------------------------

  CREATE TABLE "CS669"."MOVIE" 
   (	"MOVIE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"MOV_MOVIE_TITLE" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"MOV_RELEASE_DATE" DATE, 
	"MOV_RUNTIME" NUMBER, 
	"MOV_STATUS" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"MOV_ADULT_YN" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table TAX_RATES
--------------------------------------------------------

  CREATE TABLE "CS669"."TAX_RATES" 
   (	"TAX_RATE_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"STATE_CODE" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"STATE_NAME" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP", 
	"TAX_RATE" NUMBER(4,2)
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table ACCESSIBLE_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."ACCESSIBLE_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table BOX_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."BOX_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table NORMAL_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."NORMAL_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table RECLINING_SEAT
--------------------------------------------------------

  CREATE TABLE "CS669"."RECLINING_SEAT" 
   (	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SEAT_RESERVATION
--------------------------------------------------------

  CREATE TABLE "CS669"."SEAT_RESERVATION" 
   (	"SEAT_RES_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"BOOKING_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SEAT_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"SHOWTIME_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table SHIPPING_OFFERING
--------------------------------------------------------

  CREATE TABLE "CS669"."SHIPPING_OFFERING" 
   (	"SHIPPING_OFFERING_ID" NUMBER(12,0), 
	"OFFERING" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER_HISTORY
--------------------------------------------------------

  CREATE TABLE "CS669"."CUSTOMER_HISTORY" 
   (	"CUSTOMER_ID" VARCHAR2(15 BYTE) COLLATE "USING_NLS_COMP", 
	"CUS_OLD_PHONE" NUMBER, 
	"CUS_NEW_PHONE" NUMBER, 
	"CUS_OLD_ZIP" NUMBER, 
	"CUS_NEW_ZIP" NUMBER, 
	"UPDATE_TS" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP
   )  DEFAULT COLLATION "USING_NLS_COMP" ;
