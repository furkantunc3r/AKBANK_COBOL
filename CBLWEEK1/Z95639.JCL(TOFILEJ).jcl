//TOFILEJ JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(TOFILE),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(TOFILE),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=TOFILE
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC   DD DSN=&SYSUID..DATA,DISP=SHR
//***************************************************/
//* Here we change the DISP parameter.
//* NEW dataset, CATLG on success, DELETE on fail.
//* And we also allocate 10 CYL of space. 5 on reserve if needed.
//***************************************************/
//PRTLINE   DD DSN=&SYSUID..MY1.OUTPUT,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5))
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
