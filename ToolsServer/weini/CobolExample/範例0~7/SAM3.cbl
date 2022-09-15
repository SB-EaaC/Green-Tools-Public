
      * �d�ҤT�G�ù���J/��X���(�榡��)
      *         �����t�Τ��;���鶵�ةw�q;MOVE�ԭz(SAM3.CBL)

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      SAMPLE3.
     **--------------------------------------
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
     **--------------------------------------
       DATA             DIVISION.
       FILE             SECTION.
      *
       WORKING-STORAGE  SECTION.
       77  PRO-NO       PIC X(4).
       77  PRO-NAME     PIC A(8).
       77  PRO-COST     PIC 9(3).
       77  PRO-PRICE    PIC 9(3).
       77  PRO-QTY      PIC 9(3).
       77  QTY-COST     PIC 9(6).
       77  QTY-PRICE    PIC 9(6).
       77  QTY-INCOME   PIC 9(6).
       77  CONTI        PIC A    VALUE "Y".
       01  TODAY-DATE.
           05 TODAY-YY  PIC 9(2).
           05 TODAY-MM  PIC 9(2).
           05 TODAY-DD  PIC 9(2).
       01  DATE-REC.
           05 YY        PIC 9(2).
           05 FILLER    PIC X(2) VALUE "�~".
           05 MM        PIC 9(2).
           05 FILLER    PIC X(2) VALUE "��".
           05 DD        PIC 9(2).
           05 FILLER    PIC X(2) VALUE "��".
     **--------------------------------------
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           PERFORM 100-DISPLAY-RTN UNTIL CONTI = "N".
           STOP RUN.
       100-DISPLAY-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "���~�s�� :"  LINE  5 POSITION 15.
           DISPLAY "���~�W�� :"  LINE  7 POSITION 15.
           DISPLAY "��즨�� :"  LINE  9 POSITION 15.
           DISPLAY "    ��� :"  LINE 11 POSITION 15.
           DISPLAY "  �w�s�q :"  LINE 13 POSITION 15.
           PERFORM 110-ACCEPT-RTN.
           PERFORM 120-COMPUTE-RTN.
           PERFORM 130-DISPLAY-BOTTOM1.
           PERFORM 140-ACCEPT-DATE.
           PERFORM 150-DISPLAY-BOTTOM2.
       110-ACCEPT-RTN.
           ACCEPT PRO-NO    LINE  5 POSITION 26 TAB.
           ACCEPT PRO-NAME  LINE  7 POSITION 26 TAB.
           ACCEPT PRO-COST  LINE  9 POSITION 26 TAB.
           ACCEPT PRO-PRICE LINE 11 POSITION 26 TAB.
           ACCEPT PRO-QTY   LINE 13 POSITION 26 TAB.
       120-COMPUTE-RTN.
           COMPUTE QTY-COST = PRO-COST * PRO-QTY.
           COMPUTE QTY-PRICE = PRO-PRICE * PRO-QTY.
           COMPUTE QTY-INCOME = QTY-PRICE - QTY-COST.
       130-DISPLAY-BOTTOM1.
           DISPLAY "���~�W��   �w�s����   �w�s���   �w�s�Q��"
                             LINE 17 POSITION 17.
           DISPLAY PRO-NAME  LINE 18 POSITION 17.
           DISPLAY QTY-COST  LINE 18 POSITION 29.
           DISPLAY QTY-PRICE LINE 18 POSITION 40.
           DISPLAY QTY-INCOME LINE 18 POSITION 51.
       140-ACCEPT-DATE.
           ACCEPT TODAY-DATE FROM DATE.
           MOVE TODAY-YY TO YY.
           MOVE TODAY-MM TO MM.
           MOVE TODAY-DD TO DD.
       150-DISPLAY-BOTTOM2.
           DISPLAY DATE-REC LINE 20 POSITION 50.
           DISPLAY "�O�_�~���J?(Y/N) :" LINE 22 POSITION 20.
           ACCEPT CONTI LINE 22 POSITION 40.
