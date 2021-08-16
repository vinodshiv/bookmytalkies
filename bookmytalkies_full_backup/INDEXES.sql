--------------------------------------------------------
--  DDL for Index BOOKCUSIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."BOOKCUSIDIDX" ON "CS669"."BOOKING" ("CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKSHOWIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."BOOKSHOWIDIDX" ON "CS669"."BOOKING" ("SHOWTIME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CUSEMAILIDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."CUSEMAILIDX" ON "CS669"."CUSTOMER" ("CUS_EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index MOVTITLEIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."MOVTITLEIDX" ON "CS669"."MOVIE" ("MOV_MOVIE_TITLE") 
  ;
--------------------------------------------------------
--  DDL for Index SEATRESBOOKIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SEATRESBOOKIDIDX" ON "CS669"."SEAT_RESERVATION" ("BOOKING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEATRESSEATIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SEATRESSEATIDIDX" ON "CS669"."SEAT_RESERVATION" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEATTHTRIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SEATTHTRIDIDX" ON "CS669"."SEAT" ("THEATER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEAT_RESERVATION_UNIQUE_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SEAT_RESERVATION_UNIQUE_IDX" ON "CS669"."SEAT_RESERVATION" ("SHOWTIME_ID", "SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SHOWMOVIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SHOWMOVIDIDX" ON "CS669"."SHOWTIME" ("MOVIE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SHOWTHTRIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SHOWTHTRIDIDX" ON "CS669"."SHOWTIME" ("THEATER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029132
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029132" ON "CS669"."MOVIE" ("MOVIE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029137
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029137" ON "CS669"."CUSTOMER" ("CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029142
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029142" ON "CS669"."TAX_RATES" ("TAX_RATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029149
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029149" ON "CS669"."THEATER" ("THEATER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029154
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029154" ON "CS669"."SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029157
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029157" ON "CS669"."NORMAL_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029160
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029160" ON "CS669"."ACCESSIBLE_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029163
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029163" ON "CS669"."RECLINING_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029166
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029166" ON "CS669"."BOX_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029175
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029175" ON "CS669"."SHOWTIME" ("SHOWTIME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029182
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029182" ON "CS669"."BOOKING" ("BOOKING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029186
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029186" ON "CS669"."SEAT_RESERVATION" ("SEAT_RES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029281
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029281" ON "CS669"."PERSON" ("PERSON_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029287
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029287" ON "CS669"."POST" ("POST_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029292
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029292" ON "CS669"."LIKES" ("LIKE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029462
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029462" ON "CS669"."CURRENCY" ("CURRENCY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029466
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029466" ON "CS669"."STORE_LOCATION" ("STORE_LOCATION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029470
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029470" ON "CS669"."PRODUCT" ("PRODUCT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029474
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029474" ON "CS669"."SELLS" ("SELLS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029477
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029477" ON "CS669"."SHIPPING_OFFERING" ("SHIPPING_OFFERING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029481
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029481" ON "CS669"."OFFERS" ("OFFERS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029485
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029485" ON "CS669"."ALTERNATE_NAME" ("ALTERNATE_NAME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index THTRNAMEIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."THTRNAMEIDX" ON "CS669"."THEATER" ("THEATER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index THTRTAXRATEIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."THTRTAXRATEIDIDX" ON "CS669"."THEATER" ("TAX_RATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index THTRZIPIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."THTRZIPIDX" ON "CS669"."THEATER" ("THTR_ZIPCODE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029160
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029160" ON "CS669"."ACCESSIBLE_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029182
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029182" ON "CS669"."BOOKING" ("BOOKING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKSHOWIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."BOOKSHOWIDIDX" ON "CS669"."BOOKING" ("SHOWTIME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKCUSIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."BOOKCUSIDIDX" ON "CS669"."BOOKING" ("CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029166
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029166" ON "CS669"."BOX_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029137
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029137" ON "CS669"."CUSTOMER" ("CUSTOMER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CUSEMAILIDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."CUSEMAILIDX" ON "CS669"."CUSTOMER" ("CUS_EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029132
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029132" ON "CS669"."MOVIE" ("MOVIE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MOVTITLEIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."MOVTITLEIDX" ON "CS669"."MOVIE" ("MOV_MOVIE_TITLE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029157
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029157" ON "CS669"."NORMAL_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029163
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029163" ON "CS669"."RECLINING_SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029154
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029154" ON "CS669"."SEAT" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEATTHTRIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SEATTHTRIDIDX" ON "CS669"."SEAT" ("THEATER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029186
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029186" ON "CS669"."SEAT_RESERVATION" ("SEAT_RES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEATRESSEATIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SEATRESSEATIDIDX" ON "CS669"."SEAT_RESERVATION" ("SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEATRESBOOKIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SEATRESBOOKIDIDX" ON "CS669"."SEAT_RESERVATION" ("BOOKING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEAT_RESERVATION_UNIQUE_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SEAT_RESERVATION_UNIQUE_IDX" ON "CS669"."SEAT_RESERVATION" ("SHOWTIME_ID", "SEAT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029477
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029477" ON "CS669"."SHIPPING_OFFERING" ("SHIPPING_OFFERING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029175
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029175" ON "CS669"."SHOWTIME" ("SHOWTIME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SHOWTHTRIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SHOWTHTRIDIDX" ON "CS669"."SHOWTIME" ("THEATER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SHOWMOVIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."SHOWMOVIDIDX" ON "CS669"."SHOWTIME" ("MOVIE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029142
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029142" ON "CS669"."TAX_RATES" ("TAX_RATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0029149
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS669"."SYS_C0029149" ON "CS669"."THEATER" ("THEATER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index THTRTAXRATEIDIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."THTRTAXRATEIDIDX" ON "CS669"."THEATER" ("TAX_RATE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index THTRNAMEIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."THTRNAMEIDX" ON "CS669"."THEATER" ("THEATER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index THTRZIPIDX
--------------------------------------------------------

  CREATE INDEX "CS669"."THTRZIPIDX" ON "CS669"."THEATER" ("THTR_ZIPCODE") 
  ;
