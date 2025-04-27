function[root]=Newton_RaphsonEx1(x0,steps,epes)
n=1;    % Initial Value
xr=x0;  % Exchange of initials
er=1;   % Error
    while(n<=steps && er>epes)
        if df(xr)~=0
            xr_new=xr-(f(xr)/df(xr));   % The formula of Newton Rapson
        end
        if xr_new~=0
            er=abs((xr_new-xr)/xr_new);  % The Absolute error
        end
        xr=xr_new;
        n=n+1;
    end

 root=xr;
end






