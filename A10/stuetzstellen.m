ns      = [2:32];
sins    = [];
sqrs    = [];
form    = [];
fkt     = @(x) (1/(1+x^2));
fls     = [-5:0.1:5];
fkts    = [];
for i=1:length(fls)
        fkts(i) = fkt(fls(i));
end
hold on;
for i=1:length(ns)
        %i
        a       = 0;
        b       = pi;
        for j=1:(ns(i) +1)
                xs(j)   = a + (j-1)*(b-a)/ns(i);
                fs(j)   = sin(xs(j));
        end
        for j=1:(ns(i) +1)
                sins(j) = evalNewtonpolynom(xs, divDiff(xs, fs), xs(j));
        end
        plot([a:0.1:b], sin(a:0.1:b), 'r-');
        plot(xs, sins, 'g-');
        %ii
        a       = 0;
        b       = 1;
        for j=1:(ns(i) +1)
                xs(j)   = a + (j-1)*(b-a)/ns(i);
                fs(j)   = (xs(j))^0.5;
        end
        for j=1:(ns(i) +1)
                sqrs(j) = evalNewtonpolynom(xs, divDiff(xs, fs), xs(j));
        end
        plot([a:0.1:b], sqrt(a:0.1:b), 'r-');
        plot(xs, sqrs, 'g-');
        %iii
        a       = -5;
        b       = 5;
        for j=1:(ns(i) +1)
                xs(j)   = a + (j-1)*(b-a)/ns(i);
                fs(j)   = fkt(xs(j));
        end
        for j=1:(ns(i) +1)
                form(j) = evalNewtonpolynom(xs, divDiff(xs, fs), xs(j));
        end
        plot([a:0.1:b], fkts, 'r-');
        plot(xs, form, 'g-');
end
hold off
