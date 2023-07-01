//JBEG0005 JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(PBEG0005),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(PBEG0005),DISP=SHR
//***************************************************/
// IF RC < 5 THEN
//***************************************************/
//RUN     EXEC PGM=PBEG0005
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC   DD DSN=&SYSUID..QSAM.BB,DISP=SHR
//PRTLINE   DD DSN=&SYSUID..LDAYS.OUTPUT,DISP=(MOD,CATLG,DELETE),
//             SPACE=(CYL,(10,5))
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
