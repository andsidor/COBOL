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
              01  NUM1      PIC 9(3) VALUE 0.
       01  NUM1-TXT  PIC X(3) VALUE SPACES.
       01  NUM2      PIC 9(3) VALUE 0.
       01  NUM2-TXT  PIC X(3) VALUE SPACES.
       01  RESULT    PIC S9(6)V9(2) VALUE 0.
       01  RESULT-EDIT   PIC -ZZZ,ZZ9.99.
       01  OPERATOR     PIC X VALUE SPACES.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
       CALCULATOR-ROUTINE.
           DISPLAY "COBOL CALCULATOR" .
           DISPLAY "Enter First Number : ".
           ACCEPT NUM1-TXT.
           MOVE NUM1-TXT TO NUM1.
           DISPLAY "Enter Operator (+,-,*,/): " .
           ACCEPT OPERATOR  .
           DISPLAY "Enter Second Number: "  .
           ACCEPT NUM2-TXT  .
           MOVE NUM2-TXT TO NUM2  .
           IF OPERATOR = "+"
              ADD NUM1, NUM2 GIVING RESULT.
           IF OPERATOR = "-"
              SUBTRACT NUM2 FROM NUM1 GIVING RESULT.
           IF OPERATOR = "*"
              MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           IF OPERATOR = "/"
              DIVIDE NUM1 BY NUM2 GIVING RESULT.
           MOVE RESULT TO RESULT-EDIT.
           DISPLAY NUM1-TXT .
           DISPLAY OPERATOR, NUM2-TXT "="  RESULT-EDIT.

           STOP RUN.

      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
