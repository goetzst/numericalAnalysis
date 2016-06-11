function UT = givens2(apj,aqj)
        %% c -s
        %% s c
        w       = sqrt(apj^2+aqj^2);
        c       = abs(apj)/w;
        s       = -1*sign(apj) * aqj/w;
        UT      = [c,-s;s,c];
end
