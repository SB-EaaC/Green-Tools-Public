
      * 範例五：Accept 資料，輸出至產品資料檔案，且包含表頭(SAM5.CBL)
      *         報表表頭宣告；編輯符號；報表跳行跳頁

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample5.
     **--------------------------------------
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *
       INPUT-OUTPUT     SECTION.
       FILE-CONTROL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAMPLE5.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
     **--------------------------------------
       DATA             DIVISION.
       FILE             SECTION.
       FD  OUT-FILE.
       01  OUT-REC         PIC X(80).
      *
       WORKING-STORAGE  SECTION.
       01  ACCEPT-REC.
           05 PRO-NO       PIC X(4).
           05 PRO-NAME     PIC A(8).
           05 PRO-COST     PIC 9(5).
           05 PRO-PRICE    PIC 9(5).
           05 PRO-QTY      PIC 9(5).
       77  CONTI           PIC A    VALUE "Y".
       77  COMP-PERCENT    PIC V99  VALUE 0.
       01  HEADING1.
           05 FILLER       PIC X(36) VALUE ALL SPACES.
           05 FILLER       PIC X(17) VALUE "產 品 明 細 報 表".
           05 FILLER       PIC X(37) VALUE ALL SPACES.
       01  HEADING2.
           05 FILLER       PIC X(8)  VALUE "產品編號".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(8)  VALUE "產品名稱".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "成本".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "售價".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(6)  VALUE "庫存量".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(6)  VALUE "百分比".
       01  DETAIL-LINE.
           05 PRO-NO-OUT        PIC X(4).
           05 FILLER            PIC X(3).
           05 PRO-NAME-OUT      PIC A(8).
           05 FILLER            PIC X(3).
           05 PRO-COST-OUT      PIC **,**9.
           05 FILLER            PIC X(3).
           05 PRO-PRICE-OUT     PIC $$$,$$9.
           05 FILLER            PIC X(3).
           05 PRO-QTY-OUT       PIC ZZ,ZZ9.
           05 FILLER            PIC X(3).
           05 PERCENT-OUT       PIC .99.







       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-WRITE-HEADING.
           PERFORM 300-SCREEN-RTN UNTIL CONTI = "N".
           PERFORM 400-CLOSE-FILE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN OUTPUT OUT-FILE.
       200-WRITE-HEADING.
           WRITE OUT-REC FROM HEADING1 AFTER PAGE.
           WRITE OUT-REC FROM HEADING2 AFTER 2 LINES.
       300-SCREEN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "產品編號 :"  LINE  5 POSITION 15.
           DISPLAY "產品名稱 :"  LINE  7 POSITION 15.
           DISPLAY "單位成本 :"  LINE  9 POSITION 15.
           DISPLAY "    售價 :"  LINE 11 POSITION 15.
           DISPLAY "  庫存量 :"  LINE 13 POSITION 15.
           PERFORM 310-ACCEPT-RTN.
           PERFORM 320-COMPUTE-RTN.
           PERFORM 330-MOVE-RTN.
           PERFORM 340-WRITE-REC.
           PERFORM 350-DISPLAY-BOTTOM2.
       310-ACCEPT-RTN.
           ACCEPT PRO-NO    LINE  5 POSITION 26.
           ACCEPT PRO-NAME  LINE  7 POSITION 26.
           ACCEPT PRO-COST  LINE  9 POSITION 26.
           ACCEPT PRO-PRICE LINE 11 POSITION 26.
           ACCEPT PRO-QTY   LINE 13 POSITION 26.
       320-COMPUTE-RTN.
           COMPUTE COMP-PERCENT = PRO-COST / PRO-PRICE.
       330-MOVE-RTN.
           MOVE PRO-NO       TO PRO-NO-OUT.
           MOVE PRO-NAME     TO PRO-NAME-OUT.
           MOVE PRO-COST     TO PRO-COST-OUT.
           MOVE PRO-PRICE    TO PRO-PRICE-OUT.
           MOVE PRO-QTY      TO PRO-QTY-OUT.
           MOVE COMP-PERCENT TO PERCENT-OUT.
       340-WRITE-REC.
           WRITE OUT-REC FROM DETAIL-LINE AFTER 2 LINES.
       350-DISPLAY-BOTTOM2.
           DISPLAY "是否繼續輸入?(Y/N) :" LINE 22 POSITION 20.
           ACCEPT CONTI LINE 22 POSITION 40.
       400-CLOSE-FILE.
           CLOSE OUT-FILE.
