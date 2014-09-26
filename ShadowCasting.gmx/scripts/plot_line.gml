x0 = argument[0];
y0 = argument[1];

x1 = argument[2];
y1 = argument[3];

dx = x1-x0;
dy =  y1-y0;

D = 2*dy - dx;
plot(x0,y0);
yx = y0;


if(dx>0)
  {
  for(i=x0+1;i<x1;i++)
    {
    if(D>0)
      {
      yx = yx + 1;
      plot(i,yx);
      D = D + (2*dy-2*dx);
      }
    else
      {
      plot(i,yx);
      D = D + (2*dy);
      }
    }
  }
