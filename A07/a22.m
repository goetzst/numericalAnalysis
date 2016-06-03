A = [1,1,1,1,1,1;0,sin(pi/3),sin(2*pi/3),sin(pi),sin(4*pi/3),sin(5*pi/3);0,cos(pi/3),cos(2*pi/3),cos(pi),cos(4*pi/3),cos(5*pi/3)];
b = [1.9,3.0,2.6,1.1,0.4,1.5]';
t = [0,2,4,6,8,10];
x = A'\b;
for i=1:6
        hs(i) = h(x,t(i));
end
errors= hs' - b;
sum(errors.^2)
plot(t, b, ';real;', "markersize", 10, t, hs, ";aprox;", "markersize", 5, "marker", '*', t, errors, ";error;", "markersize", 10);
