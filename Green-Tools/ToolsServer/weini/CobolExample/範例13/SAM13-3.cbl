      ** 程式範例十三-3 (SAM13-3.CBL):利用副程式處理新增、更改、刪除等功能，並傳
      **                              遞參數
      **                              對照 (SAM13-2.CBL)

       IDENTIFICATION  DIVISION.
       PROGRAM-ID.     Sample13-3.

       ENVIRONMENT     DIVISION.
       CONFIGURATION   SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      **
       DATA    DIVISION.
       WORKING-STORAGE SECTION.
       01  CHOICE       PIC X     VALUE SPACE.
       01  ADD-NO       PIC X(5)  VALUE SPACE.
       01  UPDATE-NO    PIC X(5)  VALUE SPACE.
       01  UPDATE-NAME  PIC X(10) VALUE SPACE.
       01  UPDATE-QTY   PIC 9(3)  VALUE ZERO.
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
           IF CHOICE = "1"
              DISPLAY "NEW NO: " LINE 17 POSITION 20
              ACCEPT ADD-NO LINE 17 POSITION 28
              CALL "13-3ADD" USING ADD-NO
              CANCEL "13-3ADD"
           ELSE IF CHOICE = "2"
                   CALL "13-3UP"
                         USING UPDATE-NO UPDATE-NAME UPDATE-QTY
                   CANCEL "13-3UP"
                   DISPLAY UPDATE-NO    LINE 20 POSITION 15
                   DISPLAY UPDATE-NAME  LINE 20 POSITION 23
                   DISPLAY UPDATE-QTY   LINE 20 POSITION 36
                ELSE IF CHOICE = "3"
                        CALL "DEL-SUB"
                        CANCEL "DEL-SUB"
                     END-IF
                END-IF
           END-IF.
