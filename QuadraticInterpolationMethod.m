function [x_min,f_x_min] = QuadraticInterpolationMethod(fun,xl,xr,epsilon,maxlter)
%Metod kvadratne interpolacije
syms x;
xc = (xr+xl)/2;
if fun(xc) < fun(xl) && fun(xc) < fun(xr)
    for k=1:maxlter
        y = inv([xl^2 xl 1; xc^2 xc 1; xr^2 xr 1])*[fun_bi(xl); fun_bi(xc); fun_bi(xr)];
        xc_prim=-y(2,1)/(2*y(1,1));
if xc_prim-xc < 0
    xr=xc;
end
if xc_prim-xc >= 0
    xl=xc;
end
if abs(fun(xc) - fun(xc_prim)) < epsilon
    x_min = xc_prim;
    f_x_min = fun(x_min);
    return;
end
xc = xc_prim;
    end
end
x_min = 0;
f_x_min=fun(x_min);
end
