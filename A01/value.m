function x = value(b, d,v, t)
  exponent = 0
  v = fliplr(v)
  for j=1:length(v)
    exponent  = exponent + v(j) * b^(j-1)
  end
  mantissa = 0
  for j=1:length(d)
    mantiss = mantissa + d(j) * b^(-j)
  end
  x = b^(t*exponent) * mantissa
end