function s = add(a1, a2, b)
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
  %% add vectors
  carry = 0 %% for carryover
  for i=length(a1v):-1:1
    x = a1v(i) + a2v(i) + carry
    s(i) = mod(x, b)
    carry = idivide(x, b)
  end
  if carry > 0
    s(length(a1v)+1) = carry
  end
end