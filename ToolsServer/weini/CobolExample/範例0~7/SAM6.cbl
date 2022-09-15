

     ** �{���d�� �� (SAM6.CBL)
     ** �����\����FIF...ELSE...END-IF

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample6.

      *******************************************************************
      *                                                                 *
      * ���{������L��J��ƫ�A�v�@�ˬd�U���Ӷ��ءG                    *
      *   1.�Ȥ�s���Ĥ@�쬰�j�g�^��r���A�ĤG�ܲĥ|�쬰�ƭȫ��A���    *
      *   2.�Ȥ�m�W���i���ť�                                          *
      *   3.�q�ܸ��X���ƭȫ��A                                          *
      *   4.�H���B�׶ȥi�� 0�B100000�B200000�B300000 �� 400000          *
      *   5.�b��X�ɮ׿��~���e�[�� *                                  *
      * ���U [ESC] ��N������J�u�@                                   *
      *                                                                 *
      *******************************************************************
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *
       INPUT-OUTPUT     SECTION.
       FILE-CONTROL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAMPLE6.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL.
     **--------------------------------------
       DATA             DIVISION.
       FILE             SECTION.
       FD  OUT-FILE.
       01  OUT-REC         PIC X(80).
      *
       WORKING-STORAGE  SECTION.
       01  ACCEPT-REC.
           05 CUS-NO.
              10 CUS-NO-1  PIC A(1).
                 88 CUS-NO-1-OK  VALUE "A" THRU "Z".
              10 CUS-NO-2  PIC X(3).
           05 CUS-NAME     PIC X(8).
           05 ADDRESS      PIC X(20).
           05 PHO-NO       PIC X(8).
           05 CREDIT-LIMIT PIC 9(6).
              88 CREDIT-OK  VALUE 0 100000 200000 300000 400000.

       77  CONTI           PIC X.
       77  FUNC-KEY        PIC 9(2).
       01  HEADING1.
           05 FILLER       PIC X(36) VALUE ALL SPACES.
           05 FILLER       PIC X(17) VALUE "�� �� �� �� �� ��".
           05 FILLER       PIC X(37) VALUE ALL SPACES.
       01  HEADING2.
           05 FILLER       PIC X(8)  VALUE "�Ȥ�s��".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(8)  VALUE "�Ȥ�m�W".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "�a�}".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "�q��".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(8)  VALUE "�H���B��".
       01  DETAIL-LINE.
           05 CUS-NO-ERR        PIC X(1).
           05 CUS-NO-OUT        PIC X(4).
           05 FILLER            PIC X(3).
           05 CUS-NAME-ERR      PIC X(1).
           05 CUS-NAME-OUT      PIC X(8).
           05 FILLER            PIC X(3).
           05 ADDRESS-ERR       PIC X(1).
           05 ADDRESS-OUT       PIC X(20).
           05 FILLER            PIC X(3).
           05 PHO-NO-ERR        PIC X(1).
           05 PHO-NO-OUT        PIC X(8).
           05 FILLER            PIC X(3).
           05 CREDIT-LIMIT-ERR  PIC X(1).
           05 CREDIT-LIMIT-OUT  PIC 9(6).
     **
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           PERFORM 100-OPEN-FILE.
           PERFORM 200-WRITE-HEADING.
           PERFORM 300-SCREEN-RTN UNTIL FUNC-KEY = 27.
           PERFORM 400-CLOSE-FILE.
           STOP RUN.
       100-OPEN-FILE.
           OPEN OUTPUT OUT-FILE.
       200-WRITE-HEADING.
           WRITE OUT-REC FROM HEADING1 AFTER PAGE.
           WRITE OUT-REC FROM HEADING2 AFTER 2 LINES.
       300-SCREEN-RTN.
           PERFORM 310-DISPLAY-RTN.
           PERFORM 320-ACCEPT-RTN.
           PERFORM 330-CHECK-DATA-RTN.
           PERFORM 340-MOVE-RTN.
           PERFORM 350-WRITE-REC.
           PERFORM 360-CONTINUE-RTN.
       310-DISPLAY-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "�Ȥ�s��"  LINE  5 POSITION 15.
           DISPLAY "�Ȥ�m�W"  LINE  7 POSITION 15.
           DISPLAY "    �a�}"  LINE  9 POSITION 15.
           DISPLAY "    �q��"  LINE 11 POSITION 15.
           DISPLAY "�H���B��"  LINE 13 POSITION 15.
       320-ACCEPT-RTN.
           ACCEPT CUS-NO       LINE  5 POSITION 26.
           ACCEPT CUS-NAME     LINE  7 POSITION 26.
           ACCEPT ADDRESS      LINE  9 POSITION 26.
           ACCEPT PHO-NO       LINE 11 POSITION 26.
           ACCEPT CREDIT-LIMIT LINE 13 POSITION 26.
       330-CHECK-DATA-RTN.
           IF NOT CUS-NO-1-OK OR CUS-NO-2 IS NOT NUMERIC
              MOVE "*" TO CUS-NO-ERR
           ELSE
              MOVE SPACE TO CUS-NO-ERR
           END-IF.

           IF CUS-NAME = SPACES
              MOVE "*" TO CUS-NAME-ERR
           ELSE
              MOVE SPACE TO CUS-NAME-ERR
           END-IF.

           IF PHO-NO IS NOT NUMERIC
              MOVE "*" TO PHO-NO-ERR
           ELSE
              MOVE SPACE TO PHO-NO-ERR
           END-IF.

           IF NOT CREDIT-OK
              MOVE "*" TO CREDIT-LIMIT-ERR
           ELSE
              MOVE SPACE TO CREDIT-LIMIT-ERR
           END-IF.
       340-MOVE-RTN.
           MOVE CUS-NO       TO CUS-NO-OUT.
           MOVE CUS-NAME     TO CUS-NAME-OUT.
           MOVE ADDRESS      TO ADDRESS-OUT.
           MOVE PHO-NO       TO PHO-NO-OUT.
           MOVE CREDIT-LIMIT TO CREDIT-LIMIT-OUT.
       350-WRITE-REC.
           WRITE OUT-REC FROM DETAIL-LINE AFTER 2 LINES.
       360-CONTINUE-RTN.
           DISPLAY "[ESC]�����A��l���~�� !" LINE 22 POSITION 15.
           ACCEPT CONTI LINE 22 POSITION 40 ON EXCEPTION FUNC-KEY.
       400-CLOSE-FILE.
           CLOSE OUT-FILE.

      * �`�Υ\���䤧ASCII�X�Ȭ��G
      *
      *      [Return]�G13
      *      [Esc]�G27
      *      [F1~F10]�G01~10
      *      [TAB]�G09
      *      [Shift+TAB]�G56
      *      [Up arrow]�G52
      *      [Down arrow]�G53
      *      [Pg-Up]�G67
      *      [Pg-Down]�G68
      *      [Home]�G54
      *      [End]�G82


