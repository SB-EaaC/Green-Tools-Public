      **�{���d�ҤQ�T-2 (SAM13-2.CBL):�s�W�B���B�R���\����O�ѤG�ӰƵ{���B�z
      **                              (�L�ǻ��Ѽ�)
      **                             (��� SAM13-1.CBL)

       IDENTIFICATION  DIVISION.
       PROGRAM-ID.     Sample13-2.

       ENVIRONMENT     DIVISION.
       CONFIGURATION   SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      **
       DATA    DIVISION.
       WORKING-STORAGE SECTION.
       01  CHOICE       PIC 9.
      **
       PROCEDURE       DIVISION.
       000-MAIN-RTN.
           PERFORM 100-SCREEN.
           PERFORM 200-CHOICE.
           STOP RUN.
       100-SCREEN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "�\�श��" LINE 5 POSITION 10.
           DISPLAY "1.�s�W����" LINE 7 POSITION 12.
           DISPLAY "2.������" LINE 9 POSITION 12.
           DISPLAY "3.�R������" LINE 11 POSITION 12.
           DISPLAY "INPUT YOUR CHOICE : " LINE 14 POSITION 10.
           ACCEPT CHOICE LINE 14 POSITION 32.
       200-CHOICE.

      **************************************************
      **  ADD-SUB.COB     �N�O  SAM12-5.COB �ק�Ӧ�  **
      **  UP-SUB.COB      �N�O  SAM12-6.COB �ק�Ӧ�  **
      **  DEL-SUB.COB     �N�O  SAM12-7.COB �ק�Ӧ�  **
      **************************************************

           IF CHOICE = 1
              CALL "ADD-SUB"
              CANCEL "ADD-SUB"
           ELSE IF CHOICE = 2
                   CALL "UP-SUB"
                   CANCEL "UP-SUB"
                ELSE IF CHOICE = 3
                        CALL "DEL-SUB"
                        CANCEL "DEL-SUB"
                     END-IF
                END-IF
           END-IF.
