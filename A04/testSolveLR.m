for n=3:8
  A = rand(n,n);
  b = rand(n,1);
  [L, R] = gaussLR(A);
  x = solveLR(L, R, b)
  xcomp = A \ b
end
A =  A = [[6,-4,7];[-12,5,-12];[18,0,22]];
b = [(41/12),(-22/3),(29/2)];
[L, R] = gaussLR(A);
x = solveLR(L, R, b)
xcomp = A \ b'