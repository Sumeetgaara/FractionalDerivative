function m = FD_SD(o,b,alpha,t)
sum=0;
k=0;
g=t.^0;
E=((gamma(0+1)/gamma(0-alpha+1))*t.^(0-alpha))*b(1);  %for calculating constant term.

for s=1:o
    f=t.^s;
    D =((gamma(s+1)/gamma(s-alpha+1))*t.^(s-alpha))*b(s+1); 
    k=k+f;
    sum=sum+D;
    
end

p=k+b(1);
Q=sum+E;
plot(t,p,'b',t,Q,'r'),grid on;

    