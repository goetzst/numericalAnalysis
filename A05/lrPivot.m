function [L, R, P] = lrPivot(A, pivot)
  n = length(A);
  L = eye(n);
  for i=1:(n -1)
    #pivot
    if pivot == 1
      bn = abs(A(i,i));
      bp = i;
      for k=(i+1):n
        if abs(A(k,i)) > bn
          bn = abs(A(k,i));
          bp = k;
        end
      end
      tmp = A(i,:);
      A(i,:) = A(bp,:);
      A(bp,:)= tmp;
    end
    for j=i+1:n
      l = -A(j,i)/A(i,i);
      L(j,i) = -l;
      A(j,:) = A(j,:) + l*A(i,:);
    end
  end
  R = A;
  P = zeros(n);
end