%f1
f1      = @(x) cos(x)-x;
[xk, nIt] = newton(f1,@(x) -1*sin(x)-1,0.1,10^-10,10);
[xk1,nIt1]= halley(f1,@(x) -1*sin(x)-1,@(x) -1*cos(x),0.1,10^-10,10);
%f2
f2      = @(x) e^x-1;
[xk2,nit2]= newton(f2,@(x) e^x,0.1,10^-10,10);
[xk3,nit3]= halley(f2,@(x) e^x,@(x) e^x,0.1,10^-10,10);

A       = [];
B       = [];
for i=0:0.1:1
        A       = [A,f1(i)];
        B       = [B,f2(i)];
end


plot([0:0.1:1], A, 'g-');
hold on
plot([0:0.1:1], B, 'b-');
plot([0.4],xk(length(xk)),'g*');
plot([0.4],xk1(3),'r+');
plot([0.4],xk2(length(xk2)),'b*');
plot([0.4],xk3(2),'r+');
hold off
legend('cos(x)-x','e^x-1','newtoncos','halleycos','newtone','halleye');
