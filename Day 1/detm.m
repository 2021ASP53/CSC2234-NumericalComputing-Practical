function d=detm(A)
[n,m]=size(A);
if n~=m
    error('matrix must be square');
end 

if n==1
    d=A(1,1);
    return;
end

if n==2
    d=A(1,1)*A(2,2)-A(1,2)*A(2,1);
    return;
end

d=0;
for i=1:n   
    m=A(2:n,[1:i-1,i+1:n]);
    d=d+(-1)^(1+i)*A(1,i)*detm(m);
end
disp(d);
end


Output :-
	>> P

	P =

    	 8    -6     2
    	-6     7    -4
    	 2    -4     3

	>> detm(P)
    	 0


	ans =

     	0

        



