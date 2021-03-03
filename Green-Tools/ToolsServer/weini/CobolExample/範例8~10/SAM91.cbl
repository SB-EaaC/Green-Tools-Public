      ** 程式範例九-1 (SAM91.CBL)
      ** 單層控制中斷(Control Break)

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample9-1.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAMPLE91.IN"
                  ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAMPLE91.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD IN-FILE
           LABEL RECORD IS STANDARD.
        01 IN-REC.
           05  SALES-DATE.
               10 SALES-YEAR       PIC 9(2).
               10 SALES-MONTH      PIC 9(2).
               10 SALES-DAY        PIC 9(2).
           05  SALE-NO             PIC X(3).
           05  PRODUCT-NO          PIC X(4).
           05  PRICE               PIC 9(4).
           05  QTY                 PIC 9(4).
           05  SALESMAN            PIC X(4).

        FD OUT-FILE
           LABEL RECORD IS STANDARD.
        01 OUT-REC              PIC X(80).

        WORKING-STORAGE SECTION.
        01 HEADING1.
           05 FILLER            PIC X(36)  VALUE SPACES.
           05 FILLER            PIC X(8)   VALUE "北青公司".
        01 HEADING2.
           05 FILLER            PIC X(36)  VALUE SPACES.
           05 FILLER            PIC X(8)   VALUE "銷售報表".
        01 HEADING3.
           05 FILLER            PIC X(10).
           05 FILLER            PIC X(8)  VALUE "銷售日期".
           05 FILLER            PIC X(4).
           05 FILLER            PIC X(8)  VALUE "產品編號".
           05 FILLER            PIC X(4).
           05 FILLER            PIC X(8)  VALUE "銷售數量".
           05 FILLER            PIC X(4).
           05 FILLER            PIC X(4)  VALUE "備註".
        01 DETAIL-LINE.
           05 FILLER            PIC X(10).
           05 L-SALES-YEAR      PIC 99/.
           05 L-SALES-MONTH     PIC 99/.
           05 L-SALES-DAY       PIC 99.
           05 FILLER            PIC X(4).
           05 L-PRODUCT-NO      PIC X(4).
           05 FILLER            PIC X(4).
           05 L-QTY             PIC Z,ZZ9.
        01 CTRL-LINE.
           05 FILLER            PIC X(10).
           05 M-SALES-YEAR      PIC 99/.
           05 M-SALES-MONTH     PIC 99.
           05 FILLER            PIC X(19) VALUE "月銷售數量....     ".
           05 M-MONTH-TOTAL     PIC ZZ,ZZ9.
           05 FILLER            PIC X(4)  VALUE "   *".
        01 ENDING.
           05 FILLER            PIC X(19) VALUE "總銷售數量....     ".
           05 T-ALL-TOTAL       PIC ZZ,ZZ9.
           05 FILLER            PIC X(4)  VALUE "  **".
        77 EOF-FLAG     PIC X  VALUE "N".
        77 CHECK-YEAR   PIC 9(2).
        77 CHECK-MONTH  PIC 9(2).
        77 MONTH-TOTAL  PIC 9(8).
        77 ALL-TOTAL    PIC 9(8).
      **
        PROCEDURE       DIVISION.
        000-MAIN-RTN.
            PERFORM 100-OPEN-RTN.
            PERFORM 200-WRITE-HEADING.
            PERFORM 300-INITIAL-DATA.
            PERFORM 400-LOOP-RTN UNTIL EOF-FLAG = "Y".
            PERFORM 500-WRITE-ENDING.
            PERFORM 600-CLOSE-FILES.
            STOP RUN.
        100-OPEN-RTN.
            OPEN INPUT  IN-FILE
                 OUTPUT OUT-FILE.
        200-WRITE-HEADING.
            WRITE OUT-REC FROM HEADING1 AFTER PAGE.
            WRITE OUT-REC FROM HEADING2 AFTER 2 LINES
            WRITE OUT-REC FROM HEADING3 AFTER 2 LINES.
        300-INITIAL-DATA.
            PERFORM 350-READ-DATA.
            MOVE SALES-YEAR  TO CHECK-YEAR.
            MOVE SALES-MONTH TO CHECK-MONTH.
        350-READ-DATA.
            READ IN-FILE AT END MOVE "Y" TO EOF-FLAG.
        400-LOOP-RTN.
            IF SALES-MONTH NOT = CHECK-MONTH
               PERFORM 450-PROCESS-MONTH-RTN
            END-IF.
            MOVE SALES-YEAR TO L-SALES-YEAR.
            MOVE SALES-MONTH TO L-SALES-MONTH.
            MOVE SALES-DAY TO L-SALES-DAY.
            MOVE PRODUCT-NO TO L-PRODUCT-NO.
            MOVE QTY TO L-QTY.
            WRITE OUT-REC FROM DETAIL-LINE AFTER 2 LINES.
            ADD QTY TO MONTH-TOTAL.
            ADD QTY TO ALL-TOTAL.
            PERFORM 350-READ-DATA.
        450-PROCESS-MONTH-RTN.
            MOVE CHECK-YEAR TO M-SALES-YEAR.
            MOVE CHECK-MONTH TO M-SALES-MONTH.
            MOVE MONTH-TOTAL TO M-MONTH-TOTAL.
            WRITE OUT-REC FROM CTRL-LINE AFTER 2 LINES.
            MOVE SALES-MONTH TO CHECK-MONTH.
            MOVE ZEROS TO MONTH-TOTAL.
        500-WRITE-ENDING.
            PERFORM 450-PROCESS-MONTH-RTN.
            MOVE ALL-TOTAL TO T-ALL-TOTAL.
            WRITE OUT-REC FROM ENDING AFTER 2 LINES.
        600-CLOSE-FILES.
            CLOSE IN-FILE OUT-FILE.
