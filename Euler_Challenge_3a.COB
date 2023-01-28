      ******************************************************************
      * Author:SIDOR Andrzej
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. Euler3.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       01  MAXLICZBA            PIC 9(12) VALUE 600851475143.
       01  PRIME_N              PIC 9(12) VALUE 2.
       01  WYNIK_DIV            PIC 9(12) VALUE 2.
       01  MAX_PRIME_N          PIC 9(12) VALUE 2.

       01  RESZTA               PIC 9(12) VALUE 0.
      *-----------------------
       PROCEDURE DIVISION.


              MAIN-PARA.
              PERFORM MAIN-LOOP UNTIL MAXLICZBA = 1.
              DISPLAY PRIME_N.

              STOP RUN.

              MAIN-LOOP.

              DIVIDE MAXLICZBA BY PRIME_N
              GIVING WYNIK_DIV REMAINDER RESZTA
                    IF RESZTA > 0 THEN
                     ADD 1 TO PRIME_N
                    ELSE
                    SET MAXLICZBA TO WYNIK_DIV
                   END-IF.

                 ADD 1 TO MAX_PRIME_N.
