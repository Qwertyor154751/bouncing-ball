
//Ball ball = new Ball(100,400,30,8,50);
Ball [] balls = new Ball[20];
void setup()
{
  size(1200,600);
  for( int i = 0; i < balls.length ; i++)
      {
          balls[i] = new Ball(random(20,width),random(20,height),random(-3,3),random(-3,3),random(20,80));
      }
}
void draw()
{  
  background(0);
  for( int i = 0; i < balls.length ; i++)
      {
          balls[i].display();
          balls[i].update();
      }
}
void mousePressed()
{
  for( int i = 0; i < balls.length ; i++)
      { 
        if (balls[i].pointInEllipse(mouseX,mouseY))
        {
          balls[i].changeColor();
        }
      }
}
