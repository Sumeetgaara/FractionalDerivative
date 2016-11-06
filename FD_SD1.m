function K = FD_SD1(o,x,y,z,alpha,t)
if o == 3                                               %checking if user puts valid data which in our case will be 3.
mu=3;
f=(t.^mu);
D =((gamma(mu+1)/gamma(mu-alpha+1))*t.^(mu-alpha))*1*x;  %computing FD of t raised to 3 term with co-efficients inserted by user.
mu=2;
g=(t.^mu)*3;
C=((gamma(mu+1)/gamma(mu-alpha+1))*t.^(mu-alpha))*3*y;   %computing FD of t raised to 2 term with co-efficients inserted by user.
mu=1;
h=(t.^mu)*5;
A=((gamma(mu+1)/gamma(mu-alpha+1))*t.^(mu-alpha))*5*z;   %computing FD of t raised to 1 term with co-efficients inserted by user.
mu=0;
i=(t.^mu)*9;
B=((gamma(mu+1)/gamma(mu-alpha+1))*t.^(mu-alpha))*9;      %computing FD of t raised to 0 term with co-efficients inserted by user.
L=i+h+g+f;                                                 %adding all terms to get given equation
K=A+B+C+D;                                                 %adding all to FD of given equation
plot(t,K,'r',t,L,'b');
else
    
    display('invalid')
end

