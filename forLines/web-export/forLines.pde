int incremento = 0;
int incrementoRojo = 0; //inicial

void setup(){
  size(500, 500); 
}

void draw(){
  background(0);

  //i++ -> i = i +1
  stroke(incrementoRojo, 0, incremento*10);
  for(int i = 0; i < 10; i = i + 1){
    line(100 + incrementoRojo, 50 + i*incremento, 400 + incrementoRojo, 50 + i*incremento);
  }
  
  incremento =  incremento + 1;
  if(incremento > 50){
   incremento =0; 
  }
  
  incrementoRojo = incrementoRojo + 1;
  if(incrementoRojo > 200){ //limite
    incrementoRojo = 0;
  }
  
}

