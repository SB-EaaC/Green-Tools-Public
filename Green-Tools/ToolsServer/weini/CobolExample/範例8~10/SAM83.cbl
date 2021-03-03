      ** 程式範例八-3 (SAM8-3.CBL):計算二個數字相乘並顯示
      ** 二層 PERFORM...UNTIL

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample8-3.

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
           MOVE 1 TO I.
           PERFORM 100-ADD-I UNTIL I > 3.
           STOP RUN.
       100-ADD-I.
           MOVE 2 TO J.
           PERFORM 150-ADD-J UNTIL J > 6.
           ADD 1 TO I.
       150-ADD-J.
           ADD 1 TO L-COUNT.
           DISPLAY I LINE L-COUNT POSITION 10.
           DISPLAY J LINE L-COUNT POSITION 16.
           ADD 2 TO J.


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

