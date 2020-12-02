// contact for connecting the analog output of the sensor
int aPin=A0;
// contacts for connecting LED indicators
int ledPins[8]={4,5,6,7,8,9,10,11};
// the variable to store the sensor value
int avalue=0;
// the variable for the number of luminous LEDs
int countled=8;
// full watering value
int minvalue=220;
// critical dryness value
int maxvalue=600;

void setup()
{
 Serial.begin(9600);
 for(int i=0;i<8;i++)
 {
 pinMode(ledPins[i],OUTPUT);
 }
}

void loop()
{
 avalue=analogRead(aPin);
 Serial.print("Humidity:");
 Serial.println(avalue);
 countled=map(avalue,maxvalue,minvalue,0,7);
 for(int i=0;i<8;i++)
 {
 if(i<=countled)
 digitalWrite(ledPins[i],HIGH);
 else
 digitalWrite(ledPins[i],LOW);
 }
 delay(1000);
 }
}
