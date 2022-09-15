
      * 範例二-1：計算 1+2+...+10 之和
      *           PERFORM...N TIMES(SAM21.CBL)

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      SAMPLE21.
      *
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       77  I            PIC 9(2).
       77  I-SUM        PIC 9(2)  VALUE 0.
      *
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           MOVE 1 TO I.
           PERFORM 100-LOOP-RTN 10 TIMES.
           PERFORM 200-DISPLAY-RTN.
           STOP RUN.
       100-LOOP-RTN.
           COMPUTE I-SUM = I-SUM + I.
           COMPUTE I = I + 1.
       200-DISPLAY-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "1+2+...+10 = " LINE 10 POSITION 10.
           DISPLAY I-SUM LINE 10 POSITION 26.
