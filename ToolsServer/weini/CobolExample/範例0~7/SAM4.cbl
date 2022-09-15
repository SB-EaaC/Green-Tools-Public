
      * �d�ҥ|�GAccept �U����ơA�إߤ@���~����ɮ� (SAM4.CBL)
      *         SELECT�ԭz;FILE SECTION(�ɮ׸`)�F�{�ǳ��ԭz(OPEN�BWRITE�BCLOSE)

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample4.
     **--------------------------------------
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *
       INPUT-OUTPUT     SECTION.
       FILE-CONTROL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAMPLE4.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
     **--------------------------------------
       DATA             DIVISION.
       FILE             SECTION.
       FD  OUT-FILE.
       01  OUT-REC.
           05 PRO-NO-OUT        PIC X(4).
           05 PRO-NAME-OUT      PIC A(8).
           05 PRO-COST-OUT      PIC 9(3).
           05 PRO-PRICE-OUT     PIC 9(3).
           05 PRO-QTY-OUT       PIC 9(3).
      *
       WORKING-STORAGE  SECTION.
       01  ACCEPT-REC.
           05 PRO-NO       PIC X(4).
           05 PRO-NAME     PIC A(8).
           05 PRO-COST     PIC 9(3).
           05 PRO-PRICE    PIC 9(3).
           05 PRO-QTY      PIC 9(3).
       77  CONTI        PIC A    VALUE "Y".
     **--------------------------------------
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-SCREEN-RTN UNTIL CONTI = "N".
           PERFORM 300-CLOSE-FILE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN OUTPUT OUT-FILE.
       200-SCREEN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "���~�s�� :"  LINE  5 POSITION 15.
           DISPLAY "���~�W�� :"  LINE  7 POSITION 15.
           DISPLAY "��즨�� :"  LINE  9 POSITION 15.
           DISPLAY "    ��� :"  LINE 11 POSITION 15.
           DISPLAY "  �w�s�q :"  LINE 13 POSITION 15.
           PERFORM 210-ACCEPT-RTN.
           PERFORM 220-DISPLAY-BOTTOM1.
           PERFORM 230-WRITE-REC.
           PERFORM 240-DISPLAY-BOTTOM2.
       210-ACCEPT-RTN.
           ACCEPT PRO-NO    LINE  5 POSITION 26.
           ACCEPT PRO-NAME  LINE  7 POSITION 26.
           ACCEPT PRO-COST  LINE  9 POSITION 26.
           ACCEPT PRO-PRICE LINE 11 POSITION 26.
           ACCEPT PRO-QTY   LINE 13 POSITION 26.
       220-DISPLAY-BOTTOM1.
           DISPLAY "���~�s��     ���~�W��   ��즨��     ���    �w�s�q"
                             LINE 17 POSITION 17.
           DISPLAY PRO-NO    LINE 18 POSITION 19.
           DISPLAY PRO-NAME  LINE 18 POSITION 30.
           DISPLAY PRO-COST  LINE 18 POSITION 44.
           DISPLAY PRO-PRICE LINE 18 POSITION 55.
           DISPLAY PRO-QTY   LINE 18 POSITION 63.


       230-WRITE-REC.
           MOVE PRO-NO    TO PRO-NO-OUT.
           MOVE PRO-NAME  TO PRO-NAME-OUT.
           MOVE PRO-COST  TO PRO-COST-OUT.
           MOVE PRO-PRICE TO PRO-PRICE-OUT.
           MOVE PRO-QTY   TO PRO-QTY-OUT.
           WRITE OUT-REC.
       240-DISPLAY-BOTTOM2.
           DISPLAY "�O�_�~���J?(Y/N) :" LINE 22 POSITION 20.
           ACCEPT CONTI LINE 22 POSITION 40.
       300-CLOSE-FILE.
           CLOSE OUT-FILE.
