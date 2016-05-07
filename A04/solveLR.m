function x = solveLR(L, R, b)
  y = solveL(L,b);
  x = solveR(R,y);
end