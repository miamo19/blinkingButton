void main()
{
 /////// Initializations ///////
TRISB = 0x00; // all PORTB set as output
TRISA = 0x1F; // all PORTA set as input
PORTB = 0x00; // initialization of PORTB to 0
/////// Definition of the endless loop in which the program will be permanently running //// ///////
do
 {
 //Program to be executed
 if (Button(&PORTA, 0, 100, 1))
 {
 PORTB.F0 = 1; // RB0 is high or on
 }
 if (Button(&PORTA, 1, 100, 1))
 {
 PORTB.F1 = 1; // RB1 is high or on
 }

 if (Button(&PORTA, 2, 100, 1))
 {
 PORTB.F2 = 1; // RB2 is high or on
 }

 if (Button(&PORTA, 3, 100, 1))
 {
 PORTB.F3 = 1; // RB3 is high or on
 }
 if (Button(&PORTA, 4, 100, 1))
 {
 PORTB = 0b11111111; // RB3 is high or on
 }
 } while(1); // end of the endless loop
} // end of the program