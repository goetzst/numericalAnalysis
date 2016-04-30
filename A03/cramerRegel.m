function x = cramerRegel(A, b)
  for i=1:length(b)
    D = A;
    D(:,i) = b';
    x(i) = detLaplace(D)/detLaplace(A);
  end
  x = x';
end