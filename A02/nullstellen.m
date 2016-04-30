function [x1,x2] = nullstellen(p, q)
  %% Algorithm used: version of Midnightformular that is optimized to not lose precision
  %% changed to fit our format with a = 1 b = -2p c = q
  x1 = p - sign(-2*p) * sqrt(p^2-q);
  if x1 != 0
    x2 = q/x1;
  else
    x2 = 0;
  %% make sure x1 <= x2
  if x1 > x2
    tmp = x1;
    x1 = x2;
    x2 = tmp;
  end
end