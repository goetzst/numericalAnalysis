function [xk,nIt] = sekanten(f, x0, x1, tol, maxIt)
        nIt     = 0;
        xk      = [];
        fx0     = f(x0);
        fx1     = f(x1);
        while nIt < maxIt
                tmp     = x1;
                x1      = x1 - fx1 * (x1-x0)/(fx1-fx0);
                x0      = tmp;
                fx0     = fx1;
                fx1     = f(x1);
                xk      = [xk,x1];
                if abs(fx1) < 10^(-1*tol)
                        return;
                end
                nIt     = nIt + 1;
        end
end
