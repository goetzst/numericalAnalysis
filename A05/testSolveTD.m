clear all;
clc;
n = 100;
for i=1:n
  d(i) = 2;
  nd(i) = -1;
  if i <= n/2
    b(i) = 1;
   else
    b(i) = 0; 
  end
end
b = 1/(n+1) * b;
x = solveTD(d,nd,b);
x = [0, x, 0];
xVals = linspace(0,1,n+2);
plot(xVals,x);
