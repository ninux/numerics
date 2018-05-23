clear all;
close all;

ON    = 1;
OFF   = 0;
PRINT = ON;

% coefficien matrix A
A = [-7, 1, 0, 0;
      1,-6, 1, 0;
      0, 1,-6, 1;
      0, 0, 1,-7];

if PRINT == ON
  fprintf("\ncoefficient matrix A:\n");
  A
else
  %
endif

% value vector f
f = [-2, -6, -10, -22]';

if PRINT == ON
  fprintf("\nvalue vector f:\n");
  f
else
  % 
endif

% approximation result vector u
u = A^-1 * f;

if PRINT == ON
  fprintf("\napproximation result vector u:\n");
  u
else
  %
endif

% positions P
P = [0.5, 0.5;
     1.5, 0.5;
     2.5, 0.5;
     3.5, 0.5];

% exact calculation result vector r
r = arrayfun(@fun75, P(:,1), P(:,2));

if PRINT == ON
  fprintf("\nexact result vector r:\n");
  r
else
  %
endif