f       = @(x) x^2 -2;
f1      = @(x) 2*x;
f2      = @(x) 2;
[xk, nIt]=bisektion1(f,1,3,10);
[xk2, nIt2]=regulaFalsi(f,1,3,10,nIt);
[xk3, nIt3]=sekanten(f,1,3,10,nIt);
[xk4, nIt4]=newton(f,f1,1,0.1*10^-10,nIt);
[xk5, nIt5]=halley(f,f1,f2,100,0.1*10^-10,nIt);

%drawing
semilogy([0:nIt],abs(xk-2^0.5),'b-');
hold on
semilogy([0:nIt2],abs(xk2-2^0.5),'g-');
semilogy([0:nIt3],abs(xk3-2^0.5),'r-');
semilogy([0:nIt4-1],abs(xk4-2^0.5),'r+');
semilogy([0:nIt5-1],abs(xk5-2^0.5),'b*');
hold off
legend('bisektion','regulaFalsi','sekanten','newton','halley');
