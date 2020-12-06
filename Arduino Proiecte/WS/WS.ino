int SensorValue;
int Sensorpin = 7;

void setup() {
				pinMode(Sensorpin, INPUT);
				Serial.begin(9600);
}

void loop() {
				SensorValue = digitalRead(Sensorpin);
				Serial.print(SensorValue);
        Serial.print("\n");
				delay(1000);
}
