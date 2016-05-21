clear all;
clc;
# 1
A = [[0,1];[1,1]];
b = [1,1]';
#pivot
[L, R, P] = lrPivot(A,1);
x = solveLrPivot(L,R,P,b)
#nopivot
[L, R, P] = lrPivot(A,0);
xcompNP = solveLrPivot(L,R,P,b)
#mat
xcompM = A \ b


# 2
A = [[11,33,1];[0.1,0.4,4];[0,1,(-1)]];
b = [1,1,1]';
#pivot
[L, R, P] = lrPivot(A,1);
x = solveLrPivot(L,R,P,b)
#nopivot
[L, R, P] = lrPivot(A,0);
xcompNP = solveLrPivot(L,R,P,b)
#mat
xcompM = A \ b


# 3
A = [[0.001,1,1];[-1,0.004,0.004];[-1000,0.004,0.000004]];
b = [1,1,1]';
#pivot
[L, R, P] = lrPivot(A,1);
x = solveLrPivot(L,R,P,b)
#nopivot
[L, R, P] = lrPivot(A,0);
xcompNP = solveLrPivot(L,R,P,b)
#mat
xcompM = A \ b
