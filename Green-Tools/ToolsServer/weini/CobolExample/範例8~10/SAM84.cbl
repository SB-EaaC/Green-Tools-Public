      ** 程式範例八-4 (SAM8-4.CBL):計算二個數字相乘並顯示
      ** PERFORM...VARYING...AFTER (對照二層 PERFORM...UNTIL)

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample8-4.

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
       77  L-COUNT  PIC 99  VALUE 11.
     **--------------------------------------
       PROCEDURE        DIVISION.
       000-MAIN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "I     J" LINE 10 POSITION 10.
           PERFORM 100-ADD VARYING I FROM 1 BY 1 UNTIL I > 3
                           AFTER   J FROM 2 BY 2 UNTIL J > 6.
           STOP RUN.
       100-ADD.
           ADD 1 TO L-COUNT.
           DISPLAY I LINE L-COUNT POSITION 10.
           DISPLAY J LINE L-COUNT POSITION 16.



      *******************************
      **                           **
      **   執行結果 :   I     J    **
      **                           **
      **                01    02   **
      **                01    04   **
      **                01    06   **
      **                02    02   **
      **                02    04   **
      **                02    06   **
      **                03    02   **
      **                03    04   **
      **                03    06   **
      **                           **
      *******************************

