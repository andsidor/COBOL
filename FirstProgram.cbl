       identification division.

       program-id. FirstProgram.

       ENVIRONMENT DIVISION.

       configuration section.
           77 X pic 99.
           77 Y pic 99.
           77 Z pic 99.
       data division.
       working-storage section.
         
       linkage section.

       procedure division.
           display "message2dfdfgdfg".
           set X to 10.
           set y to 25.
           add X Y GIVING Z
           display "X"X
           display "Y"Y
           DISPLAY "X + Y = "Z


           goback.

       end program FirstProgram.
