function y = hornerShema(xs,x)
        if length(xs) > 1
                y       = xs(1) + x * hornerShema(xs(2:end),x);
        else
                y       = xs(1);
        end
end
