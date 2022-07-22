
_main:

;ProjectButton.c,1 :: 		void main()
;ProjectButton.c,4 :: 		TRISB = 0x00; // all PORTB set as output
	CLRF       TRISB+0
;ProjectButton.c,5 :: 		TRISA = 0x1F; // all PORTA set as input
	MOVLW      31
	MOVWF      TRISA+0
;ProjectButton.c,6 :: 		PORTB = 0x00; // initialization of PORTB to 0
	CLRF       PORTB+0
;ProjectButton.c,8 :: 		do
L_main0:
;ProjectButton.c,11 :: 		if (Button(&PORTA, 0, 100, 1))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;ProjectButton.c,13 :: 		PORTB.F0 = 1; // RB0 is high or on
	BSF        PORTB+0, 0
;ProjectButton.c,14 :: 		}
L_main3:
;ProjectButton.c,15 :: 		if (Button(&PORTA, 1, 100, 1))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;ProjectButton.c,17 :: 		PORTB.F1 = 1; // RB1 is high or on
	BSF        PORTB+0, 1
;ProjectButton.c,18 :: 		}
L_main4:
;ProjectButton.c,20 :: 		if (Button(&PORTA, 2, 100, 1))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;ProjectButton.c,22 :: 		PORTB.F2 = 1; // RB2 is high or on
	BSF        PORTB+0, 2
;ProjectButton.c,23 :: 		}
L_main5:
;ProjectButton.c,25 :: 		if (Button(&PORTA, 3, 100, 1))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;ProjectButton.c,27 :: 		PORTB.F3 = 1; // RB3 is high or on
	BSF        PORTB+0, 3
;ProjectButton.c,28 :: 		}
L_main6:
;ProjectButton.c,29 :: 		if (Button(&PORTA, 4, 100, 1))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main7
;ProjectButton.c,31 :: 		PORTB = 0b11111111; // RB3 is high or on
	MOVLW      255
	MOVWF      PORTB+0
;ProjectButton.c,32 :: 		}
L_main7:
;ProjectButton.c,33 :: 		} while(1); // end of the endless loop
	GOTO       L_main0
;ProjectButton.c,34 :: 		} // end of the program
L_end_main:
	GOTO       $+0
; end of _main
