function d = sub(a1, a2, b)
  a1v = convert2basis(b, a1)
  a2v = convert2basis(b, a2)
  %% make both same length
  if length(a1v) > length(a2v)
    difference = length(a1v) - length(a2v)
    for j=(length(a2v) + 1):(length(a2v) + difference)
      a2v(j) = 0
    end
    a2v = shift(a2v, difference)
  end
  if length(a2v) > length(a1v)
    difference = length(a2v) - length(a1v)
    for j=(length(a1v) + 1):(length(a1v) + difference)
      a1v(j) = 0
    end
    a1v = shift(a1v, difference)
  end
  %% subtract vectors
  carry = 0 %% for carryover
  for i=length(a1v):-1:1
    e = (a2v(i) + carry)
    if e > a1v(i)
      carry = idivide(e, b, 'ceil')
      d(i) = carry * b - e
    else
      carry = 0
      d(i) = a1v(i) - e
    end
  end
end