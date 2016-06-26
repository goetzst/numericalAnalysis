function y = evalNewtonpolynom(xs, cs, t)
        if length(xs) > 1
                y       = cs(1) + (t-xs(1)) * evalNewtonpolynom(xs(2:end), cs(2:end), t);
        else
                y       = cs(1);
        end
end
