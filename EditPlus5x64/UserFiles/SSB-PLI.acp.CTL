#TITLE=SSB-PL/I
#INFO
PL/I 2006.06 V1.0
EditPlus  auto completion file.
Author: Sun shubin 
TEL:86-(0)13840939258
MAIL:DLSHUBIN@163.COM
HOMEPAGE: www.learnstorm.com
#SORT=n

#T=****HOT****
****HOT****
#T=/*
/*  ****  */
#T=/*3
/************************/
/*  ****                */
/************************/
#T=proc
$******: PROC(PARM) OPTIONS(MAIN);  

END $******;

#T=INCLUDE
%INCLUDE SYSLIB2(SMONERR1);

#T=***data attribute***
***data attribute***
#T=DECLARE
DCL(variable) [attribute1][attribute2]…[attributen]，
   (variable) [attribute1][attribute2]…[attributen]
#T=DCL CHARACTER 
DCL ****  CHARACTER(*) 
#T=DCL BIT
DCL ** BIT(9) INIT('0'B);
#T=DCL BASED
DCL **** CHAR(151) BASED(ADDR(*****));
#T=DCLto
DCL  variablename  (界限, [界限], …,[界限]) [attribute][attribute]…[attribute]；
#T=DCLPrint
DECLARE *****   PRINT;
#T=DCLSYSPrint
DCL SYSPRINT           STREAM OUTPUT;           /* SYSPRINT          */
#T=PIC
PIC
#T=PICTURE
PICTURE
#T=VAR
VAR
#T=VARYING
VARYING
#T=FDEC
FIXED DEC
#T=FIXED
FIXED DECLMAL

#T=GRAPHIC
GRAPHIC
#T=INIT
INIT(*.*)
#T=date
date
#T=value
value(*)
#T=X
X
#T=B
B
#T=B3
B3
#T=B4
B4
#T=B4
B4
#T=GX
GX
#T=****IO****
****IO****
#T=get list
GET LIST   (variable,variable)；
#T=put list
PUT LIST(variable,variable)；

#T=GET EDIT
GET EDIT(variable,variable) (格式列);

#T=PUT EDIT
PUT EDIT (variable,variable) (格式列);

#T=PUT DATA
PUT DATA (variable,variable) (格式列);

#T=****logic****


#T=ifelse
IF expression 
THEN Statement 1
                
ELSE  Statement 2
Statement 3

#T=SELECT
SELECT (??)
    WHEN(?,?,?)?;
    WHEN(?,?,?)?;
    [OTHERWISE      ?]
END;

#T=go to
GO TO ??

#T=loop
LOOP  

GOTO LOOP

#T=DO
DO
     
END;

#T=DO WHILE
DO WHILE 忦審
    
END;

#T=DO UNTIL
DO UNTIL 忦審
    
END;

#T=DOto
DO variable=弶? [ TO ??] [BY ??]
      
END;

#T=DObyUNTIL
DO variable=弶? TO ?? BY ?? 
                  UNTIL  忦審昞?幃
   ?嬪?
END;

#T=LEAVE
LEAVE

#T=----ON----
----ON----
#T=ON ERROR
ON ERROR ****                         
   BEGIN;                             
      ON ERROR                        
         CALL PLIREST;                
      PUT FILE(SYSPRINT) SKIP LIST    
         ('$AIRP19 ** ABNORMAL END'); 
      PUT FILE(SYSPRINT) SKIP DATA;   
      CALL PLIREST;                   
   END;                               

#T=ON ENDFILE
ON ENDFILE(INF1)
   BEGIN;                             
        EOF_INF1='1'B;
   END;                               


#T=----FILE----
----FILE----
#T=DECLARE
DECLARE ***  FILE  *****丟



#T=OPEN FILE
OPEN FILE(****1) ****,
     FILE(****2) ****;

#T=CLOSE FILE
CLOSE FILE(****1),
      FILE(****2);

#T=STREAM
STREAM
#T=RECORD
RECORD
#T=INPUT
INPUT
#T=OUTPUT
OUTPUT
#T=UPDATE
UPDATE
#T=PRINT
PRINT

#T=READ FILE
READ FILE(暥審柤) INTO (變數名稱)；

#T=WRITE FILE
WRITE FILE(暥審柤) FROM (??柤)


#T=GET FILE
GET FILE(文件脕E [SKIP] EDIT(变量1,变量2….)(格式1,格式2….);

#T=-----SQL-----
-----SQL-----
#T=SQL  SELECT
EXEC    SQL  SELECT COUNT(*)        
INTO :COUNT_TABLE_TINP1            
FROM LAI.PHWP_PAMTBL                      
WHERE PARTNO1 = :IN_INF1.MFGPNO1;

#T=SQL   UPDATE
EXEC SQL   UPDATE FFF01.FFFT014  
             SET   SEQNO     = 1,  
                   JOBSTS    = 'P',  
                   JOBDSC    = 'JOB IN PROCESS',   
                   LUPUSR    = '$FFFSET ' ,  
                   LUPTIM    = CURRENT TIMESTAMP   
             WHERE JOBNM     = :FFFT014.JOBNM;  

#T=COMMIT;
EXEC SQL COMMIT;
#T=SQLCODE
IF SQLCODE   = 0 THEN 

ELSE

END;
#T=----subprogram----
----subprogram----
#T=new proc
$******: PROC(PARM) OPTIONS(MAIN); 

END $******;
#