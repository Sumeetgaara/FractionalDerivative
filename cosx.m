clear,clc,close all
x=0:0.01:10;
N=5;
d=0;

mu=3.7;
alpha=0.5;

   for n=0:N
          d=d+((x.^(2*n))*((-1).^n))/factorial(2*n);
 end 
   

    
plot(x,d,'k'),grid on
