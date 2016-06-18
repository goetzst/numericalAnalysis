function [xk, nIt] = newton(f, df, x0, tol, maxIt)
        nIt     = 0;
        xk      = [];
        fx      = f(x0);
        while norm(fx) > tol && nIt <= maxIt
                nIt     = nIt + 1;
                x0      = x0 - df(x0)\fx;
                xk      = [xk, x0];
                fx      = f(x0);
        end
end
