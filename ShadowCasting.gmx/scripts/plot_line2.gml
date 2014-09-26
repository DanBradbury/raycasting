x0 = argument[0];
y0 = argument[1];
x1 = argument[2];
y1 = argument[3];

var points;
if( abs(y1-y0) > abs(x1-x0) )
  {
  sx = x0;
  sy = y0;
  
  x0 = x1;
  x1 = sx;
  y0 = y1;
  y1 = sy;
  }

if(x0 > x1)
  {
  sx = x0;
  sy = y0;
  
  x0 = x1;
  x1 = sx;
  y0 = y1;
  y1 = sy;
  }
  
dx = x1-x0;
dy = abs(y1-y0);
error = round((dx/2));

yx = y0;
var ystep;
if y0 < y1
  {
  ystep = 1;
  }
else
  {
  ystep = -1;
  }
var j;
for(j=x0;j<x1;j+=1)
  {
  if( abs(y1-y0) > abs(x1-x0) )
    {
      plot(yx,j);
    }
  else
    {
      plot(j,yx);
    }
  error -= dy;
  if(error<0)
    {
    yx += ystep;
    error += dx;
    }
  }
