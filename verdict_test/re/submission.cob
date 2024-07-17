        IDENTIFICATION DIVISION.
        PROGRAM-ID. SUBMISSION.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 RESULT PIC 9(10).
        01 DIVISOR PIC 9 VALUE 0.

        PROCEDURE DIVISION.
            IF DIVISOR = 0 THEN
                DISPLAY "Attempting division by zero..."
                COMPUTE RESULT = 1 / DIVISOR
            END-IF
            STOP RUN.
