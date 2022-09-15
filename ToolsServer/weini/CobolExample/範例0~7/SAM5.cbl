
      * �d�Ҥ��GAccept ��ơA��X�ܲ��~����ɮסA�B�]�t���Y(SAM5.CBL)
      *         ������Y�ŧi�F�s��Ÿ��F����������

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
           05 FILLER       PIC X(17) VALUE "�� �~ �� �� �� ��".
           05 FILLER       PIC X(37) VALUE ALL SPACES.
       01  HEADING2.
           05 FILLER       PIC X(8)  VALUE "���~�s��".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(8)  VALUE "���~�W��".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "����".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "���".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(6)  VALUE "�w�s�q".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(6)  VALUE "�ʤ���".
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
           DISPLAY "���~�s�� :"  LINE  5 POSITION 15.
           DISPLAY "���~�W�� :"  LINE  7 POSITION 15.
           DISPLAY "��즨�� :"  LINE  9 POSITION 15.
           DISPLAY "    ��� :"  LINE 11 POSITION 15.
           DISPLAY "  �w�s�q :"  LINE 13 POSITION 15.
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
           DISPLAY "�O�_�~���J?(Y/N) :" LINE 22 POSITION 20.
           ACCEPT CONTI LINE 22 POSITION 40.
       400-CLOSE-FILE.
           CLOSE OUT-FILE.
