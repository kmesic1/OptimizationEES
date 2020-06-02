function [grad,delta_grad] = GradientMethod(fun,x,k)
%Gradijent metod
syms x_1;
syms x_2;
grad = [vpa(subs(diff(fun_v2(x_1,x_2),x_1),{x_1,x_2},{[x(1,k) x(2,k)]})); vpa(subs(diff(fun_v2(x_1,x_2),x_2),{x_1,x_2},{[x(1,k) x(2,k)]}))];
delta_grad = - grad;
end

