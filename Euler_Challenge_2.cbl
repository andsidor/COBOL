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

       01 LOOPEND PIC 9(7) VALUE 4000000.
       01 LOOPSUM PIC 9(7) VALUE 0.
       01 FibN1roW PIC 9(7) VALUE 1.
       01 FibN0roW PIC 9(7) VALUE 0.
       01 FibTEMP PIC 9(7) VALUE 0.
       01 FibCounter PIC 9(7) VALUE 0.
       01 FibWydziel PIC 9(7).
       01 FibReszta PIC 9(1).

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
       A-PARA.
       PERFORM B-PARA UNTIL LOOPSUM>LOOPEND.
      * PERFORM B-PARA 20 TIMES.

       DISPLAY "SUM EVEN-VALUE FIB TERMS <4M FOR IS =  " FibCounter.
       DISPLAY "SUM  =  " LOOPSUM.
       STOP RUN.

       B-PARA.

      * DISPLAY "test TEMP"FibTEMP

       ADD FibN1roW TO FibTEMP
       MOVE FibN0roW to FibN1roW
       MOVE FibTEMP to FibN0roW

       DIVIDE FibTEMP BY 2 GIVING FibWydziel REMAINDER FibReszta

      * DISPLAY "test RESZTA "FibReszta
      * DISPLAY "test COUNTER "FibCounter
      * DISPLAY "       "
       IF FibReszta IS ZERO
           ADD FibTEMP TO LOOPSUM
      *     DISPLAY "testsum"LOOPSUM
       END-IF.

       ADD 1 TO FibCounter.
       END PROGRAM Euler2.
