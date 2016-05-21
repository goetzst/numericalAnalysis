function x = solveLrPivot(L, R, P, b)
  y = solveL(L,P,b);
  x = solveR(R,y);
end
