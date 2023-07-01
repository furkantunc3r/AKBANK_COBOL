//JBCUR001 JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(PBCUR001),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(PBCUR001),DISP=SHR
//***************************************************/
// IF RC < 5 THEN
//***************************************************/
//RUN       EXEC PGM=PBCUR001
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC   DD DSN=&SYSUID..VSAM.AA,DISP=SHR
//IDXREC    DD DSN=&SYSUID..QSAM.INP,DISP=SHR
//PRTLINE   DD DSN=&SYSUID..QSAM.OUT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,5),RLSE),
//             DCB=(RECFM=FB,LRECL=38,BLKSIZE=0)
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
