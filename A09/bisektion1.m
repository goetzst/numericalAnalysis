function [xk,nIt] = bisektion1(f, a, b, tol)
        fa      = f(a);
        fb      = f(b);
        nIt     = 0;
        xk      = [];
        while abs(a-b) > 0
                m       = (a+b)/2;
                xk      = [xk,m];
                fm      = f(m);
                if abs(fm) < 10^(-1*tol)
                        return;
                else if fa * fm < 0
                        b       = m;
                        fb      = fm;
                else
                        a       = m;
                        fa      = fm;
                end
                nIt     = nIt + 1;
        end
end
