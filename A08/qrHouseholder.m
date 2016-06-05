function [Q, R] = qrHouseholder(A)
        [h, w]  = size(A);
        QT      = eye(h);
        for i=1:(h-1)
                clear w;
                x               = A(i:h,i);
                w(1)            = x(1) + norm(x);
                w(2:(h+1-i))    = x(2:(h+1-i));
                w               = w';
                lx              = length(x);
                P               = eye(lx) - 2 * (w * w')/(w' * w);
                Ps              = eye(h);
                Ps(h+1-lx:h,h+1-lx:h)   = P;
                A               = Ps * A;
                QT              = Ps * QT;
        end
        Q       = QT';
        R       = A;
end
