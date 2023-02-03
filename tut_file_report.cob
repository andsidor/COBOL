      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CustomerFile ASSIGN TO "Plik_dane.dat"
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.

       DATA DIVISION.
       *> File section describes data in files
        FILE SECTION.
        *> FD (File Description) describes the file layout
        FD CustomerFile.
         *> Design the customer record
         01 CustomerData.
           02 IDNum    PIC 9(5).
           02 CustName.
               03 FirstName    PIC X(15).
               03 LastName     PIC X(15).


       WORKING-STORAGE SECTION.
        01 WSCustomer.
           02 WSIDNum    PIC 9(5).
           02 WSCustName.
               03 WSFirstName    PIC X(15).
               03 WSLastName     PIC X(15).
           01 WSEOF   PIC A(1).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       OPEN INPUT CustomerFile.
           PERFORM UNTIL WSEOF='Y'
                READ CustomerFile INTO WSCustomer
                   AT END MOVE 'Y' TO WSEOF
                   NOT AT END DISPLAY WSCustomer
                END-READ
           END-PERFORM.
       CLOSE CustomerFile.


        CLOSE CustomerFile.
        STOP RUN.



       END PROGRAM YOUR-PROGRAM-NAME.
