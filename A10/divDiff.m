function c = divDiff(xs, fs)
       for i=1:length(xs)
               sums     = 0;
               %c(i) = f(i) Σj=0;i-1 cj * Πk=0;j-1 (x(i)-x(k))/Πj=1;i-1 (x(i)-x(j))
               for j=1:(i-1)
                       prods    = 1;
                       for k=1:(j-1)
                               prods    = prods * (xs(i)-xs(k));
                       end
                       sums     = sums + c(j) * prods;
               end
               divs     = 1;
               for j=1:(i-1)
                       divs     = divs * (xs(i)-xs(j));
               end
               c(i)     = (fs(i) - sums)/divs;
       end
end
