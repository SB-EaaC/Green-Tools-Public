      ** �{���d�ҤK-2 (SAM8-2.CBL):�p�� 1+2+3+...+N ���`�M
      ** PERFORM....VARYING (��� PERFORM...UNTIL)

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample8-2.

       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
     **--------------------------------------
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       77  N            PIC 9(3)  VALUE 0.
       77  I            PIC 9(4).
       77  TOT-SUM      PIC 9(6)  VALUE 0.
       77  TOT-DISPLAY  PIC ZZZZZ9.
     **--------------------------------------
       PROCEDURE        DIVISION.
       0000-BEGIN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "�п�J�[�`�ܨ��@�Ʀr ?" LINE 5 POSITION 10.
           ACCEPT N  LINE 5 POSITION 35.
           PERFORM 1000-ADD-RTN VARYING I FROM 1 BY 1 UNTIL I > N.
           MOVE TOT-SUM TO TOT-DISPLAY.
           DISPLAY TOT-DISPLAY  LINE 8 POSITION 20.
           STOP RUN.
       1000-ADD-RTN.
           ADD I TO TOT-SUM.
