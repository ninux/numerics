% partial differential equations - part 2: numerics

% exercise 38

% define internal methods
explicit = 1;
loop     = 2;
vector   = 3;

% select method
method   = vector;

% stepwidth
h        = 1/3;

% number of steps
n        = 4;

% System matrix evaluated by hand using the difference method
A = [ 4, -1, -1,  0;
     -1,  4,  0, -1;
     -1,  0,  4, -1;
      0, -1, -1,  4];

if method==explicit
  % step 1
  x = h*1;
  y = h*1;
  f1 = fun38(x,y);

  % step 2
  x = h*2;
  y = h*1;
  f2 = fun38(x,y);

  % step 3
  x = h*1;
  y = h*2;
  f3 = fun38(x,y);

  % step 4
  x = h*2;
  y = h*2;
  f4 = fun38(x,y);

  % exact solution vector
  f = [f1, f2, f3, f4]';
endif

ctr = 0;
if method==loop
  for n=1:2
    x = h*n;
    for p=1:2
      ctr = ctr + 1;
      y = h*p;
      f(ctr) = fun38(x,y);
    endfor
  endfor
  f = f';
endif

if method==vector
  ctr = 1
  for n=1:2
    x = h*n;
    for p=1:2
      y = h*p;
      q(ctr,1) = x;
      q(ctr,2) = y;
      ctr = ctr + 1;
    endfor
  endfor
  f = arrayfun(@fun38, q(:,1), q(:,2));
endif

% approximation vector calculation
u = A^-1 * h^2 * f;

% print out the results
u