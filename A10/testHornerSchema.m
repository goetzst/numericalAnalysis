comps   = [];
n       = 200;
for i=1:n
        xs      = 100*rand(i,1);
        x       = 100*rand(1,1);
        y1      = hornerShema(xs,x);
        y2      = polyval(flipud(xs),x);
        if y1 == y2
                comps(i)        = 1;
        end
end
if(sum(comps)) == n
        display("win");
end
