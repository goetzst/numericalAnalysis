function x = solveR(R, b)
  for i=length(R):-1:1
    sums  = 0;
    for j=i+1:length(R)
      sums = sums + R(i,j) * x(j);
    end
    x(i) = (b(i) - sums)/R(i,i);
  end
  x = x';
end