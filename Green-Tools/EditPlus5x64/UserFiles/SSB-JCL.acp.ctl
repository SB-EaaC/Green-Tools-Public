#TITLE=SSB-JCL
#INFO
IBM MVS JCL 2006.07 V1.0
EditPlus WEB auto completion file.
Author: Sun shubin 
TEL:86-(0)13840939258
MAIL:DLSHUBIN@163.COM
HOMEPAGE: www.learnstorm.com

#SORT=n

#T=****B****
****B****
#T=PROGM1
//STEP EXEC PROGM1,UT=3380,VOL1=SMS001,SOUT='*',SYM='TM=&TM'     
 SCRATCH DSN=EX10I.IDS.RGIFX&TM,VOL=&UT=&VOL1,PURGE              
 SCRATCH DSN=EX10I.IDS.RGIFXX&TM,VOL=&UT=&VOL1,PURGE             
 SCRATCH DSN=EX10I.IDS.RGIF&TM,VOL=&UT=&VOL1,PURGE               
 SCRATCH DSN=EX10I.IDS.RASCA&TM,VOL=&UT=&VOL1,PURGE              
/*                                                               

#T=****IBM****
****IBM****
#T=PLI RUN
//EV6186V1 JOB (F9500B,FF67,31),EV6186V1,                     
//             CLASS=A,NOTIFY=EV6186,                         
//             MSGCLASS=X,MSGLEVEL=(1,1),REGION=4096K         
//DEL01  EXEC PROGM1,UT=3380,VOL1=SMS001                      
       SCRATCH DSN=EV6186.DS.SDTC.XONLYV1,VOL=&UT=&VOL1,PURGE 
//EX10V1   EXEC PGM=EX10BV1                                   
//STEPLIB  DD  DSN=EX10I.DEVLIB1.LMOD,DISP=SHR                
//SYSPRINT DD  SYSOUT=*                                       
//PLIDUMP  DD  SYSOUT=*                                       
//INF1     DD  DSN=EX10I.E31452.D060710.MATCH.TEST1,DISP=SHR  
//INF2     DD  DSN=EV6186.DS.CRWET0.HONBAN.TEST1,DISP=SHR     
//OUTF1    DD  DSN=EV6186.DS.SDTC.XONLYV1,DISP=(,CATLG),      
//             DCB=(RECFM=FB,LRECL=39,BLKSIZE=3900),          
//             SPACE=(CYL,(100,100),RLSE)    


DEL      ?œ?—
STEPLIB  LMOD˜HŒa
SYSPRINT  Œn?‘Åˆó
PLIDUMP   
INF1,•K?˜aPLI“à•”•¶Œ–¼ˆê’vC“ü—Í•¶Œ
OUTF1,?—•¶ŒCLRECL=???“xC
#T=---SCRATCH---
---SCRATCH---
#T=M-****SCR
//**********************************************************************
//*        SCRATCH
//**********************************************************************
//SCR01   EXEC EX10SCR,DSN='EX10I.DS.EX10VCX',
//             ENT=20,SYM='RUNNO=&RUNNO'
//SYSIN  DD *
*DSN=EX10I.DS.SDTC.XONLY&RUNNO
*DSN=EX10I.DS.SDTC.SEQ&RUNNO
*DSN=EX10I.DS.SDTC.LOAD&RUNNO
/*
//*---------------------------------------------------------------------
//SCR02   EXEC PROGM1,UT=3380,VOL1=SMS001
//SYSIN    DD  DSN=&&PROGMX,DISP=(OLD,DELETE)
//*---------------------------------------------------------------------
#T=M-MSSSCR2
//SCRATCH EXEC MSSSCR2
  DSN=EX10I.DS.SDTC.UNLD
  DSN=EX10I.DS.SDTC.DELTA
  DSN=EX10I.DS.SDTC.LOAD
  DSN=EX10I.DS.SDTC.LOAD.SJIS
/*
#T=---NEWSORT---
---NEWSORT---
#T=”r˜
//EV6186V1 JOB (F9500B,FF67,31),EV6186V1,                   
//             CLASS=A,NOTIFY=EV6186,                       
//             MSGCLASS=X,MSGLEVEL=(1,1),REGION=4096K       
//SORT10  EXEC NEWSORT,SOUT='*',SP=10                       
//SORTIN   DD  DSN=EX10I.E31452.D060710.MATCH.TEST,DISP=SHR 
//SORTOUT  DD  DSN=EX10I.E31452.D060710.MATCH.TEST1,        
//             DCB=(RECFM=FB,LRECL=151,BLKSIZE=15100),      
//             SPACE=(TRK,(80,40),RLSE),                    
//             DISP=(,CATLG)                                
 SORT FIELDS=(115,7,CH,A)                                   

?–¾
NEWSORT    ”r˜’ö˜–¼
SORTIN    ?“ü•¶Œ
SORTOUT ?o•¶Œ 
LRECL   ???“x          
BLKSIZE  ?‘å¬C??“I”{”
SPACE   
SORT FIRLDS (”r˜‹NŽnŽš?”C”r˜??“xCC)  

#T=M-OUTREC
//BV1BS2   EXEC NEWSORT,SOUT='*',SP='50,10'
//SORTIN   DD DSN=KC60I.DS.SDTC.XONLY,DISP=SHR
//SORTOUT  DD DSN=&&XONLYSUM,DISP=(,PASS),
//            DCB=(RECFM=FB,LRECL=18,BLKSIZE=27990),
//            SPACE=(CYL,(5,1),RLSE)
  SORT FIELDS=(9,7,CH,A)
  SUM FIELDS=NONE
  OUTREC FIELDS=(1,18)
/*
#T=M-select-INCLUDE
//BV0BS2   EXEC NEWSORT,SOUT='*',SP='50,10'
//SORTIN   DD DSN=EX10I.E31452.EX10.DS.UNLDM1.D0815,DISP=SHR
//SORTOUT  DD DSN=&&UNLDM1,DISP=(,PASS),
//            SPACE=(CYL,(50,10),RLSE)
  SORT FIELDS=(1,8,CH,A)
  INCLUDE COND=(9,1,CH,EQ,C'Q')
/*
#T=IEBGENER
//COPY01   PROC
//BV3AS1   EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=EX10I.DS.SDTC.LOAD,DISP=SHR
//SYSUT2   DD DSN=EX10I.DS.SDTC.LOAD&RUNNO,DISP=(,CATLG),
//            DCB=*.SYSUT1,
//            SPACE=(CYL,(5,1),RLSE)
//SYSIN    DD DUMMY
//         PEND
//COPYBK   EXEC COPY01,RUNNO=&RUNNO

#T=M-CONVERT-SJIS
‚±‚Ì•Ó‚ðŽQl‚ÉB                                                        
//*******************************************************************   
//* STEP2 :   2..4 CONV AND CHECKSUM                                    
//*******************************************************************   
//*******************************************************************   
//** **************************************************************** **
//**  STEP2:EBCIC -> S-JIS CONV   EBCDI:IBM-939  SJIS:IBM-943           
//**                                           IBM-943 PC (NEW SJIS)    
//**                IBM-939 EBCDIC EXTEND ENG  IBM-932 PC (SJIS)        
//**                IBM-930 EBCDIC EXTEND KANA IBM-850 PC Latin1 (ASCII)
//**                IBM-037 EBCDIC Latin1      IBM-eucJP EUC Japanese   
//** **************************************************************** **
//ICONV   PROC                                                          
//ICONVX  EXEC PGM=EDCICONV,                                            
//             PARM='FROMCODE(IBM-939),TOCODE(IBM-943)'                 
//*----------------- HOST IBM CODE ---------- PC,6000 CODE -------------
//STEPLIB  DD  DSN=SYS1.SCEERUN,DISP=SHR                                
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUT1   DD  DUMMY                                                    
//SYSUT2   DD  DUMMY                                                    
//SYSIN    DD  DUMMY                                                    
//     PEND                                                             
//********************************************************************  
//*   STEP2-1:ICONV                                                     
//********************************************************************  
//ICONVJ  EXEC ICONV,TD=&TD                                             
//SYSUT1   DD  DSN=FM50.DS.UNLDJDB.H&TD,DISP=SHR                        
//SYSUT2   DD  DSN=&&ICONVJ,DISP=(,PASS),                               
//             UNIT=(DISK2,3),SPACE=(CYL,(200,70),RLSE),                
//             DCB=(RECFM=VB,LRECL=5800,BLKSIZE=23200)                  
//SYSIN    DD  DUMMY                                                    
                        
                        
                        
                        
                        
                                                                        
                                                                        
//*******************************************************************   
//* STEP2 :   2..4 CONV AND CHECKSUM                                    
//*******************************************************************   
//*******************************************************************   
//** **************************************************************** **
//**  STEP2:EBCIC -> S-JIS CONV   EBCDI:IBM-939  SJIS:IBM-932           
//**                IBM-939 EBCDIC EXTEND ENG  IBM-932 PC (SJIS)        
//**                IBM-930 EBCDIC EXTEND KANA IBM-850 PC Latin1 (ASCII)
//**                IBM-037 EBCDIC Latin1      IBM-eucJP EUC Japanese   
//** **************************************************************** **
//ICONV   PROC                                                          
//ICONVX  EXEC PGM=EDCICONV,                                            
//             PARM='FROMCODE(IBM-939),TOCODE(IBM-932)'                 
//*----------------- HOST IBM CODE ---------- PC,6000 CODE -------------
//STEPLIB  DD  DSN=SYS1.SCEERUN,DISP=SHR                                
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUT1   DD  DUMMY                                                    
//SYSUT2   DD  DUMMY                                                    
//SYSIN    DD  DUMMY                                                    
//     PEND                                                             
//********************************************************************  
//*   STEP2-1:ICONV                                                     
//********************************************************************  
//ICONVJ  EXEC ICONV                                                    
//SYSUT1   DD  DSN=&&TMP8,DISP=(OLD,DELETE)                             
//SYSUT2   DD  DSN=&&TMP9,DISP=(,PASS),                                 
//             SPACE=(CYL,(300,100),RLSE),                              
//             UNIT=(DISK2,3),                                          
//             DCB=(RECFM=VB,LRECL=1124,BLKSIZE=26976)                  
//SYSIN    DD  DUMMY                                                    
//********************************************************************  
//ABND010 EXEC PGM=UABEND,COND=(4,GE,ICONVJ.ICONVX)                     
//*                                                                     
//********************************************************************* 
//* VB TO FB CONVERSION                                                 
//********************************************************************* 
//GENER   PROC                                                          
//GENER   EXEC PGM=ICEGENER                                             
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUT1   DD  DUMMY                                                    
//SYSUT2   DD  DUMMY                                                    
//SYSIN    DD  DUMMY                                                    
//     PEND                                                             
//*                                                                     
//VB2FB   EXEC GENER                                                    
//SYSUT1   DD  DSN=&&TMP9,DISP=(OLD,DELETE)                             
//SYSUT2   DD  DSN=&&LC43,                                              
//             DISP=(,PASS),                                            
//             SPACE=(CYL,(300,100),RLSE),                              
//             UNIT=(DISK2,3),                                          
//             DCB=(RECFM=FB,LRECL=1120,BLKSIZE=26880)                  
//SYSIN    DD  *                                                        
  GENERATE MAXFLDS=20,MAXLITS=20                                        
    RECORD FIELD=(1120,1,,1)                                            
//*                                                                     
                                                                        
#T=M-VB TO FB
//*-------------------------------------------------------------------
//*       VB TO FB CONVERSION
//*--------------------------------------------------------------------
//JISFB    EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=&&ICONVJS,DISP=(OLD,DELETE)
//SYSUT2   DD DSN=EX10I.DS.SDTC.LOAD.SJIS,DISP=(,CATLG),
//            DCB=(RECFM=FB,LRECL=44,BLKSIZE=0),
//            SPACE=(CYL,(5,1),RLSE)
//SYSIN    DD *
  GENERATE MAXFLDS=20,MAXLITS=20
  RECORD FIELD=(44,1,,1)
/*
#T=M-IKJEFT01
//XMIT     EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//TXT      DD DISP=SHR,DSN=EX10I.DS.SDTC.XMIT
//SYSTSIN  DD *
  XMIT IBMJP.TATTU  DDNAME(TXT) NOLOG


#T=****job****
****job****
#T=M-JOB
//EV6186V  JOB (F9500B,EX10,41,'RUNNO=001,LRUNNO=000'),EV6186V,
//           CLASS=A,NOTIFY=EV6186,
//           MSGCLASS=R,MSGLEVEL=(1,1),REGION=4096K
#T=JOB
//***** JOB
#T=ADDRSPC
ADDRSPC={VIRT^!}
        {REAL}
#T=BYTES
,BYTES={nnnnn}^!
#T=CLASS
,CLASS=^!
#T=MSGCLASS
,MSGCLASS=^!
#T=MSGLEVEL
,MSGLEVEL=^!
#T=NOTIFY
,NOTIFY=^!
#T=PRTY
,PRTY=^!
#T=REGION
,REGION=^!
#T=TIME
,TIME=^!
#T=TYPRUN
,TYPRUN=^!
#T=****EXEC****
****EXEC****
#T=M-PROC
//EX10BV1  PROC
//BV1M     EXEC PGM=EX10BV1
//STEPLIB  DD DSN=EX10I.DEVLIB1.LMOD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//PLIDUMP  DD SYSOUT=*
//INF1     DD DSN=&&UNLD,DISP=(OLD,DELETE)
//INF2     DD DSN=&&XONLYSUM,DISP=(OLD,DELETE)
//OUTF1    DD DSN=EX10I.DS.SDTC.XONLY&RUNNO,DISP=(,CATLG),
//            DCB=(RECFM=FB,LRECL=164,BLKSIZE=27880),
//            SPACE=(CYL,(20,5),RLSE)
//         PEND
//ST010    EXEC EX10BV1,RUNNO=&RUNNO
#T=EXEC
//******  EXEC 
#T=PGM
PGM=^!
#T=PROC
PROC=^!
#T=ACCT
ACCT=^!
#T=ADDRSPC
ADDRSPC=^!
#T=REGION
REGION
#T=TIME
TIME=^!
#T=COND
COND=^!
#T=PARM
PARM=
#T=****DD****
****DD****
#T=M-DD
//*****    DD DSN=EX10.DS.SDTC.XONLY&RUNNO,DISP=(,CATLG),
//            DCB=(RECFM=FB,LRECL=164,BLKSIZE=27880),
//            SPACE=(CYL,(20,5),RLSE)
#T=DD
//*******   DD 
#T=DUMMY
DUMMY^!
#T=UNIT
DUMMY^!
#T=VOLUME
VOLUME^!
#T=SPACE
SPACE^!
#T=DISP
DISP=^!
#T=SHR
SHR,^!
#T=DSN
DSN=^!
#T=DCB
DCB=(RECFM=FB,LRECL=**,BLKSIZE=**)
#T=SYSOUT
SYSOUT^!

#