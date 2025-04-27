function[root]=FixedPointIterationEx2(x0,step,epes)
xr=x0;
n=1;
er=1;

  while (n<=step && er>epes)
    xr_old=xr;
    xr=f(xr_old);
      if xr~=0
         er=abs((xr-xr_old)/xr)  
         n=n+1;
         error(n)=er; 
         stp(n)=n;
      end
  root=xr;
  plot(stp,error);
  xlabel('step');
  ylabel('error');
  end
end






