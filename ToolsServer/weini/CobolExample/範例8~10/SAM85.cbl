      ** 程式範例八-5 (SAM8-5.CBL):計算三個數字相乘並顯示
      ** PERFORM...VARYING...AFTER...AFTER

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample8-5.

       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
     **--------------------------------------
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       01  WORKING-AREA.
           05 I  PIC 99.
           05 J  PIC 99.
           05 K  PIC 99.
       77  L-COUNT  PIC 99  VALUE 6.
     **--------------------------------------
       PROCEDURE        DIVISION.
       000-MAIN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "I     J     K" LINE 5 POSITION 10.
           PERFORM 100-ADD VARYING I FROM 1 BY 1 UNTIL I > 3
                           AFTER   J FROM 2 BY 2 UNTIL J > 6
                           AFTER   K FROM 5 BY 5 UNTIL K > 10.
           STOP RUN.
       100-ADD.
           ADD 1 TO L-COUNT.
           DISPLAY I LINE L-COUNT POSITION 10.
           DISPLAY J LINE L-COUNT POSITION 16.
           DISPLAY K LINE L-COUNT POSITION 22.



      *************************************
      **                                 **
      **   執行結果 :   I     J     K    **
      **                                 **
      **                01    02    05   **
      **                01    02    10   **
      **                01    04    05   **
      **                01    04    10   **
      **                01    06    05   **
      **                01    06    10   **
      **                02    02    05   **
      **                02    02    10   **
      **                02    04    05   **
      **                02    04    10   **
      **                02    06    05   **
      **                02    06    10   **
      **                 .     .     .   **
      **                                 **
      *************************************

