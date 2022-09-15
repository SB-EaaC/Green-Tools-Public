      ** �{���d�ҤQ�@-1 (SAM11-1.CBL):�`����(Sequential)����
      ** �}I-O�ɡBExtend�ɡF�ŧi��

        IDENTIFICATION  DIVISION.
        PROGRAM-ID.     Sample11-1.
      **
        ENVIRONMENT     DIVISION.
        CONFIGURATION   SECTION.
        SOURCE-COMPUTER. IBM-PC.
        OBJECT-COMPUTER. IBM-PC.

        INPUT-OUTPUT    SECTION.
        FILE-CONTROL.
           SELECT OUT-FILE ASSIGN TO RANDOM "SAM11-1.OUT"
                  ORGANIZATION IS LINE SEQUENTIAL
                  FILE STATUS IS FS-CODE.
      **
        DATA    DIVISION.
        FILE    SECTION.
        FD OUT-FILE
           LABEL RECORD IS STANDARD.
        01 OUT-REC.
           05 PRO-NO    PIC X(5).
           05 SALE-QTY  PIC 9(3).
           05 UP-TYPE   PIC A.

        WORKING-STORAGE SECTION.
        01 HEADING1     PIC X(50) VALUE ALL "=".
        01 FS-CODE      PIC X(2).
        01 STOP-PROGRAM  PIC X  VALUE "Y".
        01 MODIFY-CODE  PIC X.
           88 MODIFY-TYPE   VALUE "Y" "y" "N" "n".
      **
        PROCEDURE       DIVISION.
      * �ŧi��
        DECLARATIVES.
        OUTPUT-ERROR    SECTION.
           USE AFTER STANDARD ERROR PROCEDURE ON OUT-FILE.
        ERROR-PROCESS.
           IF FS-CODE NOT = "00"
              OPEN OUTPUT OUT-FILE.
        END DECLARATIVES.
      * �D�{��
        PROGRAM-BEGIN   SECTION.
        100-MAIN-RTN.
            PERFORM 200-OPEN-FILES.
            WRITE OUT-REC FROM HEADING1.
            PERFORM 300-SCREEN-RTN.
            PERFORM 400-ACCEPT-RTN UNTIL STOP-PROGRAM = "N".
            PERFORM 500-CLOSE-FILES.
            STOP RUN.
        200-OPEN-FILES.
            OPEN I-O OUT-FILE.
            IF FS-CODE = "00"
               CLOSE OUT-FILE
               OPEN EXTEND OUT-FILE.
        300-SCREEN-RTN.
            DISPLAY " " LINE 1 POSITION 1 ERASE.
            DISPLAY "=�����ɫ��ɵ{��=" LINE 5 POSITION 30.
            DISPLAY "1.��s���O :" LINE 7 POSITION 20.
            DISPLAY "(A:�W�[���~��; D:�R�����~; C:�W�[�ƶq)"
                     LINE 8 POSITION 21.
            DISPLAY "2.���~�s�� :" LINE 10 POSITION 20.
            DISPLAY "3.�P��ƶq :" LINE 12 POSITION 20.
        400-ACCEPT-RTN.
            DISPLAY "�~���J?(Y/N):" LINE 18 POSITION 20.
            ACCEPT STOP-PROGRAM LINE 18 POSITION 40.
            IF STOP-PROGRAM = "Y"
               PERFORM 410-RTN THRU 430-RTN
               MOVE SPACE TO MODIFY-CODE
               PERFORM UNTIL MODIFY-TYPE
                  DISPLAY "�O�_�ק�?(�ק�:1-3  �x�s:Y  ���:N)"
                           LINE 18 POSITION 20
                  ACCEPT MODIFY-CODE LINE 18 POSITION 60
                  PERFORM 440-MODIFY-RTN
               END-PERFORM
               IF MODIFY-CODE = "Y" OR "y"
                  WRITE OUT-REC
                  MOVE SPACE TO OUT-REC
                  MOVE SPACE TO MODIFY-CODE
               END-IF
            END-IF.
        410-RTN.
            ACCEPT UP-TYPE LINE 7 POSITION 32.
        420-RTN.
            ACCEPT PRO-NO LINE 10 POSITION 32.
        430-RTN.
            ACCEPT SALE-QTY LINE 12 POSITION 32.
        440-MODIFY-RTN.
            IF MODIFY-CODE = "1"
               PERFORM 410-RTN
            ELSE
               IF MODIFY-CODE = "2"
                  PERFORM 420-RTN
               ELSE
                  IF MODIFY-CODE = "3"
                     PERFORM 430-RTN
                  END-IF
               END-IF
            END-IF.
        500-CLOSE-FILES.
            CLOSE OUT-FILE.
