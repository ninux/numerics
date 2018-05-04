clear all;
close all;

F = [   3,-1/2;
     -1/2,   3];

G = [   1, 1/2;
      1/2,   1];

p = [1,2];

u_0 = [arrayfun(@fun59,p)]';

u_1 = F^-1 * G * u_0;
u_2 = F^-1 * G * u_1;
u_3 = F^-1 * G * u_2;
u_4 = F^-1 * G * u_3;
u_5 = F^-1 * G * u_4;

u = [u_4, u_3, u_2, u_1, u_0]';