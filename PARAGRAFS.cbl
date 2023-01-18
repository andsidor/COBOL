      ******************************************************************
      * Author:
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
       01  LICZNIK PIC 9(4) VALUE 1.
       01  TOTAL PIC 9(4) VALUE 10.
       01  SUMA1 PIC 9(5) VALUE 0.
       01  SUMA2 PIC 9(5) VALUE 0.
       01  WYDZIEL PIC 9(3).
       01  WYDZIEL1 PIC 9(3).
       01 RESZTA1 PIC 9(3).
       01  RESZTA PIC 9 VALUE 0.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
       A-PARA.
       PERFORM B-PARA TOTAL TIMES.
         STOP RUN.
       B-PARA.
      * DISPLAY LICZNIK.

       DIVIDE LICZNIK BY 3 GIVING WYDZIEL REMAINDER RESZTA
       DIVIDE LICZNIK BY 5 GIVING WYDZIEL1 REMAINDER RESZTA1
       DISPLAY LICZNIK.
      * DISPLAY RESZTA.

       IF RESZTA = 0 THEN ADD LICZNIK TO SUMA1
      **  DISPLAY "DWWD"SUMA
          DISPLAY "1S"SUMA1
          DISPLAY"______"
       END-IF.
       IF RESZTA1 = 0 THEN ADD LICZNIK TO SUMA2
      **  DISPLAY "DWWD"SUMA
      *    DISPLAY "2S"SUMA2

       END-IF.
       COMPUTE TOTAL= SUMA1 + SUMA2
       DISPLAY "total = "TOTAL
       DISPLAY"___"


       ADD 1 TO LICZNIK.
       END PROGRAM Euler1.
