#include <DS3231.h>
#include <LiquidCrystal_I2C.h>
DS3231 rtc(SDA, SCL);
LiquidCrystal_I2C lcd(0x27,16,2);

void time(){
  lcd.setCursor(0,0);
  lcd.print("Time: ");
  lcd.print(rtc.getTimeStr(1));
}
void temps(){
  lcd.setCursor(0,1);
  lcd.print("Temp: ");
  lcd.print(rtc.getTemp());
  lcd.print("C");
  lcd.print(" ");
  lcd.print(" ");
  delay(3000);
  lcd.setCursor(0,1);
  lcd.print("Date: ");
  lcd.print(rtc.getDateStr(1));
  delay(3000);
  lcd.setCursor(0,1);
  lcd.print("Day: ");
  lcd.print(rtc.getDOWStr());
  lcd.print(" ");
  lcd.print(" ");
  lcd.print(" ");
  lcd.print(" ");
  delay(3000);
}

void setup() {
lcd.backlight();
rtc.begin();
lcd.begin(16,2);
//rtc.setDOW(SATURDAY); // Set Day-of-Week
//rtc.setTime(23, 28, 30); // Set the time to 12:00:00 (24hr format)
//rtc.setDate(19, 12, 2020); // Day, Month, Year
}
 
void loop() {
  time();
  temps();
}
