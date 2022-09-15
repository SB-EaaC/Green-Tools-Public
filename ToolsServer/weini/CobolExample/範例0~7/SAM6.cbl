

     ** 程式範例 六 (SAM6.CBL)
     ** 接收功能鍵；IF...ELSE...END-IF

       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      Sample6.

      *******************************************************************
      *                                                                 *
      * 本程式由鍵盤輸入資料後，逐一檢查各明細項目：                    *
      *   1.客戶編號第一位為大寫英文字母，第二至第四位為數值型態資料    *
      *   2.客戶姓名不可為空白                                          *
      *   3.電話號碼為數值型態                                          *
      *   4.信用額度僅可為 0、100000、200000、300000 及 400000          *
      *   5.在輸出檔案錯誤欄位前加註 *                                  *
      * 按下 [ESC] 鍵代表結束輸入工作                                   *
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
           05 FILLER       PIC X(17) VALUE "客 戶 明 細 報 表".
           05 FILLER       PIC X(37) VALUE ALL SPACES.
       01  HEADING2.
           05 FILLER       PIC X(8)  VALUE "客戶編號".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(8)  VALUE "客戶姓名".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "地址".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(4)  VALUE "電話".
           05 FILLER       PIC X(3)  VALUE ALL SPACES.
           05 FILLER       PIC X(8)  VALUE "信用額度".
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
           DISPLAY "客戶編號"  LINE  5 POSITION 15.
           DISPLAY "客戶姓名"  LINE  7 POSITION 15.
           DISPLAY "    地址"  LINE  9 POSITION 15.
           DISPLAY "    電話"  LINE 11 POSITION 15.
           DISPLAY "信用額度"  LINE 13 POSITION 15.
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
           DISPLAY "[ESC]跳離，其餘鍵繼續 !" LINE 22 POSITION 15.
           ACCEPT CONTI LINE 22 POSITION 40 ON EXCEPTION FUNC-KEY.
       400-CLOSE-FILE.
           CLOSE OUT-FILE.

      * 常用功能鍵之ASCII碼值為：
      *
      *      [Return]：13
      *      [Esc]：27
      *      [F1~F10]：01~10
      *      [TAB]：09
      *      [Shift+TAB]：56
      *      [Up arrow]：52
      *      [Down arrow]：53
      *      [Pg-Up]：67
      *      [Pg-Down]：68
      *      [Home]：54
      *      [End]：82


