000100 IDENTIFICATION DIVISION.                                         95/03/22
000200 PROGRAM-ID.    ??????????.                                       95/03/22
000400 AUTHOR.        ??????????.                                       95/03/22
000500 DATE-WRITTEN.                                                    95/03/22
000800*                                                                 95/03/22
000900 ENVIRONMENT DIVISION.                                            95/03/22
001000*                                                                 95/03/22
001100 CONFIGURATION SECTION.                                           95/03/22
001200 SOURCE-COMPUTER. VAX-VMS.                                        95/03/22
001300 OBJECT-COMPUTER. VAX-VMS.                                        95/03/22
001400                                                                  95/03/22
001500 INPUT-OUTPUT SECTION.                                            95/03/22
001700 FILE-CONTROL.                                                    95/03/22
001800     SELECT QUOTN-FILE                                            95/03/22
001900         ASSIGN       TO "FILE.DAT"                      95/03/22
002000         ORGANIZATION IS INDEXED                                  95/03/22
002100         ACCESS MODE  IS DYNAMIC                                  95/03/22
002200         FILE STATUS  IS QUOTN-FILE-STATUS                        95/03/22
002300         RECORD KEY   IS QUOTN-NUM.                               95/03/22

003200 DATA DIVISION.                                                   95/03/22
003300                                                                  95/03/22
003400 FILE SECTION.                                                    95/03/22
003500*                                                                 95/03/22
       FD  QUOTN-FILE. 
003600 COPY CFI_QUOTN.                                                  95/03/22
      *
       FD  CONTR-FILE.
004100 COPY CFI_CONTR.                                                  95/03/22
      *
005000 WORKING-STORAGE SECTION.                                         95/03/22
005100*                                                                 95/03/22
007000 01  QUOTN-FILE-STATUS           PIC X(2).                        95/03/22

013200 PROCEDURE DIVISION.                                              95/03/22
