; add_nums - 
; Demonstrates
; how to loop N times
; how to setup an array in memory
; how to use indirect addressing

; Registers:
; R1 - running sum
; R2 - pointer to data
; R3 - next number to be added
; R4 - counter
; Memory:
; x3000 - start of program
; x300A - N_DATA, number of data elements
; x300B - DATA, first data element

        .ORIG x3000    
        AND R1, R1, x0 ; clear R1, running sum
        AND R4, R4, x0 ; clear R4, counter
        LD  R4, N_DATA ; load R4 with number of data points
        LEA R2, DATA   ; load the starting address of the data

LOOP    LDR R3, R2, x0 ; load the next number to be added
        ADD R2, R2, #1 ; increment the pointer
        ADD R1, R1, R3 ; add the next number to the running sum
        ADD R4, R4, #-1 ; decrement the counter
        BRp LOOP       ; do it again if the counter is not yet zero
        HALT           ; halt

N_DATA  .FILL x0A      ; number of data elements
DATA    .FILL x05      ; first data element
        .FILL x07    
        .FILL x09    
        .FILL x0B    
        .FILL x0D    
        .FILL x0F    
        .FILL x11    
        .FILL x13    
        .FILL x15    
        .FILL x17    
        .END
