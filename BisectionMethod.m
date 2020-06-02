function [x_min,f_x_min] = BisectionMethod(fun,a,b,epsilon,maxlter)
%Bisekcioni metod
syms x;
if vpa(subs(diff(fun(x)),x,a)) < 0 && vpa(subs(diff(fun(x)),x,b)) > 0
    for k=1:maxlter
    c = (a+b)/2;
if abs(vpa(subs(diff(fun(x)),x,c))) < epsilon
    x_min = c;
    f_x_min=fun(x_min);
    return;
end
if vpa(subs(diff(fun(x)),x,c)) < 0
    a = c;
end
if vpa(subs(diff(fun(x)),x,c)) >= 0
    b = c;
end
    end
end
x_min = 0;
f_x_min=fun(x_min);
end

