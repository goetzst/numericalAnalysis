function y = solveL(L, P, x)
  x = P * x;
  for i=1:length(L)
    sums  = 0;
    for j=1:(i-1)
      sums = sums + L(i,j) * y(j);
    end
    y(i) = (x(i) - sums)/L(i,i);
  end
  y = y';
end
