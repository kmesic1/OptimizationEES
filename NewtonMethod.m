function [x_min,f_x_min] = NewtonMethod(fun,y,epsilon,maxlter)
%Newton-ov metod
syms x;
if vpa(subs(diff(diff(fun(x))),x,y(1))) > 0
    for k=1:maxlter
    y(k+1) = y(k) - vpa((subs(diff(diff(fun(x))),x,y(k)))^(-1))*vpa(subs(diff(fun(x)),x,y(k)));
if abs(vpa(subs(diff(fun(x)),x,y(k+1)))) < epsilon
    x_min = y(k+1);
    f_x_min=fun(x_min);
    return;
end
    end
end
x_min = 0;
f_x_min=fun(x_min);
end
