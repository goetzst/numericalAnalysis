A=[2.56,-2.56,2.56;0.81,0.81,0.81;0.5625,0.75,1;7.29,-2.7,1];
f=[10;10;10;10];
r=A\f
a=r(1);
b=r(2);
c=r(3);
fh = @(x,y) a*x^2+b*x*y+c*y^2-10;
ezplot(fh,[-1.6,2.7,-1,1.6]);