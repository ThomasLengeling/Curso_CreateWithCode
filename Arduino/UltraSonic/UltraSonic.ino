/*
 * created by Rui Santos, http://randomnerdtutorials.com
 *
 * Complete Guide for Ultrasonic Sensor HC-SR04
 *
    Ultrasonic sensor Pins:
        VCC: +5VDC
        Trig : Trigger (INPUT) - Pin11
        Echo: Echo (OUTPUT) - Pin 12
        GND: GND
 */

int trigPin = 11;    //Trig - green Jumper
int echoPin = 12;    //Echo - yellow Jumper
long duration, cm, inches;

void setup() {

  //Serial Port begin
  Serial.begin (9600);

  //Define inputs and outputs
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  
  pinMode(LED_13, OUTPUT);
}

void loop()
{


  digitalWrite(trigPin, LOW);
  delayMicroseconds(5);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  //Leer valors mandados y recibidos
  pinMode(echoPin, INPUT);
  duration = pulseIn(echoPin, HIGH);

  // convertir tiempo a distancia
  cm = (duration / 2) / 29.1;

  if (  cm > 10 ) {
    digitalWrite(LED_13, HIGH);
    int valorMandar = (int)cm;
    Serial.write(valorMandar);
    delay(100);
  }else{
    digitalWrite(LED_13, LOW);
  }


  //imprimir distancia del objeto
  //Serial.print(cm);
  //Serial.print("cm");
  //Serial.println();

  //delay(250);
}
