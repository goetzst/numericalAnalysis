function n = valueNatZahl(a, b)
  a = fliplr(a)
  n = 0
  for i=0:(length(a)-1)
    n = n + (a(i+1) * b ^ i)
  end
end