      ** �{���d�ҤQ�G-2 (SAM12-2.CBL):�d�ߥ��������ɮ׸��

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample12-2.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO RANDOM "SAM12-2.IN"
                  ORGANIZATION IS INDEXED
                  ACCESS MODE IS SEQUENTIAL
                  RECORD KEY IS PRO-NO.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD IN-FILE
           LABEL RECORD IS STANDARD.
        01 IN-REC.
           05 PRO-NO            PIC X(5).
           05 PRO-NAME          PIC X(10).
           05 PRO-QTY           PIC 9(3).
        WORKING-STORAGE SECTION.
        01 EOF          PIC X  VALUE "N".
        01 I            PIC 99 VALUE 12.

      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-READ-FILE.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           PERFORM 300-DISPLAY UNTIL EOF = "Y".
           PERFORM 400-CLOSE-FILE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN INPUT IN-FILE.
       200-READ-FILE.
           READ IN-FILE AT END MOVE "Y" TO EOF.
       300-DISPLAY.
           DISPLAY IN-REC LINE I POSITION 20.
           ADD 2 TO I.
           PERFORM 200-READ-FILE.
       400-CLOSE-FILE.
           CLOSE IN-FILE.
