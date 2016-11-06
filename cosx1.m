syms x;
f = cos(x);
t = taylor(f, 'Order', 20)
mu=3.7;
alpha=0.5;

g=(gamma(mu+1)/gamma(mu-alpha+1))*t.^(mu-alpha);

ezplot(g, [0, 10]);

