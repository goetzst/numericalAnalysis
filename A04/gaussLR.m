function [L, R] = gaussLR(A)
  n = length(A);
  L = eye(n);
  for i=1:(n -1)
    for j=i+1:n
      l = -A(j,i)/A(i,i);
      L(j,i) = -l;
      A(j,:) = A(j,:) + l*A(i,:);
    end
  end
  R = A;
end