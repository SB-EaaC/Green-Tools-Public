
      
      * �d�Ҥ@�G�ù���X��J���� (SAM1.CBL)

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample1.
      *---------------------------------------
       ENVIRONMENT      DIVISION.

       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *---------------------------------------
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       77  NAME-IN      PIC A(6).
       77  BIRTH-IN     PIC 9(6).
       77  ADDR-IN      PIC X(20).
      *---------------------------------------
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "��J�m�W�G"  LINE 5  POSITION 5.
           ACCEPT NAME-IN        LINE 5  POSITION 17.
           DISPLAY "��J�ͤ�G"  LINE 8  POSITION 5.
           ACCEPT BIRTH-IN       LINE 8  POSITION 17.
           DISPLAY "��J�a�}�G"  LINE 11 POSITION 5.
           ACCEPT ADDR-IN        LINE 11 POSITION 17.
           STOP RUN.
