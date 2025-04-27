function[root]=BisectionEx1(xl,xu,step,epes)  
n=1;    
er=1;   
xr=0;   
if f(xl)*f(xu)<0
  while (n<=step && er>epes)
    xr_old=xr
    xr=(xl+xu)/2

    if f(xl)*f(xr)<0
        xu=xr;
    else
        xl=xr;
    end
    er=abs((xr-xr_old)/xr); 
    n=n+1;
  end
root=xr
else
    disp('There is no root');
end
end











