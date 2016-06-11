xs      = [2^3:2^7];
for i=1:121
        A       = rand(xs(i));
        tic;
        qrHouseholder(A);
        house(i)        = toc;
        tic;
        qrGivens(A);
        givens(i)       = toc;
        tic;
        qr(A);
        matlab(i)       = toc;
end

loglog(xs, house, '+1;house;', "markersize", 10, givens, ";givens;", "markersize", 5, "marker", '*', matlab, "+2;matlab;", "markersize", 10);
