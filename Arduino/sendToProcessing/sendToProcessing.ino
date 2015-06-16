//LEFT
int pinPienzo0 =  A0;

int LED9 =9;


void setup() {
  Serial.begin(9600);
  
  pinMode(LED9, OUTPUT);
  digitalWrite(LED9, LOW);
}

void loop() {
  int  val = analogRead(pinPienzo0);

  //mandar a processing
  Serial.write(val);

  if (val > 512)
    digitalWrite(LED9, HIGH);
  else
    digitalWrite(LED9, LOW);


}
