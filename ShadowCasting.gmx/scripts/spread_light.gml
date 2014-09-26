sx = argument[0];
sy = argument[1];

/* outside to inside */
rad = 0;
dx = sx + cos(rad)*8;
dy = sy + sin(rad)*8;

//dx = sx+8;
//dy = sy;

plot_line(sx,sy,sx+8,sy);