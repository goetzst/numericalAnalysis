clear all;
clc;
n = 100;
for i=1:n
        d(i) = 2;
        if i > 1
                nd(i-1) = -1;
        end
        if i <= n/2
                b(i) = 1;
        else
                b(i) = 0; 
        end
end
b = 1/(n+1) * b;
A = gallery('tridiag',nd,d,nd);
L = choleskyBand(A, 1);
x = solveCholeskyBand(L, 1, b);
x = [0, x, 0];
xVals = linspace(0,1,n+2);
plot(xVals,x);
