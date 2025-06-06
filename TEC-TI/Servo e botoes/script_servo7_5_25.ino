#include <Servo.h>

#define BOTAO1 13
#define BOTAO2 12
#define BOTAO3 11

#define SERVO 3

Servo meuServo;
int valor = 0;

void setup()
{
  pinMode (BOTAO1, INPUT_PULLUP);
  pinMode (BOTAO2, INPUT_PULLUP);
  pinMode (BOTAO3, INPUT_PULLUP);
  meuServo.attach(SERVO);
  Serial.begin(9600);
  meuServo.write(45);
}

void loop()
{
  if (digitalRead(BOTAO1) == LOW)
  {
    meuServo.write(0);
  }
  else if (digitalRead(BOTAO2) == LOW)
  {
    meuServo.write(90);
  }
  else if (digitalRead(BOTAO3) == LOW)
  {
    meuServo.write(180);
  }
}