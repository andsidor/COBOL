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
       SPECIAL-NAMES.
         CLASS PasssingScore IS "A" THRu "C","D".
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       01 AGE PIC 99 VALUE 0.
       01 Grade PIC 99 VALUE 0.
       01 Score PIC X(1) VALUE "B".
       01 CanVoteFlag PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPierwsza VALUE "1","3","5","7".
           88 IsNieParzysta VALUE "1","3","5","7".
           88 IsParzysta VALUE "2","4","6","8".
           88 MniejszaOd5 VALUE "1" THRU "4".
           88 Liczba VALUE "0" THRU "9".

      *-----------------------
       PROCEDURE DIVISION.

       DISPLAY "Podaj wiek : "  WITH NO ADVANCING
       ACCEPT AGE
       IF AGE >18 THEN
         DISPLAY "Mozesz glosowaæ"
       ELSE
           DISPLAY "Nie mozesz glosowac"
       END-IF

       *> > < =
       *> NOT EQUAL
       IF AGE LESS THAN 5
           DISPLAY "Zostan w domu"
       END-IF
       IF AGE> 5 AND AGE< 18 THEN
         COMPUTE Grade = AGE - 5
         DISPLAY"GO TO GRADE "GRADE
       END-IF
       IF AGE GREATER THAN OR EQUAL 18
           DISPLAY"GO TO COLLEGE"
       END-IF

       *>IF Score IS PASS
       DISPLAY "PODAJ POJEDYNCZA LICZBE OR X ABY WYJŒC"
       ACCEPT TestNumber
       PERFORM UNTIL NOT Liczba
           EVALUATE TRUE
               WHEN IsPIERWSZA DISPLAY "LICZBA PIERWSZA"
               WHEN IsNieParzysta DISPLAY "LICZBA NIEPARZYSTA"
               WHEN IsParzysta DISPLAY "LICZBA PARZYTA"
               WHEN MniejszaOd5 DISPLAY "mije 5"

               WHEN OTHER DISPLAY "default acction"

           END-EVALUATE
           ACCEPT TestNumber
       END-PERFORM




            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
