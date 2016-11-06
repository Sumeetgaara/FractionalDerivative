%e.^(b*(-t)) function.
function m = f3(n,b,alpha,t)
D=0;
for s=0:n
    f=(b*t).^s;
E=((gamma(s+1)/gamma(s-alpha+1))*(b*t).^(s-alpha))*(1/factorial(s))*((-1).^s);
D=D+E;
end
plot(t,f,'b',t,D,'r')