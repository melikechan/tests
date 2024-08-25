        IDENTIFICATION DIVISION.
        PROGRAM-ID. SUBMISSION.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 N PIC 9(8) VALUE 0.
        01 I PIC 9(8) VALUE 0.
        01 MAXINDEX PIC 9(8) VALUE 0.
        01 MAXELEMENT PIC S9(8) VALUE -99999999.
        01 ARR PIC 9(8) OCCURS 1000 TIMES.

        PROCEDURE DIVISION.
            ACCEPT N.

            PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
                ACCEPT ARR(I)
            END-PERFORM.

            PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
                IF ARR(I) > MAXELEMENT
                    MOVE ARR(I) TO MAXELEMENT
                    MOVE I TO MAXINDEX
                END-IF
            END-PERFORM.

            DISPLAY -1
            STOP RUN.
