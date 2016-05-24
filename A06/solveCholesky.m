function x = solveCholesky(L, b)
        n = length(L);
        % L*y = b
        for i=1:n
                sums = 0;
                for j=1:(i-1)
                        sums = sums + y(j) * L(i,j);
                end
                y(i) = (b(i) - sums)/L(i,i);
        end
        L = L'; %transpose
        % L'*x= y
        for i=n:-1:1
                sums = 0;
                for j=(i+1):n
                        sums = sums + x(j) * L(i,j);
                end
                x(i) = (y(i) - sums)/L(i,i);
        end
end
