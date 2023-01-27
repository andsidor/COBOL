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
       FILE-CONTROL.
           SELECT STUDENT ASSIGN TO OUT1
           ORGANIZATION IS SEQUENTIAL.
      *     ACCESS IS SEQUENTIAL.
      *     FILE STATUS IS FS.
      *-----------------------
       DATA DIVISION.

      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
           FD STUDENT.
           01 STUDENT-FILE.
               02 STUDENT-ID PIC 9(5).
               02 NAME PIC A(25).
               02 LESSON PIC X(3).
      *-----------------------
       WORKING-STORAGE SECTION.
              01 WS-STUDENT.
               02 WS-STUDENT-ID PIC 9(5).
               02 WS-NAME PIC A(25).
               02 WS-CLASS PIC X(3).
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.


       OPEN I-O  STUDENT.
      * STUDENT FD
           MOVE '100' TO WS-STUDENT-ID.
           MOVE 'REVATHY' TO NAME.


           WRITE STUDENT-FILE
           END-WRITE.



           CLOSE  STUDENT.
            DISPLAY "Hello world....."
            STOP RUN.
      ** add other procedures here - ONGOING TO BE FINISH
       END PROGRAM YOUR-PROGRAM-NAME.
