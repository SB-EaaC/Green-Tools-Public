      ** 範例十一-2 (SAM11-2.CBL):循序檔案更新

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample11-2.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT MAS-FILE ASSIGN TO RANDOM "SAM11-2.DAT"
                  ORGANIZATION IS LINE SEQUENTIAL.
           SELECT TRAN-FILE ASSIGN TO RANDOM "SAM11-2.TRA"
                  ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAM11-2.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD MAS-FILE
           LABEL RECORD IS STANDARD.
        01 MAS-REC.
           05 MAS-PRO-NO        PIC X(5).
           05 MAS-SALE-QTY      PIC 9(3).
        FD TRAN-FILE
           LABEL RECORD IS STANDARD.
        01 TRAN-REC.
           05 TRAN-PRO-NO       PIC X(5).
           05 TRAN-SALE-QTY     PIC 9(3).
           05 TRAN-TYPE         PIC A.
        FD OUT-FILE
           LABEL RECORD IS STANDARD.
        01 OUT-REC.
           05 OUT-PRO-NO        PIC X(5).
           05 OUT-SALE-QTY      PIC 9(3).

        WORKING-STORAGE SECTION.
        01 EOF-MAS      PIC X  VALUE "N".
        01 EOF-TRAN     PIC X  VALUE "N".
      **
        PROCEDURE       DIVISION.
        000-MAIN-RTN.
            PERFORM 100-OPEN-RTN.
            PERFORM 200-READ-RTN.
            PERFORM 300-LOOP-RTN UNTIL
                        (EOF-MAS = "Y") AND (EOF-TRAN = "Y").
            PERFORM 400-CLOSE-RTN.
            STOP RUN.
        100-OPEN-RTN.
            OPEN INPUT  MAS-FILE TRAN-FILE
                 OUTPUT OUT-FILE.
        200-READ-RTN.
            PERFORM 210-READ-MAS.
            PERFORM 220-READ-TRAN.
        210-READ-MAS.
            READ MAS-FILE AT END MOVE "Y" TO EOF-MAS.
        220-READ-TRAN.
            READ TRAN-FILE AT END MOVE "Y" TO EOF-TRAN.
        300-LOOP-RTN.
            IF MAS-PRO-NO < TRAN-PRO-NO
               PERFORM 310-MAS-OUT
               PERFORM 210-READ-MAS
            ELSE
               IF MAS-PRO-NO = TRAN-PRO-NO
                  PERFORM 320-CHANGE-OUT
                  PERFORM 210-READ-MAS
                  PERFORM 220-READ-TRAN
               ELSE
                  IF MAS-PRO-NO > TRAN-PRO-NO
                     PERFORM 330-TRAN-OUT
                     PERFORM 220-READ-TRAN
                  END-IF
               END-IF
            END-IF.
            IF EOF-MAS = "Y"
               PERFORM 340-TRAN-FINAL UNTIL EOF-TRAN = "Y".
            IF EOF-TRAN = "Y"
               PERFORM 350-MAS-FINAL UNTIL EOF-MAS = "Y".
        310-MAS-OUT.
            MOVE MAS-REC TO OUT-REC.
            WRITE OUT-REC.
        320-CHANGE-OUT.
            IF TRAN-TYPE = "C"
               MOVE MAS-PRO-NO TO OUT-PRO-NO
               COMPUTE OUT-SALE-QTY = MAS-SALE-QTY + TRAN-SALE-QTY
               WRITE OUT-REC.
        330-TRAN-OUT.
            MOVE TRAN-PRO-NO   TO OUT-PRO-NO.
            MOVE TRAN-SALE-QTY TO OUT-SALE-QTY.
            WRITE OUT-REC.
        340-TRAN-FINAL.
            MOVE TRAN-PRO-NO TO OUT-PRO-NO.
            MOVE TRAN-SALE-QTY TO OUT-SALE-QTY.
            WRITE OUT-REC.
            PERFORM 220-READ-TRAN.
        350-MAS-FINAL.
            MOVE MAS-REC TO OUT-REC.
            WRITE OUT-REC.
            PERFORM 210-READ-MAS.
        400-CLOSE-RTN.
            CLOSE MAS-FILE
                  TRAN-FILE
                  OUT-FILE.
