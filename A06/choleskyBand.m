function L = choleskyBand(A, m)
        n       = length(A);
        L       = zeros(n);
        % going form 1 to n-1 calculate an,n standalone
        % l(j,i)
        for k = 1:n
                for i = k:(k+m)
                        if i <= n % don't go out of bound right
                                if(k==i)%diag
                                        sums = 0;
                                        start= k-m;%go m left of to calculate
                                        if start <=0%don't go out of bound left
                                                start = 1;
                                        end
                                        %lkk=(akk-sum leftest to k-1 of lkj²)^0.5
                                        for j = start:(k-1)
                                                sums = sums + L(k,j)^2;
                                        end
                                        L(k,k) = (A(k,k) - sums)^(1/2);
                                else%ndiag
                                        sums = 0;
                                        start= k-m;
                                        if start <=0
                                                start = 1;
                                        end
                                        %lik=(1/lkk-sum leftest to k-1 of lij*lkj)
                                        for j = start:(k-1)
                                                sums = sums + L(i,j) * L(k,j);
                                        end
                                        L(i,k) = 1/L(k,k) * (A(i,k) - sums);
                                end
                        end
                end
        end
end
