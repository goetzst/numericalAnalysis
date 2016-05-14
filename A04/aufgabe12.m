%% testing matVec
w = matVec([[2,2,2];[0,3,3];[0,0,6]],[1,1,1]')
w2= [[2,2,2];[0,3,3];[0,0,6]] * [1,1,1]'

x = matVec([[2,2,2];[0,2,2];[0,0,2]],[1,2,3]')
x2= [[2,2,2];[0,2,2];[0,0,2]] * [1,2,3]'

%% testing solveR
y = solveR([[6,-4,7];[0,-3,2];[0,0,9]],[(1),(2),(3)]')
y2= [[6,-4,7];[0,-3,2];[0,0,9]] \ [(1),(2),(3)]'

z = solveR([[6,-4,7];[0,-3,2];[0,0,9]],[(41/12),(-1/2),(9/4)]')
z2= [[6,-4,7];[0,-3,2];[0,0,9]] \ [(41/12),(-1/2),(9/4)]'

%% solving tests
for i=1:8
  n = 2^i;
  R = triu(rand(n)) + n*eye(n);
  v = rand(n,1);
  %% api mult
  tic;
  x = R * v;
  elapsedMMult(n) = toc;
  %% api solve
  tic;
  y = R \ x;
  elapsedMSolve(n) = toc;
  %% own mult
  tic;
  x = matVec(R, v);
  elapsedOMult(n) = toc;
  %% own solve
  tic;
  y = solveR(R, x);
  elapsedOSolve(n) = toc;
end
%loglog(nx,elapsedMMult,elapsedMSolve,elapsedOMult,elapsedOSolve);
loglog([1:2^8], elapsedMMult, '+1;matlabmult;', "markersize", 10, elapsedMSolve, ";matlabsolve;", "markersize", 5, "marker", '*', elapsedOMult, "+2;ownMult;", "markersize", 10, elapsedOSolve, "+3;ownSolve;", "markersize", 10);
