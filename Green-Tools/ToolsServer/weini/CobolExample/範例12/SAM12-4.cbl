      ** 程式範例十二-4 (SAM12-4.CBL):對索引檔案做單筆資料查詢

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample12-4.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAM12-2.IN"
                  ORGANIZATION IS INDEXED
                  ACCESS MODE IS RANDOM
                  RECORD KEY IS PRO-NO.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD IN-FILE
           LABEL RECORD IS STANDARD.
        01 IN-REC.
           05 PRO-NO    PIC X(5).
           05 PRO-NAME  PIC X(10).
           05 PRO-QTY   PIC 9(3).

        WORKING-STORAGE SECTION.
        01 EOF          PIC X  VALUE "N".

      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-ACCEPT.
           PERFORM 300-PROCESS.
           PERFORM 400-CLOSE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN INPUT IN-FILE.
       200-ACCEPT.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "QUERY-NO : " LINE 10 POSITION 20.
           ACCEPT PRO-NO LINE 10 POSITION 33.
       300-PROCESS.
           READ IN-FILE
                INVALID KEY DISPLAY "KEY ERROR" LINE 15 POSITION 30.
           DISPLAY IN-REC LINE 13 POSITION 25.
       400-CLOSE.
           CLOSE IN-FILE.
