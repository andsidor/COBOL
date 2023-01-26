      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics:
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
       01 A PIC 99(9).
          01 I PIC 99(9).
          01 X PIC Z(9)9.

       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
        DISPLAY "This is an example using increment.".
           DISPLAY "-----------------------------------".
          DISPLAY "Please enter a value:".
          ACCEPT A.
          MOVE 0 TO I.
           PERFORM UNTIL I GREATER THAN A

              COMPUTE X = I + 1
              DISPLAY X
              ADD 1 TO I
          END-PERFORM.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
