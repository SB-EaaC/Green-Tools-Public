      ** 程式範例十-1 (SAM10-1.CBL)
      ** 一維表格 (一維Occurs)

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample10-1.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAM10-1.IN"
                  ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAM10-1.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD IN-FILE
           LABEL RECORD IS STANDARD.
        01 IN-REC.
           05  DATE-IN.
               10 YY            PIC 9(2).
               10 MM            PIC 9(2).
           05  PRICE-IN         PIC 9(3).
        FD OUT-FILE
           LABEL RECORD IS STANDARD.
        01 OUT-REC              PIC X(80).

        WORKING-STORAGE SECTION.
        01 HEADING1.
           05 FILLER    PIC X(30)  VALUE ALL SPACES.
           05 FILLER    PIC X(20)  VALUE "商專電腦股份有限公司".
        01 HEADING2.
           05 FILLER    PIC X(4)   VALUE "一月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "二月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "三月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "四月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "五月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "六月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "七月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "八月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "九月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "十月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(6)   VALUE "十一月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(6)   VALUE "十二月".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "合計".
        01 DETAIL-LINE.
           05 OUT-TABLE OCCURS 12 TIMES.
              10 MONTH  PIC $$$9.
              10 FILLER PIC X(2)   VALUE SPACES.
           05 TOTAL     PIC $$$,$$9.
        01 SALE-TABLE.
           05 TAB1 OCCURS 12 TIMES PIC 9(3).
        77 EOF-FLAG     PIC X  VALUE "N".
        77 TOT          PIC 9(5) VALUE 0.
        77 SUB          PIC 9(2) VALUE 0.
      **
        PROCEDURE       DIVISION.
        000-MAIN-RTN.
            PERFORM 100-OPEN-RTN.
            PERFORM 200-WRITE-HEADING.
            PERFORM 300-READ-DATA.
            PERFORM 400-LOOP-RTN UNTIL EOF-FLAG = "Y".
            PERFORM 500-WRITE-OUTPUT.
            PERFORM 600-CLOSE.
            STOP RUN.
        100-OPEN-RTN.
            OPEN INPUT  IN-FILE
                 OUTPUT OUT-FILE.
        200-WRITE-HEADING.
            WRITE OUT-REC FROM HEADING1 AFTER PAGE.
            WRITE OUT-REC FROM HEADING2 AFTER 2 LINES.
        300-READ-DATA.
            READ IN-FILE AT END MOVE "Y" TO EOF-FLAG.
        400-LOOP-RTN.
            COMPUTE TAB1(MM) = TAB1(MM) + PRICE-IN.
            PERFORM 300-READ-DATA.
        500-WRITE-OUTPUT.
            PERFORM 510-MOVE VARYING SUB FROM 1 BY 1 UNTIL SUB > 12.
            PERFORM 520-TOT  VARYING SUB FROM 1 BY 1 UNTIL SUB > 12.
            WRITE OUT-REC FROM DETAIL-LINE.
        510-MOVE.
            MOVE TAB1(SUB) TO MONTH(SUB).
        520-TOT.
            COMPUTE TOT = TOT + TAB1(SUB).
            MOVE TOT TO TOTAL.
        600-CLOSE.
            CLOSE IN-FILE
                  OUT-FILE.
