function [a,b] = bisektion(f, a, b)
        fa      = f(a);
        fb      = f(b);
        while abs(a-b) > 0
                a
                b
                m       = (a+b)/2;
                fm      = f(m);
                if abs(fm) < 10^-2
                        return;
                else if fa * fm < 0
                        b       = m;
                        fb      = fm;
                else
                        a       = m;
                        fa      = fm;
                end
        end
end
