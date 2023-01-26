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
           DISPLAY "COBOL CALCULATOR".
           PERFORM ACCEPT-NUM1.
           PERFORM ACCEPT-OPERATOR THRU ACCEPT-OPERATOR-EXIT.
           PERFORM ACCEPT-NUM2.
           IF OPERATOR = "+"
              ADD NUM1, NUM2 GIVING RESULT.
           IF OPERATOR = "-"
              SUBTRACT NUM2 FROM NUM1 GIVING RESULT.
           IF OPERATOR = "*"
              MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           IF OPERATOR = "/"
              DIVIDE NUM1 BY NUM2 GIVING RESULT.
           MOVE RESULT TO RESULT-EDIT.
           DISPLAY NUM1-TXT,OPERATOR,NUM2-TXT "=" RESULT-EDIT .

           STOP RUN.
       ACCEPT-NUM1.
           DISPLAY "Enter First Number : "  .
           ACCEPT NUM1-TXT  .
           IF NUM1-TXT (1:1) NUMERIC OR
              NUM1-TXT (2:1) NUMERIC OR
              NUM1-TXT (3:1) NUMERIC
              MOVE NUM1-TXT TO NUM1
              DISPLAY NUM1-TXT
           ELSE
              GO TO ACCEPT-NUM1.
       ACCEPT-OPERATOR.
           DISPLAY "Enter Operator (+,-,*,/): "  .
           ACCEPT OPERATOR  .
           IF OPERATOR NOT EQUAL "+" AND
              OPERATOR NOT EQUAL "-" AND
              OPERATOR NOT EQUAL "*" AND
              OPERATOR NOT EQUAL "/"
              GO TO ACCEPT-OPERATOR.
       ACCEPT-OPERATOR-EXIT.
           EXIT.
       ACCEPT-NUM2.
           DISPLAY "Enter Second Number: "  .
           ACCEPT NUM2-TXT .
           IF NUM1-TXT (1:1) NUMERIC OR
              NUM2-TXT (2:1) NUMERIC OR
              NUM2-TXT (3:1) NUMERIC
              MOVE NUM2-TXT TO NUM2
              DISPLAY NUM2-TXT
           ELSE
              GO TO ACCEPT-NUM2.

           STOP RUN.

      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
