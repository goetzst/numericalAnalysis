f       = @(x) atan(x);
f1      = @(x) 1/(x^2+1);
f2      = @(x) -2*x/((x^2+1)^2);
ton  = [];
hal  = [];
for i=-10:0.1:10
        [xk, nIt] = newton(f,f1,i,10^-10,1000);
        ton  = [ton, nIt];
        [xk1,nIt1]= halley(f,f1,f2,i,10^-10,1000);
        hal  = [hal, nIt1];
end

plot([-10:0.1:10],ton, [-10:0.1:10], hal);
legend('newton','halley');
