function [xk, nIt] = halley(f, df, d2f, x0, tol, maxIt)
        nIt     = 0;
        xk      = [];
        fx      = f(x0);
        while norm(fx) > tol && nIt <= maxIt
                nIt     = nIt + 1;
                x0      = x0 - 2*fx/(df(x0)+sign(df(x0))*(df(x0)^2-2*fx*d2f(x0))^0.5);
                xk      = [xk, x0];
                fx      = f(x0);
        end
end
