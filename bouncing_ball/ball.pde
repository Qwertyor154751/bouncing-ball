class Ball
{
  private float y,dy,x,dx,size;
  private color ballColor = color (255,0,0);
 
  //*************************************
  public Ball(float x,float y,float dx,float dy,float size)
  {
    this.x=x;
    this.y=y;
    this.dx=dx;
    this.dy=dy;
    this.size=size;
  }
  //************************************
  void update()
  {
    Move();
    checkCollusion();
  }
    
  //*************************************
  void Move()
  {
    x=x+dx;
    y=y+dy;
  }/*
  //*************************************
  boolean checkVerticalWall()
  {
    
    if (gety()+(getsize()/2) > height || gety()-(getsize()/2) < 0 )
    {
       return true;
    }
    return false;
  }
  //*************************************
  boolean checkHorizontalWall()
  {
    if (getx()+(getsize()/2) > width || getx()-(getsize()/2) < 0 )
    {
       return true;
    }
    return false;
  }
  //*******************************************
  void checkCollusion()
  {
    if (checkHorizontalWall())
    {
      setdx(getdx() * -1);
    }
    if (checkVerticalWall())
    {
      setdy(getdy() * -1);
    }
  }
  //*************************************
  void setdy(float dy)
  {
    this.dy = dy ;
  }
  //*************************************
  void setdx(float dx)
  {
    this.dx = dx ;
  }
  //*************************************
  float getdy()
  {
    return this.dy;
  }
  //*************************************
  float getdx()
  {
    return this.dx;
  }
  //*************************************
  float gety()
  {
    return this.y;
  }
  //*************************************
  float getx()
  {
    return this.x;
  }
  //*************************************
  float getsize()
  {
    return this.size;
  }
  //************************************
  */
  
  //*************************************
  boolean checkVerticalWall()
  {
    
    if (y+(size/2) > height || y-(size/2) < 0 )
    {
       return true;
    }
    return false;
  }
  //*************************************
  boolean checkHorizontalWall()
  {
    if (x+(size/2) > width || x-(size/2) < 0 )
    {
       return true;
    }
    return false;
  }
  //*******************************************
  void checkCollusion()
  {
    if (checkHorizontalWall())
    {
      dx = dx * -1;
    }
    if (checkVerticalWall())
    {
      dy = dy * -1;
    }
  }
  //***********************************************
  boolean pointInEllipse(float x,float y)
  {
    double distance = Math.sqrt(Math.pow(x-this.x,2)+Math.pow(y-this.y,2));
    if (distance < size)
    {
      return true;
    }
    return false;
  }
  
  void changeColor()
  {
    if (red(this.ballColor)==255)
    {
      this.ballColor = color(0,255,0);
    }
    else
    {
      if (green(this.ballColor) == 255)
      {
        this.ballColor = color(0,0,255);
      }
      else
      {
        if (blue(this.ballColor)==255)
        {
            this.ballColor = color(255,0,0);
        }
      }    
    }
  }
  void display()
  {
    fill(this.ballColor);
    ellipse(x,y,size,size);
    
  }
}
