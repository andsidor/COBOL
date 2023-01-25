      ******************************************************************
      * Author:SIDOR Andrzej
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. Euler1.
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
       01  LICZNIK PIC 9(4) VALUE 0.
       01  TOTAL PIC 9(7) VALUE 0.
       01  MAX PIC 9(5) VALUE 1000.
       01  WYDZIEL PIC 9(3).
       01  WYDZIEL1 PIC 9(3).
       01  RESZTA1 PIC 9(3).
       01  RESZTA PIC 9 VALUE 0.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
       A-PARA.
       PERFORM B-PARA MAX TIMES.
         DISPLAY "suma finalna = "TOTAL
         STOP RUN.
       B-PARA.
      *DISPLAY LICZNIK.

       DIVIDE LICZNIK BY 3 GIVING WYDZIEL REMAINDER RESZTA
       DIVIDE LICZNIK BY 5 GIVING WYDZIEL1 REMAINDER RESZTA1
      *DISPLAY LICZNIK.
      *DISPLAY RESZTA.
      *DISPLAY RESZTA1.

       IF RESZTA IS ZERO OR RESZTA1 IS ZERO
           ADD LICZNIK TO TOTAL
      *    DISPLAY TOTAL
       END-IF.

       ADD 1 TO LICZNIK.
       END PROGRAM Euler1.
