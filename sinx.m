clear,clc,close all
x=0:0.01:10;
N=5;
s=0;
d=0;

mu=3.7;
alpha=0.5;

for n=0:N
    s=s+((x.^n)/factorial(n));

end 
    
    for n=0:N
          d=d+(((x.^n)*((-1).^n))/factorial(n));
 

    end 
    
    e=((s-d)/(2*1i));
    
     f=(gamma(mu+1)/gamma(mu-alpha+1))*e.^(mu-alpha);

    
plot(x,f,'k'),grid on
