function x = solveTD(d, nd, b)
        for i=2:length(d)
                l = (-1) * nd(i-1)/d(i-1);
                d(i) = d(i) + l * nd(i-1);
                b(i) = b(i-1) * l + b(i);
        end
        x(length(d)) = b(length(d))/d(length(d));
        length(d)
        for i=(length(d)-1):-1:1
                x(i) = (b(i) - nd(i) * x(i+1))/d(i);
        end
end
