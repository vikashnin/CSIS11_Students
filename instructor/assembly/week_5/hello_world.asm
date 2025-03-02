; hello_world
; Demonstrates:
; how to store a string for output
; how to output a string

; Registers:
; R0 - address of string, required by PUTS
; Memory:
; x3000 - start of program
; x3003 - HW, string to output

    .ORIG x3000
    LEA R0, HW  ; load address of string
    PUTS        ; output string to console
    HALT        ; end program
HW  .STRINGZ "Hello World!"
    .END
