function y = an(xs,x,ys)
        n       = length(xs);
        A       = zeros(n);
        for i=1:n
                A(i,1)  = ys(i);
        end
        for k=2:n
                for i=2:n
                        if (i>=k)
                                A(i,k) = A(i,(k-1)) + (x - xs(i))/(xs(i)-xs(i-k+1)) * (A(i,k-1) - A(i-1,k-1));
                        end
                end
        end
        A
end
