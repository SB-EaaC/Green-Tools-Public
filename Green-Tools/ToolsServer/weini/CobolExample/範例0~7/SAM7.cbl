
      * 程式範例 七 (SAM7.CBL)
     ** 輸入檔案處理：讀入輸入檔案資料，建立一產品輸出資料檔案

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      SAMPLE7.
     **
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *
       INPUT-OUTPUT     SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAMPLE7.IN"
                  ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAMPLE7.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
     **
       DATA             DIVISION.
       FILE             SECTION.
       FD  IN-FILE
           LABEL RECORD IS STANDARD.
       01  IN-REC.
           05 PRO-NO-IN        PIC X(4).
           05 PRO-NAME-IN      PIC A(8).
           05 PRO-COST-IN      PIC 9(3).
           05 PRO-PRICE-IN     PIC 9(3).
           05 PRO-QTY-IN       PIC 9(3).
       FD  OUT-FILE
           LABEL RECORD IS STANDARD.
       01  OUT-REC             PIC X(80).
      *
       WORKING-STORAGE  SECTION.
       01  HEADING1.
           05 FILLER           PIC X(8)  VALUE "產品名稱".
           05 FILLER           PIC X(5).
           05 FILLER           PIC X(4)  VALUE "成本".
           05 FILLER           PIC X(3).
           05 FILLER           PIC X(4)  VALUE "售價".
           05 FILLER           PIC X(3).
           05 FILLER           PIC X(4)  VALUE "利潤".
           05 FILLER           PIC X(3).
           05 FILLER           PIC X(6)  VALUE "庫存量".
       01  DETAIL-LINE.
           05 PRO-NAME-OUT     PIC A(8).
           05 FILLER           PIC X(3).
           05 PRO-COST-OUT     PIC $**9.
           05 FILLER           PIC X(3).
           05 PRO-PRICE-OUT    PIC $**9.
           05 FILLER           PIC X(3).
           05 PRO-BONUS-OUT    PIC $**9.
           05 FILLER           PIC X(3).
           05 PRO-QTY-OUT      PIC ZZ9.
       77  BONUS        PIC 9(3) VALUE 0.
       77  EOF-FLAG     PIC A    VALUE "N".
     **--------------------------------------
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 120-WRITE-HEADING.
           PERFORM 140-READ-FILE.
           PERFORM 200-LOOP-RTN UNTIL EOF-FLAG = "Y".
           PERFORM 300-CLOSE-FILE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN INPUT  IN-FILE
                OUTPUT OUT-FILE.
       120-WRITE-HEADING.
           WRITE OUT-REC FROM HEADING1.
       140-READ-FILE.
           READ IN-FILE AT END MOVE "Y" TO EOF-FLAG.
       200-LOOP-RTN.
           PERFORM 210-COMPUTE.
           PERFORM 220-MOVE-DATA.
           PERFORM 230-WRITE-REC.
           PERFORM 140-READ-FILE.
       210-COMPUTE.
           COMPUTE BONUS = PRO-PRICE-IN - PRO-COST-IN.
       220-MOVE-DATA.
           MOVE PRO-NAME-IN  TO PRO-NAME-OUT.
           MOVE PRO-COST-IN  TO PRO-COST-OUT.
           MOVE PRO-PRICE-IN TO PRO-PRICE-OUT.
           MOVE BONUS        TO PRO-BONUS-OUT.
           MOVE PRO-QTY-IN   TO PRO-QTY-OUT.
       230-WRITE-REC.
           WRITE OUT-REC FROM DETAIL-LINE AFTER 2 LINES.
       300-CLOSE-FILE.
           CLOSE IN-FILE
                 OUT-FILE.
