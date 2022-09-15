      ** 範例十二-1 (SAM12-1.CBL):索引檔案建檔

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample12-1.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAM12-1.OUT"
                  ORGANIZATION IS INDEXED
                  ACCESS MODE IS DYNAMIC
                  RECORD KEY IS PRO-NO.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD OUT-FILE
           LABEL RECORD IS STANDARD.
        01 OUT-REC.
           05 PRO-NO    PIC X(5).
           05 PRO-NAME  PIC X(10).
           05 PRO-QTY   PIC 9(3).

        WORKING-STORAGE SECTION.
        01 CONT         PIC X  VALUE "Y".
        01 EOF          PIC X  VALUE "N".
        01 I            PIC 99 VALUE 10.

      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-ACCEPT-SCREEN UNTIL CONT = "N".
           PERFORM 400-CLOSE-FILE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN OUTPUT OUT-FILE.
       200-ACCEPT-SCREEN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "編號 : "  LINE 5 POSITION 20.
           DISPLAY "名稱 : "  LINE 7 POSITION 20.
           DISPLAY "數量 : "  LINE 9 POSITION 20.
           ACCEPT PRO-NO      LINE 5 POSITION 28.
           ACCEPT PRO-NAME    LINE 7 POSITION 28.
           ACCEPT PRO-QTY     LINE 9 POSITION 28.
           PERFORM 300-WRITE-REC.
           DISPLAY "是否繼續 ?" LINE 15 POSITION 20.
           ACCEPT CONT LINE 15 POSITION 33.
       300-WRITE-REC.
           WRITE OUT-REC INVALID KEY DISPLAY "KEY ERROR !!"
                 LINE 20 POSITION 30.
       400-CLOSE-FILE.
           CLOSE OUT-FILE.
