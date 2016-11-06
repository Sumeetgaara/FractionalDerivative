%tanbx function.
function m = f9(n,b,alpha,t)
D=0;
if(n>10)
       display('n should be less than or equal to 10');
end
if(n<=10)   
 for s=1:n
 if(n==1)
     B=1/6;
 end
 if (n==2)
     B=(-1)/30;
 end
 if(n==3)
     B=1/42;
 end
 if (n==4)
     B=(-1)/30;
 end
  if(n==5)
     B=5/66;
 end
 if (n==6)
     B=(-691)/2730;
 end
 if(n==7)
     B=7/6;
 end
 if (n==8)
     B=(-3617)/510;
 end
  if(n==9)
     B=43867/798;
 end
 if (n==10)
     B=(-174611)/330;
 end
 
    
E=((gamma(((2*s)-1)+1)/gamma(((2*s)-1)-alpha+1))*(b*t).^(((2*s)-1)-alpha))*(1/factorial((2*s)))*((-4).^s)*((1-(4.^s)))*B;
D=D+E;
end
plot(t,D,'r');
end
