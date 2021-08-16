--------------------------------------------------------
--  Ref Constraints for Table ACCESSIBLE_SEAT
--------------------------------------------------------

  ALTER TABLE "CS669"."ACCESSIBLE_SEAT" ADD FOREIGN KEY ("SEAT_ID")
	  REFERENCES "CS669"."SEAT" ("SEAT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOKING
--------------------------------------------------------

  ALTER TABLE "CS669"."BOOKING" ADD FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "CS669"."CUSTOMER" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "CS669"."BOOKING" ADD FOREIGN KEY ("SHOWTIME_ID")
	  REFERENCES "CS669"."SHOWTIME" ("SHOWTIME_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOX_SEAT
--------------------------------------------------------

  ALTER TABLE "CS669"."BOX_SEAT" ADD FOREIGN KEY ("SEAT_ID")
	  REFERENCES "CS669"."SEAT" ("SEAT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER_HISTORY
--------------------------------------------------------

  ALTER TABLE "CS669"."CUSTOMER_HISTORY" ADD FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "CS669"."CUSTOMER" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NORMAL_SEAT
--------------------------------------------------------

  ALTER TABLE "CS669"."NORMAL_SEAT" ADD FOREIGN KEY ("SEAT_ID")
	  REFERENCES "CS669"."SEAT" ("SEAT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECLINING_SEAT
--------------------------------------------------------

  ALTER TABLE "CS669"."RECLINING_SEAT" ADD FOREIGN KEY ("SEAT_ID")
	  REFERENCES "CS669"."SEAT" ("SEAT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEAT
--------------------------------------------------------

  ALTER TABLE "CS669"."SEAT" ADD FOREIGN KEY ("THEATER_ID")
	  REFERENCES "CS669"."THEATER" ("THEATER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEAT_RESERVATION
--------------------------------------------------------

  ALTER TABLE "CS669"."SEAT_RESERVATION" ADD FOREIGN KEY ("SHOWTIME_ID")
	  REFERENCES "CS669"."SHOWTIME" ("SHOWTIME_ID") ENABLE;
  ALTER TABLE "CS669"."SEAT_RESERVATION" ADD FOREIGN KEY ("BOOKING_ID")
	  REFERENCES "CS669"."BOOKING" ("BOOKING_ID") ENABLE;
  ALTER TABLE "CS669"."SEAT_RESERVATION" ADD FOREIGN KEY ("SEAT_ID")
	  REFERENCES "CS669"."SEAT" ("SEAT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SHOWTIME
--------------------------------------------------------

  ALTER TABLE "CS669"."SHOWTIME" ADD FOREIGN KEY ("THEATER_ID")
	  REFERENCES "CS669"."THEATER" ("THEATER_ID") ENABLE;
  ALTER TABLE "CS669"."SHOWTIME" ADD FOREIGN KEY ("MOVIE_ID")
	  REFERENCES "CS669"."MOVIE" ("MOVIE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table THEATER
--------------------------------------------------------

  ALTER TABLE "CS669"."THEATER" ADD FOREIGN KEY ("TAX_RATE_ID")
	  REFERENCES "CS669"."TAX_RATES" ("TAX_RATE_ID") ENABLE;
