      ** 程式範例十二-3 (SAM12-3.CBL):對索引檔案做部份資料查詢

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample12-3.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAM12-2.IN"
                  ORGANIZATION IS INDEXED
                  ACCESS MODE IS DYNAMIC
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
        01 I            PIC 99 VALUE 8.
        01 START-NO     PIC X(5).
        01 END-NO       PIC X(5).

      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-ACCEPT-RANGE.
           PERFORM 300-READ.
           PERFORM 400-DISPLAY UNTIL EOF = "Y" OR PRO-NO > END-NO.
           PERFORM 500-CLOSE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN INPUT IN-FILE.
       200-ACCEPT-RANGE.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "START-NO : " LINE 8 POSITION 20.
           DISPLAY "  END-NO : " LINE 10 POSITION 20.
           ACCEPT START-NO LINE 8 POSITION 33.
           ACCEPT END-NO   LINE 10 POSITION 33.
           MOVE START-NO TO PRO-NO.
           START IN-FILE KEY NOT < PRO-NO
                 INVALID KEY PERFORM 250-KEY-ERROR.
       250-KEY-ERROR.
           DISPLAY "PRO-NO ERROR !!" LINE 15 POSITION 25.
       300-READ.
           READ IN-FILE NEXT AT END MOVE "Y" TO EOF.
       400-DISPLAY.
           DISPLAY IN-REC LINE I POSITION 30.
           ADD 1 TO I.
           PERFORM 300-READ.
       500-CLOSE.
           CLOSE IN-FILE.
