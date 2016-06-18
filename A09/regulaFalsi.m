function [xk,nIt] = regulaFalsi(f, a, b, tol, maxIt)
        fa      = f(a);
        fb      = f(b);
        nIt     = 0;
        xk      = [];
        while nIt < maxIt
                m       = (a*fb-b*fa)/(fb-fa);
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
