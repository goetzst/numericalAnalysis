function f = convert2basis(b, n)
  xs = []
  while n != 0
    xs = [xs, mod(n, b)]
    n = fix(n/b)
  end
  f = fliplr(xs)
end