%sinbx function.
function m = f5(n,b,alpha,t)
D=0;
for s=0:n
    f=(b*t).^((2*s)+1);
E=((gamma(((2*s)+1)+1)/gamma(((2*s)+1)-alpha+1))*(b*t).^(((2*s)+1)-alpha))*(1/factorial((2*s)+1))*((-1).^s); %taylor series for sinbx
D=D+E;
end
plot(t,f,'b',t,D,'r')