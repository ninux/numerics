function HU6 (n);

A = (2*diag (ones (n-1,1),0)-diag (ones (n-2,1),-1)-diag (ones (n-2,1),1))*n^2;

x = 1/n:1/n:(n-1)/n;
y = (3*x+x.^2).*exp (x);
z = A\y';

u = 1/1000:1/1000:999/1000;
v = u.*(1-u).*exp (u);

plot (x,z);
hold on;
plot (u,v,':');  
hold off;
