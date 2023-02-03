      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Cena PIC 9(4)V99.
       01 Podatek PIC V999 VALUE .075.
       01 FullPrice PIC 9(4)V99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       DISPLAY "Enter the Price : " WITH NO ADVANCING
       ACCEPT Cena
       COMPUTE FullPrice ROUNDED = Cena + (Cena * Podatek)
       DISPLAY "Cena + Podatek : " FullPrice..
       END PROGRAM YOUR-PROGRAM-NAME.
