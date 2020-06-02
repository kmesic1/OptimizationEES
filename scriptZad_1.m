clear
clc
[x_min,f_x_min] = GradientDescentMethod(@fun_v4,[-1; 3],0.005,50);