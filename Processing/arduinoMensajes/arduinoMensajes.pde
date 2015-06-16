import processing.serial.*;

Serial port;

String puertoUSB = "/dev/tty.usbmodemfa131";
int   bps =    9600;
int valor  = 0;

void setup(){
  size(600, 600);
  smooth();
  port = new Serial(this, puertoUSB, bps);
}

void draw(){
  
  if( port.available() > 0) {
     int valor = port.read();
  
  }
}


void serialEvent(int evento){
   println(evento); 
}
