clear all;
clc;
for i = 3:10
        n = 2^i;
        for j=1:n
                d(j) = randi(100);
                if j > 1
                        nd(j-1) = randi(100);
                end
                b(j) = randi(100);
        end
        A = gallery('tridiag',nd,d,nd);
        tic;
        L = choleskyBand(A, 1);
        solveCholeskyBand(L, 1, b);
        choleskyTime(n) = toc;
        tic;
        x = solveTD(d,nd,b);
        oldTime(n) = toc;
        tic;
        L = cholesky(A);
        x =  solveCholesky(L, b);
        stdChol(n) = toc;
        tic;
        [L, R, P] = lrPivot(A, 1);
        solveLrPivot(L, R, P, b);
        pivotTime(n) = toc;
end
loglog([1:2^10], choleskyTime, '+1;band;', "markersize", 10, oldTime, ";optimized;", "markersize", 5, "marker", '*', stdChol, "+2;stdChol;", "markersize", 10, pivotTime, "+3;pivot;", "markersize", 10);
