f(1) = 1.9;
f(2) = 3.0;
f(3) = 2.6;
f(4) = 1.1;
f(5) = 0.4;
f(6) = 1.5;
A([1:6],:) = 1;
A(1,2) = 0;
A(1,3) = 0;
for i = 2:6
       A(i,2) = sin((i-1)*pi/3);
       A(i,3) = cos((i-1)*pi/3);
end
[Q, R] = qr(A);
c = Q' * f';
b1(1:3) = c(1:3);

r = R(1:3,1:3);
x = inv(r) * b1'
rs = norm(c(4:6))