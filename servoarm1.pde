//SERVO arm only any  3 motor work delay to  26 for stable movement 
//

import processing.io.*;
SoftwareServo servo;
//  GPIO: 13,19,26,21

float angle1=175;
float angle2=0;
float angle3=90;
float angle4=175;
int y=26;// delay
int z=5;// incriment angle
void setup()
{
  servo= new SoftwareServo(this);
  servo.attach(21);//base0-180 min-max angle
  servo.attach(26);//arm 0-180
  servo.attach(19);//90-175 rotat
  servo.attach(13);//100-175 hand
}
void draw() {
  //servo.detach();

  servo.attach(21);//base 0-170
  servo.write(angle1); 
  delay(y);

  servo.attach(26);//arm 0-180
  servo.write(angle2);
  delay(y);


//  servo.attach(19);//rotate 0-180
//  servo.write(angle3);
//  delay(y);


  servo.attach(13);//arm 0-180
  servo.write(angle4);
  delay(y);


  println (angle1);
  println (angle2);
  println (angle3);
  println (angle4);
}   
void keyRelesed() {
  servo.detach();
}

void keyPressed() {
  if (keyPressed) {

    if (key == 'a' || key =='A') {
      if (angle1<170) {
        angle1 += z;
      }
    } else if (key == 'q' || key =='Q') {
      if (angle1>=4) {
        angle1 -= z;
      }
    } else if (key == 'w' || key =='W') {
      if (angle2<180) {
        angle2 += z;
      }
    } else if (key == 'S' || key =='s') {
      if (angle2>=4) {
        angle2 -= z;
      }
    } else if (key == 'E' || key =='e') {
      if (angle3<180) {
        angle3 += 10;
      }
    } else if (key == 'D' || key =='d') {
      if (angle3>=90) {
        angle3 -= 10;
      }
    } else if (key == 'r' || key =='R') {
      if (angle4<180) {
        angle4 += 5;
      }
    } else if (key == 'F' || key =='f') {
      if (angle4>=100) {
        angle4 -=5 ;
      }
    }
  }
}
