%cosbx function.
function m = f7(n,b,alpha,t)
D=0;
for s=0:n
    f=(b*t).^((2*s));
E=((gamma(((2*s))+1)/gamma(((2*s))-alpha+1))*(b*t).^(((2*s))-alpha))*(1/factorial((2*s)))*((-1).^s);
D=D+E;
end
plot(t,f,'b',t,D,'r')