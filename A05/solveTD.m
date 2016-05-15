function x = solveTD(d, nd, b)
  # solve L-R by just adding Ls
  for i = 1:(length(d) -1)
    nd(2*i) = (-1 * nd(2*i))/d(i);
  end
  # solve Ly = b
  x(1) = b(1);
  for i = 1:(length(d) -1)
    x(i+1) = b(i+1)-nd(2*i)*x(i);
  end
  # solve Rx = y
  x(length(x)) = x(length(x))/d(length(d));
  for i = (length(d) -1): 1
    x(i) = (x(i) - nd(2*i-1)*x(i+1))/d(i);
  end
end