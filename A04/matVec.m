function x = matVec(R, v)
x = [];
  for i=1:length(R)
    xi = 0;
    for j=i:length(R)
      xi = xi + R(i,j)*v(j);
    end
    x(i) = xi;
  end
  x = x';
end