% partial differential equations - part 2: numerics

% exercise 39

% define internal methods
explicit = 1;
loop     = 2;
vector   = 3;

% select method
method   = vector;

% stepwidth
h        = 0.125;

% number of steps
n        = 5;

% System matrix evaluated by hand using the difference method
A = [ -4, 1, 0, 1, 0, 0, 0, 0, 0;
       1,-4, 1, 0, 1, 0, 0, 0, 0;
       0, 1,-4, 0, 0, 1, 0, 0, 0;
       1, 0, 0,-4, 1, 0, 1, 0, 0;
       0, 1, 0, 1,-4, 1, 0, 1, 0;
       0, 0, 1, 0, 1,-4, 0, 0, 1;
       0, 0, 0, 1, 0, 0,-4, 1, 0;
       0, 0, 0, 0, 1, 0, 1,-4, 1;
       0, 0, 0, 0, 0, 1, 0, 1, -4];

       
p = -1*[0, 0, 200*h, 0, 0, 400*h, 200*h, 400*h, 1200*h]';

u = A^-1 * p;

u

U = [u(7:9)'; u(4:6)'; u(1:3)'];