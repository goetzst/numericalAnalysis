for n=3:8
  A = rand(n,n);
  [L, R] = gaussLR(A);
  L
  R
end