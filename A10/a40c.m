xs      = [-2,-1,0,1];
f       = [1/9,1/3,1,3];
v       = evalNewtonpolynom(xs, divDiff(xs, f), 1/2)

xs      = [-2,-1,0,1,2];
f       = [1/9,1/3,1,3,9];
v       = evalNewtonpolynom(xs, divDiff(xs, f), 1/2)
