function x = solveCholeskyBand(L, m, b)
        n = length(L);
        % L*y = b
        for i=1:n
                start   = i-m;
                if start <= 0
                        start = 1;
                end
                sums = 0;
                for j=start:(i-1)
                        sums = sums + y(j) * L(i,j);
                end
                y(i) = (b(i) - sums)/L(i,i);
        end
        L = L'; %transpose
        % L'*x= y
        for i=n:-1:1
                ends = i+m;
                if ends >n
                        ends = n;
                end
                sums = 0;
                for j=(i+1):ends
                        sums = sums + x(j) * L(i,j);
                end
                x(i) = (y(i) - sums)/L(i,i);
        end
end
