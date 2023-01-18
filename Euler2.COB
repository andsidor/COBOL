      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. Euler2.
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

       01 LOOPEND PIC 9(7) VALUE 40.
       01 LOOPSUM PIC 9(7) VALUE 0.
       01 FibN1roW PIC 9(7) VALUE 1.
       01 FibN0roW PIC 9(7) VALUE 0.
       01 FibTEMP PIC 9(7) VALUE 0.
       01 FibCounter PIC 9(7) VALUE 0.
       01 FibWydziel PIC 9(7).
       01 FibReszta PIC 9(7).

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
       A-PARA.
       PERFORM B-PARA UNTIL LOOPSUM>LOOPEND.
         DISPLAY "SUM EVEN-VALUE FIB TERMS <4M FOR IS =  " FibCounter.
         STOP RUN.

       B-PARA.

       COMPUTE FibTEMP = FibN0roW +FibN1roW
       MOVE FibN1roW to FibN0roW
       MOVE FibTEMP to FibN0roW

       DIVIDE FibN0roW BY 2 GIVING FibWydziel REMAINDER FibReszta


      *DISPLAY LICZNIK.
      *DISPLAY RESZTA.
      *DISPLAY RESZTA1.

       IF FibReszta IS ZERO
           ADD LICZNIK TO LOOPSUM
           DISPLAY FibCounter
       END-IF.

       ADD 1 TO LOOPSUM.
       END PROGRAM Euler2.
