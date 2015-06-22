//LEFT
int pinPienzo0 =  A0;

int LED9 =9;


void setup() {
  Serial.begin(9600);
  
  pinMode(LED9, OUTPUT);
  digitalWrite(LED9, LOW);
}

void loop() {
  //valores -> 0, 1023
  int  val = analogRead(pinPienzo0);

  //mandar a processing
 // Serial.println(val);
  Serial.write(val);
  delay(100);
  
  
  //Serial.write(val);

  if (val > 512)
    digitalWrite(LED9, HIGH);
  else
    digitalWrite(LED9, LOW);


}
