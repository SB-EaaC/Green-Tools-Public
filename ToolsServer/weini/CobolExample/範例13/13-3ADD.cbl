      ** 13-3ADD.CBL:SAM13-3.CBL CALL �s�W�Ƶ{��

       IDENTIFICATION  DIVISION.
       PROGRAM-ID.     13-3-ADD-SUB.
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

        LINKAGE         SECTION.
        01 ADD-PRO-NO  PIC X(5).

      **
       PROCEDURE       DIVISION USING ADD-PRO-NO.
       000-MAIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-SCREEN-ADD.
           PERFORM 300-JUDGE.
           PERFORM 400-CLOSE.
           PERFORM 500-EXIT.
       100-OPEN-FILE.
           OPEN I-O PRO-FILE.
       200-SCREEN-ADD.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "PRO-NO : " LINE 10 POSITION 20.
           DISPLAY ADD-PRO-NO LINE 10 POSITION 35.
           MOVE ADD-PRO-NO TO PRO-NO.
       300-JUDGE.
           READ PRO-FILE
                INVALID KEY MOVE "NO " TO IF-DATA.
           IF IF-DATA = "NO"
              PERFORM 310-ACCEPT-DATA
              PERFORM 320-WRITE
           ELSE
              DISPLAY "��ƭ��� !" LINE 18 POSITION 25.
       310-ACCEPT-DATA.
           DISPLAY "PRO-NAME : " LINE 12 POSITION 20.
           DISPLAY "PRO-QTY : "  LINE 14 POSITION 20.
           ACCEPT PRO-NAME LINE 12 POSITION 35.
           ACCEPT PRO-QTY  LINE 14 POSITION 35.
       320-WRITE.
           WRITE PRO-REC.
       400-CLOSE.
           CLOSE PRO-FILE.
       500-EXIT.
           EXIT PROGRAM.
