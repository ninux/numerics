%% partial differential equations - part 2: numerics
%
%% exercise 7
%
%clear all;
%close all;
%
%% define internal methods
%explicit = 1;
%loop     = 2;
%vector   = 3;
%
%% select method
%method   = 3;
%
%% stepwidth
%h = 1/3;
%
%% number of steps
%n = 2;
%
%% System matrix evaluated by hand using the difference method
%A = 9 * [-2, 1;
%          1,-2];
%
%if method==explicit
%  % step 1
%  x = h*1;
%  f1 = ( 3*(x) + (x)^2 ) * exp( x );
%
%  % step 2
%  x = h*2;
%  f2 = ( 3*(x) + (x)^2 ) * exp( x );
%
%  % exact solution vector
%  f = [f1, f2]';
%endif
%
%if method==loop
%  for n=1:2
%    x = h*n;
%    f(n) = exp(1)^2 / (exp(1)^4 -1) * (exp(2*x) - exp(-2*x)) + x;
%  endfor
%endif
%
%if method==vector
%  n = [1:1:2]';
%  x = n*h;
%  f = arrayfun(@fun7, x);
%endif
%
%% approximation vector calculation
%u = A^-1 * [f(1), f(2)-2*3^2]';
%
%% print out the results
%u


clear all;
close all;

dx = 1/3;

A = [-18, 9; 9,-18];

f = [fun7(1*dx), fun7(2*dx) - 18]';

u = A^-1 * f;