#line 1 "D:/projectsEmbedded/button/ProjectButton.c"
void main()
{

TRISB = 0x00;
TRISA = 0x1F;
PORTB = 0x00;

do
 {

 if (Button(&PORTA, 0, 100, 1))
 {
 PORTB.F0 = 1;
 }
 if (Button(&PORTA, 1, 100, 1))
 {
 PORTB.F1 = 1;
 }

 if (Button(&PORTA, 2, 100, 1))
 {
 PORTB.F2 = 1;
 }

 if (Button(&PORTA, 3, 100, 1))
 {
 PORTB.F3 = 1;
 }
 if (Button(&PORTA, 4, 100, 1))
 {
 PORTB = 0b11111111;
 }
 } while(1);
}
