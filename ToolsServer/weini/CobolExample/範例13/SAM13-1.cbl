      ** 程式範例十三-1 (SAM13-1.CBL):將新增、更改、刪除功能寫在同一程式

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample13-1.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT PRO-FILE ASSIGN TO RANDOM "SAM13-1.IN"
                  ORGANIZATION IS INDEXED
                  ACCESS MODE IS DYNAMIC
                  RECORD KEY IS PRO-NO.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD PRO-FILE
           LABEL RECORD IS STANDARD.
        01 PRO-REC.
           05 PRO-NO    PIC X(5).
           05 PRO-NAME  PIC X(10).
           05 PRO-QTY   PIC 9(3).

        WORKING-STORAGE SECTION.
        01 EOF          PIC X  VALUE "N".
        01 IF-DATA      PIC X(3) VALUE "YES".
        01 CHOICE       PIC X.
        01 SURE         PIC X.

      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           OPEN I-O PRO-FILE.
           PERFORM 100-SCREEN.
           PERFORM 200-CHOICE.
           PERFORM 600-CLOSE.
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
              PERFORM 300-ADD-RECORD
           ELSE IF CHOICE = "2"
                   PERFORM 400-CHANGE-RECORD
                ELSE IF CHOICE = "3"
                        PERFORM 500-DELETE-RECORD
                     END-IF
                END-IF
           END-IF.

      * 新增紀錄
       300-ADD-RECORD.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "PRO-NO : " LINE 10 POSITION 20.
           ACCEPT PRO-NO LINE 10 POSITION 35.
           DISPLAY "PRO-NAME : " LINE 12 POSITION 20.
           DISPLAY "PRO-QTY : "  LINE 14 POSITION 20.
           ACCEPT PRO-NAME LINE 12 POSITION 35.
           ACCEPT PRO-QTY  LINE 14 POSITION 35.
           WRITE PRO-REC.

      * 更改紀錄
       400-CHANGE-RECORD.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "PRO-NO : " LINE 10 POSITION 20.
           ACCEPT PRO-NO LINE 10 POSITION 32.
           READ PRO-FILE.
           ACCEPT PRO-NO LINE 10 POSITION 32 UPDATE.
           DISPLAY "PRO-NAME : " LINE 12 POSITION 20.
           ACCEPT PRO-NAME LINE 12 POSITION 32 UPDATE.
           DISPLAY "PRO-QTY : " LINE 14 POSITION 20.
           ACCEPT PRO-QTY LINE 14 POSITION 32 UPDATE.
           DISPLAY "是否確定 ?" LINE 18 POSITION 25.
           ACCEPT SURE LINE 18 POSITION 37.
           IF SURE = "Y"
              REWRITE PRO-REC INVALID KEY
                      DISPLAY "INVALID REWRITE !" LINE 20 POSITION 25.

      * 刪除紀錄
       500-DELETE-RECORD.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "PRO-NO : " LINE 10 POSITION 20.
           ACCEPT PRO-NO LINE 10 POSITION 32.
           READ PRO-FILE.
           DISPLAY "PRO-NAME : " LINE 12 POSITION 20.
           DISPLAY PRO-NAME LINE 12 POSITION 32.
           DISPLAY "PRO-QTY : " LINE 14 POSITION 20.
           DISPLAY PRO-QTY LINE 14 POSITION 32.
           DISPLAY "是否確定 ?" LINE 18 POSITION 25.
           ACCEPT SURE LINE 18 POSITION 37.
           IF SURE = "Y"
              DELETE PRO-FILE INVALID KEY
                     DISPLAY "INVALID DELETE !" LINE 20 POSITION 25.
       600-CLOSE.
           CLOSE PRO-FILE.
