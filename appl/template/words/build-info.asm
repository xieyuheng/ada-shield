; ( -- ) System
; R( -- )
; Build Info

.if cpu_msp430==1
    HEADER(XT_TSTAMPINFO,10,"build-info",DOCOLON)
    .dw XT_DOSLITERAL
    .db 21
    .db "Jul 10, 2015 18:43:15"
    .align 16
.endif

.if cpu_avr8==1
VE_TSTAMPINFO:
    .dw $ff0a
    .db "build-info"
    .dw VE_HEAD
    .set VE_HEAD = VE_TSTAMPINFO
XT_TSTAMPINFO:
    .dw DO_COLON
PFA_TSTAMPINFO:
    .dw XT_DOSLITERAL
    .dw 21
    .db "Jul 10, 2015 18:43:15"
.endif
    .dw XT_ITYPE
    .dw XT_EXIT
