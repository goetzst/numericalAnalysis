function x = solveLrPivot(L, R, P, b)
  y = solveL(L,b);
  x = solveR(R,y);
end