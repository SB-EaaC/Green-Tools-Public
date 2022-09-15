
0        1         2         3         4         5         6         7
123456789012345678901234567890123456789012345678901234567890123456789012

      * COBOL»y¨¥Â²¤¶
      * Sam0.CBL

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample0.

       AUTHOR.          ¤B¼z¼ü.
       INSTALLATION.    MIS.
       DATE-WRITTEN.    91/07/18.
       DATE-COMPILED.   91/07/18.
       SECURITY.        TOP.
       REMARKS.         CH1.
      *---------------------------------------
       ENVIRONMENT      DIVISION.

       CONFIGURATION    SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
      *---------------------------------------
       DATA             DIVISION.

       FILE             SECTION.

       WORKING-STORAGE  SECTION.

      *---------------------------------------
       PROCEDURE        DIVISION.
       000-BEGIN-RTN.
           DISPLAY " " LINE 1 POSITION 1 ERASE.
           DISPLAY "THIS IS A COBOL PROGRAM !" LINE 10 POSITION 30.
           STOP RUN.
