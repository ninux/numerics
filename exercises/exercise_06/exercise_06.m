% partial differential equations - part 2: numerics

% exercise 6

% define internal methods
explicit = 1;
loop     = 2;
vector   = 3;

% select method
method   = 3;

% stepwidth
h = 1/5;

% number of steps
n = 4;

% System matrix evaluated by hand using the difference method
A = 25 * [ 2, -1,  0,  0;
          -1,  2, -1,  0;
           0, -1,  2, -1;
           0,  0, -1,  2];

if method==explicit
  % step 1
  x = h*1;
  f1 = ( 3*(x) + (x)^2 ) * exp( x );

  % step 2
  x = h*2;
  f2 = ( 3*(x) + (x)^2 ) * exp( x );

  % step 3
  x = h*3;
  f3 = ( 3*(x) + (x)^2 ) * exp( x );

  % step 4
  x = h*4;
  f4 = ( 3*(x) + (x)^2 ) * exp( x );

  % exact solution vector
  f = [f1, f2, f3, f4]';
endif

if method==loop
  for n=1:4
    x = h*n;
    f(n) = ( 3*(x) + (x)^2 ) * exp( x );
  endfor
endif

if method==vector
  n = [1:1:4]';
  x = n*h;
  f = arrayfun(@fun6, x);
endif

% approximation vector calculation
u = A^-1 * f;

% print out the results
u