      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
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
       01 Num1    PIC 9 VALUE 5.
       01 Num2    PIC 9 VALUE 4.
       01 Sum1     PIC 99.
      *-----------------------
       PROCEDURE DIVISION  .
       CALL 'tut_subprogram_for_main' USING Num1, Num2, Sum1
       DISPLAY Num1 " + " Num2 " = " Sum1
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-

      **
      * The main procedure of the program
      **
            DISPLAY "Hello world"
            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
