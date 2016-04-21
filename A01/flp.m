function [d, v, t] = flp(b, m, n, x)
  if (floor(x) >= 1)
    A = convert2basis(b, floor(x)) %% convert X of X.Y
  else 
    A = [0]
  end
  X = x - floor(x)
  i = 1
  B = []
  while (X > 0 && (i < m+1)) %% convert Y only till max of m
    X = b * X
    B(i) = floor(X)
    X = X - floor(X)
    if(not(i == 1 && B(1) == 0 && A == [0])) %% normalize ignore leading 0 when 0.Y
      i = i+1
    end
  end
  if(sum(A) == 0 || isempty(A)) %% 0.
    V = (m-length(B))+ 1
    v = convert2basis(b,V)
    t = -1
    d = B
  else %% X.
    t = 1
    V = length(A)
    v = convert2basis(b,V)
    d = [A,B]
  end
  if(length(d) < m) %% fill missing spaces for mantissa
    for j=(length(d)+1):m
      d(j) = 0
    end
  end
  if(length(v) < n) %% fill missing spaces for exponent
    for j=(length(v)+1):n
      v(j) = 0
    end
  end
  v = fliplr(v)
end