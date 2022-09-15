      ** UPD-SUB.CBL : SAM13-2.CBL CALL 更改資料副程式

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     UP-SUB.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT PRO-FILE ASSIGN TO RANDOM "SAM12-2.IN"
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
        01 SURE         PIC X.
      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-ACCEPT-DATA.
           PERFORM 300-JUDGE.
           PERFORM 400-CLOSE.
           PERFORM 500-EXIT.
       100-OPEN-FILE.
           OPEN I-O PRO-FILE.
       200-ACCEPT-DATA.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "PRO-NO : " LINE 10 POSITION 20.
           ACCEPT PRO-NO LINE 10 POSITION 32.
       300-JUDGE.
           READ PRO-FILE INVALID KEY
                MOVE "NO " TO IF-DATA
                DISPLAY "此筆資料不存在 !" LINE 18 POSITION 25.
           IF IF-DATA = "YES"
              PERFORM 310-UPDATE-DATA
              PERFORM 320-REWRITE.
       310-UPDATE-DATA.
           ACCEPT PRO-NO LINE 10 POSITION 32 UPDATE.
           DISPLAY "PRO-NAME : " LINE 12 POSITION 20.
           ACCEPT PRO-NAME LINE 12 POSITION 32 UPDATE.
           DISPLAY "PRO-QTY : " LINE 14 POSITION 20.
           ACCEPT PRO-QTY LINE 14 POSITION 32 UPDATE.
       320-REWRITE.
           DISPLAY "是否確定 ?" LINE 18 POSITION 25.
           ACCEPT SURE LINE 18 POSITION 37.
           IF SURE = "Y"
              REWRITE PRO-REC INVALID KEY
                      DISPLAY "INVALID REWRITE !" LINE 20 POSITION 25.
       400-CLOSE.
           CLOSE PRO-FILE.
       500-EXIT.
           EXIT PROGRAM.
