close all;
clear all;
clc;
for i=1:8
  %% only work in matlab
  %% A = linalg::randomMatrix(i,i, Dom::Integer);
  %% b = linalg::randdomMatrix(i,1, Dom::Integer);
  A = floor(100*rand(i));
  b = floor(100 * rand(1,i));
  tic;
  x = cramerRegel(A, b');
  elapsed(i) = toc;
  tic;
  x = A\b';
  elapsed2(i) = toc;
end
%%plot([1:8],elapsed, elapsed2);
semilogy([1:8],elapsed, elapsed2);