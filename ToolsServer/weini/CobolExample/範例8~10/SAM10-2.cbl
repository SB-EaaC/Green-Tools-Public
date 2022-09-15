      ** �{���d�ҤQ-2 (SAM10-2.CBL)
      ** �G�����

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample10-2.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAM10-2.IN"
                  ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAM10-2.OUT"
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
           05  NO-IN            PIC 9.
           05  PRICE-IN         PIC 9(3).
        FD OUT-FILE
           LABEL RECORD IS STANDARD.
        01 OUT-REC              PIC X(80).
        WORKING-STORAGE SECTION.
        01 HEADING1.
           05 FILLER    PIC X(30)  VALUE ALL SPACES.
           05 FILLER    PIC X(20)  VALUE "�ӱM�q���ѥ��������q".
        01 HEADING2.
           05 FILLER    PIC X(4)   VALUE "�@��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�G��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�T��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�|��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "����".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "����".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�C��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�K��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�E��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�Q��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(6)   VALUE "�Q�@��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(6)   VALUE "�Q�G��".
           05 FILLER    PIC X(2)   VALUE SPACES.
           05 FILLER    PIC X(4)   VALUE "�X�p".
        01 DETAIL-LINE.
           05 OUT-TABLE-C OCCURS 12 TIMES.
              10 MONTH  PIC $$$9.
              10 FILLER PIC X(2).
           05 TOTAL     PIC $$$,$$9.
        01 SALE-TABLE.
           05 TAB-R OCCURS 2 TIMES.
              10 TAB-C OCCURS 12 TIMES PIC 9(3).
        77 EOF-FLAG     PIC X  VALUE "N".
        77 TOT          PIC 9(5) VALUE 0.
        77 SUB1         PIC 9    VALUE 0.
        77 SUB2         PIC 9(2) VALUE 0.
      **
        PROCEDURE       DIVISION.
        000-MAIN-RTN.
            PERFORM 100-OPEN-RTN.
            PERFORM 200-WRITE-HEADING.
            PERFORM 300-READ-DATA.
            PERFORM 400-LOOP-RTN UNTIL EOF-FLAG = "Y".
            PERFORM 500-WRITE VARYING SUB1 FROM 1 BY 1 UNTIL SUB1 > 2.
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
            COMPUTE TAB-C(NO-IN, MM) = TAB-C(NO-IN, MM) + PRICE-IN.
            PERFORM 300-READ-DATA.
        500-WRITE.
            PERFORM 510-MOVE VARYING SUB2 FROM 1 BY 1 UNTIL SUB2 > 12.
            MOVE TOT TO TOTAL.
            WRITE OUT-REC FROM DETAIL-LINE AFTER 2 LINES.
        510-MOVE.
            MOVE TAB-C(SUB1, SUB2) TO MONTH(SUB2).
            COMPUTE TOT = TOT + TAB-C(SUB1, SUB2).
        600-CLOSE.
            CLOSE IN-FILE
                  OUT-FILE.
