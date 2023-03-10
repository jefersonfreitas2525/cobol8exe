       IDENTIFICATION DIVISION.
       PROGRAM-ID. B.
       AUTHOR. JEFERSON.
       INSTALLATION. FATEC.
       DATE-WRITTEN. 27/02/2023.
       DATE-COMPILED.
       SECURITY.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBMPC.
       OBJECT-COMPUTER. IBMPC.
       SPECIAL-NAMES.  DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       77 BASEMAIOR PIC 999V99.
       77 BASEMENOR PIC 999V99.
       77 ALTURA    PIC 999V99.
       77 AREAA     PIC 9999V99.

       SCREEN SECTION.

       01  TELA.
           02 BLANK SCREEN.
           02 LINE 3 COL 20 VALUE "CALCULAR AREA DO TRAPÉZIO".

       01  TELA-PRINCIPAL.
           02 LINE 5 COL 20 VALUE 'DIGITE O VALOR DA BASE MAIOR:'.
           02 LINE 6 COL 20 VALUE 'DIGITE O VALOR DA BASE MENOR:'.
           02 LINE 7 COL 20 VALUE 'DIGITE O VALOR DA ALTURA'.
           02 LINE 9 COL 20 VALUE 'A AREA DO TRAPEZIO E:'.

       01  TELA-BASEMAIOR.
           02 LINE 5 COL 50 PIC 999,99 TO BASEMAIOR.
       01  TELA-BASEMENOR.
           02 LINE 6 COL 50 PIC 999,99 TO BASEMENOR.
       01  TELA-ALTURA.
           02 LINE 7 COL 45 PIC 999,99 TO ALTURA.
       01  TELA-RESULT.
           02 LINE 9 COL 42 PIC 9999,99 FROM AREAA REVERSE-VIDEO.

       PROCEDURE DIVISION.
           DISPLAY ERASE.
           DISPLAY TELA.
           DISPLAY TELA-PRINCIPAL.

           PERFORM PRINCIPAL.

       PRINCIPAL.
           ACCEPT TELA-BASEMAIOR.
           ACCEPT TELA-BASEMENOR.
           ACCEPT TELA-ALTURA.

           COMPUTE AREAA = ((BASEMAIOR+BASEMENOR)*ALTURA)/2.

           DISPLAY TELA-RESULT.
