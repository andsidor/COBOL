       identification division.

       program-id. FirstProgram.

       ENVIRONMENT DIVISION.

       configuration section.

       data division.
       working-storage section.
       01 XX PIC 9(2).
       01 YY PIC 99.
       01 ZZ PIC 99.
       linkage section.

       procedure division.

           set XX to 10.
           set YY to 25.
           add XX YY GIVING ZZ
           display "X"XX
           display "Y"YY
           DISPLAY "X + Y = "ZZ


           goback.

       end program FirstProgram.
