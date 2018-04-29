clear all;
close all;

dy = 1/5;
dx = 1/3;

A = [-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      1,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 1,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 1,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 1,-2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 1,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 1,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 1,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-2, 1, 0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 1, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 1, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 1, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,-2, 1, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 1, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 1, 0;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2, 1;
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,-2];
          
B = [ -2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
       0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
       0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
       0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
       0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
       1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0;
       0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0;
       0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0;
       0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0;
       0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0;
       0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0, 0;
       0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0, 0;
       0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0, 0;
       0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1, 0;
       0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0, 1;
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0, 0;
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0, 0;
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0, 0;
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2, 0;
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,-2];
       
C = [ - ( dy^(-2)*1*dx );
      - ( dy^(-2)*2*dx );
      - ( dy^(-2)*3*dx );
      - ( dy^(-2)*4*dx );
      - ( dx^(-2)*2*exp(dy) + ( dy^(-2)*5*dx ) );
      0;
      0;
      0;
      0;
      - ( dx^(-2) * 2*exp(2*dy) );
      0;
      0;
      0;
      0;
      - ( dx^(-2)*2*exp(3*dy) );
      - ( dy^(-2)*exp(1)*1*dx );
      - ( dy^(-2)*exp(1)*2*dx );
      - ( dy^(-2)*exp(1)*3*dx );
      - ( dy^(-2)*exp(1)*4*dx );
      - ( ( dx^(-2)*2*exp(4*dy) ) + ( dy^(-2)*exp(1)*5*dx) )];

ctr = 1;
for n=1:4
  for p=1:5
    f(ctr) = fun41(p*dx, n*dy);
    ctr = ctr + 1;
    %fprintf("\nx = %i\t y = %i",p,n);
  endfor
endfor
f = f';

u = ( (dx^(-2) * A) + (dy^(-2) * B) )^-1 * ( f + C );