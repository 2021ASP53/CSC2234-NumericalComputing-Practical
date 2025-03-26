function[root]=bisection(xl,xu,step,epes)  
n=1;    % Initial Iteration
er=1;   % Error
xr=0;   % Root of equation
if f(xl)*f(xu)<0
  while (n<=step && er>epes)
    xr_old=xr
    xr=(xl+xu)/2

    if f(xl)*f(xr)<0
        xu=xr;
    else
        xl=xr;
    end
    er=abs((xr-xr_old)/xr);     % absolute value to compare relative error
    n=n+1;
  end
root=xr
else
    disp('There is no root');
end
end








