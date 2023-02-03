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
       01 SampStr     PIC X(18) VALUE 'eerie beef sneezed'.
       01 NumChars    PIC 99 VALUE 0.
       01 NumEs       PIC 99 VALUE 0.
       01 FName       PIC X(6) VALUE 'Martin'.
       01 MName       PIC X(11) VALUE 'Luther King'.
       01 LName       PIC X(4) VALUE 'King'.
       01 FLName      PIC X(11).
       01 FMLName     PIC X(18).
       01 SStr1       PIC X(7) VALUE "The egg".
       01 SStr2       PIC X(9) VALUE "is #1 and".
       01 Dest        PIC X(33) VALUE "is the big chicken".
       01 Ptr         PIC 9 VALUE 1.
       01 SStr3       PIC X(3).
       01 SStr4       PIC X(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
