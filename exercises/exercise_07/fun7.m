function f = fun7(x)
  u = (exp(1)^2 / (exp(1)^4 -1)) * (exp(2*x) - exp(-2*x)) + x;
  f = 4 * ( u - x );
endfunction 