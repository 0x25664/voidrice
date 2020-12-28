#include <DS3231.h>
#include <LiquidCrystal_I2C.h>
#include <Wire.h>

DS3231 clock(SDA, SCL);
LiquidCrystal_I2C lcd(0x27,16,2);

void toprow(){
	lcd.setCursor(0,0);
	lcd.print("Time: ");
	lcd.print(clock.getTimeStr(1));
}

void bottomrow(){
	lcd.setCursor(0,1);
	lcd.print("Temp: ");
	lcd.print(clock.getTemp());
	lcd.print("C");
	lcd.print(" ");
	lcd.print(" ");
  lcd.print(" ");
  lcd.print(" ");
	delay(3000);
  
	lcd.setCursor(0,1);
	lcd.print("Day: ");
	lcd.print(clock.getDOWStr());
  lcd.print(" ");
	delay(3000);

  lcd.setCursor(0,1);
  lcd.print("Date: ");
  lcd.print(clock.getDateStr(1));
  delay(3000);
}

void setup() {
  clock.begin();
  lcd.backlight();
  lcd.init();
  //clock.setDOW(1); // Set Day-of-Week
  //clock.setTime(22, 50, 50); // Set the time to 12:00:00 (24hr format)
  //clock.setDate(20, 12, 2020); // Day, Month, Year
}

void loop() {
	toprow();
	bottomrow();
}
