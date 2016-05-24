function L = cholesky(A)
        n       = length(A);
        L       = zeros(n);
        % going form 1 to n-1 calculate an,n standalone
        % l(j,i)
        for k = 1:n
                for i = k:n
                        if(k==i)%diag
                                sums = 0;
                                %lkk=(akk-sum leftest to k-1 of lkj²)^0.5
                                for j = 1:(k-1)
                                        sums = sums + L(k,j)^2;
                                end
                                L(k,k) = (A(k,k) - sums)^(1/2);
                        else%ndiag
                                sums = 0;
                                %lik=(1/lkk-sum leftest to k-1 of lij*lkj)
                                for j = 1:(k-1)
                                        sums = sums + L(i,j) * L(k,j);
                                end
                                L(i,k) = 1/L(k,k) * (A(i,k) - sums);
                        end
                end
        end
end
