      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. base1.
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
       01 UserName PIC X(30) VALUE "Ty".
       01 Liczba1 PIC 9 value ZEROES.
       01 Liczba2 PIC 9 value ZEROES.
       01 Suma PIC 99 value ZEROES.
       01 SSNum.
           02 SSArea PIC 999.
           02 SSgroup PIC 99.
           02 SSerial PIC 9999.

       01 PiValue CONSTANT AS 3.14.

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

       DISPLAY "Podaj nazwe urzytkownika " WITH NO ADVANCING,
       ACCEPT USERNAME
       DISPLAY "WITAJ " USERNAME





      ** The main procedure of the program
        MOVE ZERO TO USERNAME
        DISPLAY USERNAME


       STOP RUN.
      ** add other procedures here
       END PROGRAM base1.
