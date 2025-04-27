function[root]=SecantEx3(x0,x1,steps,epes)
n=1;
er=1;

if f(x0)*f(x1)<0
    while (n<=steps && er>epes) 
        if f(x0)-f(x1)~=0
            x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
        end
            er=abs((x2-x1)/x2);
            x0=x1;
            x1=x2;
            n=n+1;
        end
        root=x2
else
    
    disp('we can not find the root');
end
end


