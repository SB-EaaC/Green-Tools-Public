      **程式範例十三-2 (SAM13-2.CBL):新增、更改、刪除功能分別由二個副程式處理
      **                              (無傳遞參數)
      **                             (對照 SAM13-1.CBL)

       IDENTIFICATION  DIVISION.
       PROGRAM-ID.     Sample13-2.

       ENVIRONMENT     DIVISION.
       CONFIGURATION   SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      **
       DATA    DIVISION.
       WORKING-STORAGE SECTION.
       01  CHOICE       PIC 9.
      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-SCREEN.
           PERFORM 200-CHOICE.
           STOP RUN.
       100-SCREEN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "功能介面" LINE 5 POSITION 10.
           DISPLAY "1.新增紀錄" LINE 7 POSITION 12.
           DISPLAY "2.更改紀錄" LINE 9 POSITION 12.
           DISPLAY "3.刪除紀錄" LINE 11 POSITION 12.
           DISPLAY "INPUT YOUR CHOICE : " LINE 14 POSITION 10.
           ACCEPT CHOICE LINE 14 POSITION 32.
       200-CHOICE.

      **************************************************
      **  ADD-SUB.COB     就是  SAM12-5.COB 修改而成  **
      **  UP-SUB.COB      就是  SAM12-6.COB 修改而成  **
      **  DEL-SUB.COB     就是  SAM12-7.COB 修改而成  **
      **************************************************

           IF CHOICE = 1
              CALL "ADD-SUB"
              CANCEL "ADD-SUB"
           ELSE IF CHOICE = 2
                   CALL "UP-SUB"
                   CANCEL "UP-SUB"
                ELSE IF CHOICE = 3
                        CALL "DEL-SUB"
                        CANCEL "DEL-SUB"
                     END-IF
                END-IF
           END-IF.
