function [x_min,f_x_min] = GradientDescentMethod(fun,x,epsilon,maxlter)
%Metod najstrmijeg spusta
syms x_1;
syms x_2;
syms s;
for k=1:maxlter
    %grad = [vpa(subs(diff(fun(x_1,x_2),x_1),x(1,k))); vpa(subs(diff(fun(x_1,x_2),x_2),x(2,k)))]
    [grad,delta_grad] = GradientMethod(fun,x,k)
    [gama,gama_s(s)] = LineSearchMethod(fun,delta_grad,x,k)
    [s_min, d] = NewtonMethod(gama_s,1,epsilon,maxlter)
    x(:,k+1) = subs(gama,s_min)
    %if vpa(subs(diff(fun(x_1,x_2),x_1),x(1,k+1))) < epsilon  && vpa(subs(diff(fun(x_1,x_2),x_1),x(2,k+1))) < epsilon
    if abs(vpa(subs(diff(fun(x_1,x_2),x_1),{x_1,x_2},{[x(1,k+1) x(2,k+1)]}))) < epsilon  && abs(vpa(subs(diff(fun(x_1,x_2),x_2),{x_1,x_2},{[x(1,k+1) x(2,k+1)]}))) < epsilon
        x_min = [vpa(subs(diff(fun(x_1,x_2),x_1),{x_1,x_2},{[x(1,k+1) x(2,k+1)]})); vpa(subs(diff(fun(x_1,x_2),x_2),{x_1,x_2},{[x(1,k+1) x(2,k+1)]}))];
        f_x_min = fun(x_min(1),x_min(2));
        return;
    end
end
x_min = 0;
f_x_min = 0;
end


