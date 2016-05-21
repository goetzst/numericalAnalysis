function [L, R, P] = lrPivot(A, pivot)
  n = length(A);
  P = eye(n);
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
# swap lines
      tmp = A(i,:);
      A(i,:) = A(bp,:);
      A(bp,:)= tmp;
# create Pi
      Pi = eye(n);
      tmp = Pi(i,:);
      Pi(i,:) = Pi(bp,:);
      Pi(bp,:)= tmp;
      P= Pi * P;
    end
    for j=i+1:n
      l = -A(j,i)/A(i,i);
      A(j,i) = -l;
      # calculate upper tri
      A(j,[(i+1):n]) = A(j,[(i+1):n]) + l*A(i,[(i+1):n]);
    end
  end
  R = triu(A);
  L = tril(A, -1) + eye(n);
end
