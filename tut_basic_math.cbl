      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. basic_math.
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
       01 Liczba1 PIC 99 value ZEROES.
       01 Liczba2 PIC 99 value ZEROES.
       01 Suma PIC 9999 value ZEROES.
       01 SSNum.
           02 SSArea PIC 999.
           02 SSgroup PIC 99.
           02 SSerial PIC 9999.

       01 PiValue CONSTANT AS 3.14.

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

      ** DISPLAY "Podaj nazwe urzytkownika " WITH NO ADVANCING,
     *** ACCEPT USERNAME
     **  DISPLAY "WITAJ " USERNAME

       ** The main procedure of the program
        MOVE ZERO TO USERNAME
        DISPLAY USERNAME
        DISPLAY"PODAJ 2 LICZBY DO SUMY"
        ACCEPT Liczba1.
        ACCEPT Liczba2.
        COMPUTE Suma = Liczba1 + Liczba2.
        DISPLAY Liczba1 " + " Liczba2 " = " Suma

       STOP RUN.
      ** add other procedures here
       END PROGRAM basic_math.
