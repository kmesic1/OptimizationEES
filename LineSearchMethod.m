function [gama,gama_s] = LineSearchMethod(fun,delta_grad,x,k)
%Egaktni line search metod
syms s;
gama = x(:,k) + s*delta_grad;
gama_s(s) = fun(gama(1),gama(2));
end

