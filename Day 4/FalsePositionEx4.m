function[root]=FalsePositionEx4(x0,x1,steps,epes)
n=1;
er=1;

if f(x0)*f(x1)<0
    while (n<=steps && er>epes) 
        if (f(x0)-f(x1)==0)
           error('Division by zero encountered in Secant Method');
        end
           x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
           if f(x0)*f(x2)<0
              x1=x2;
           else
              x0=x2
           end
         er=abs((x2-x1)/x2);
         n=n+1;
    end
        root=x2
else
    disp('we can not find the root');
end
end




